package com.ncpbails.fundamentallyfixed.screen;

import com.google.common.cache.Cache;
import com.google.common.cache.CacheBuilder;
import com.google.common.collect.ImmutableSet;
import com.mojang.datafixers.util.Pair;
import gg.moonflower.etched.api.record.PlayableRecord;
import gg.moonflower.etched.api.record.TrackData;
import gg.moonflower.etched.api.sound.download.SoundDownloadSource;
import gg.moonflower.etched.api.sound.download.SoundSourceManager;
import gg.moonflower.etched.api.util.DownloadProgressListener;
import gg.moonflower.etched.client.screen.EtchingScreen;
import gg.moonflower.etched.common.item.*;
import gg.moonflower.etched.common.menu.EtchingMenu;
import gg.moonflower.etched.common.network.EtchedMessages;
import gg.moonflower.etched.common.network.play.ClientboundInvalidEtchUrlPacket;
import gg.moonflower.etched.core.registry.EtchedBlocks;
import gg.moonflower.etched.core.registry.EtchedItems;
import gg.moonflower.etched.core.registry.EtchedMenus;
import gg.moonflower.etched.core.registry.EtchedSounds;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.sounds.SoundEvent;
import net.minecraft.sounds.SoundSource;
import net.minecraft.util.HttpUtil;
import net.minecraft.world.Container;
import net.minecraft.world.SimpleContainer;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.inventory.*;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.level.ItemLike;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.world.level.block.state.properties.BlockStateProperties;
import net.minecraftforge.api.distmarker.Dist;
import net.minecraftforge.api.distmarker.OnlyIn;
import net.minecraftforge.common.capabilities.ForgeCapabilities;
import net.minecraftforge.items.SlotItemHandler;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.*;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionException;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

public class MusicTableMenu extends AbstractContainerMenu {
    public static final ResourceLocation EMPTY_SLOT_MUSIC_DISC = new ResourceLocation("etched", "item/empty_etching_table_slot_music_disc");
    public static final ResourceLocation EMPTY_SLOT_MUSIC_LABEL = new ResourceLocation("etched", "item/empty_etching_table_slot_music_label");
    private static final Pattern CONTENT_TYPE_PATTERN = Pattern.compile("\\s*;\\s*");
    private static final Cache<String, CompletableFuture<TrackData[]>> DATA_CACHE;
    private static final boolean IGNORE_CACHE = false;
    private static final Set<String> VALID_FORMATS;
    private final ContainerLevelAccess access;
    private final DataSlot labelIndex;
    private final Slot discSlot;
    private final Slot labelSlot;
    private final Slot resultSlot;
    private final Container input;
    private final Container result;
    private final Player player;
    private String url;
    private int urlId;
    private long lastSoundTime;
    private CompletableFuture<?> currentRequest;
    private int currentRequestId;

    public MusicTableMenu(int id, Inventory inv, FriendlyByteBuf extraData) {
    //public MusicTableMenu(int id, Inventory inv) {
        //this(pContainerId, inv);
        this(id, inv, ContainerLevelAccess.NULL);
    }
    public MusicTableMenu(int id, Inventory inventory, final ContainerLevelAccess containerLevelAccess) {
    //public MusicTableMenu(int id, Inventory inventory, final ContainerLevelAccess containerLevelAccess) {
        super((MenuType) EtchedMenus.ETCHING_MENU.get(), id);
        this.player = inventory.player;
        this.labelIndex = DataSlot.standalone();
        this.input = new SimpleContainer(2) {
            public void setChanged() {
                super.setChanged();
                MusicTableMenu.this.slotsChanged(this);
            }
        };
        this.result = new SimpleContainer(1) {
            public void setChanged() {
                super.setChanged();
            }
        };
        this.access = containerLevelAccess;
        //this.access = ContainerLevelAccess.NULL;
        this.discSlot = this.addSlot(new Slot(this.input, 0, 44, 43) {
            public boolean mayPlace(ItemStack stack) {
                return stack.getItem() == EtchedItems.BLANK_MUSIC_DISC.get() || stack.getItem() == EtchedItems.ETCHED_MUSIC_DISC.get();
            }

            @OnlyIn(Dist.CLIENT)
            public Pair<ResourceLocation, ResourceLocation> getNoItemIcon() {
                return Pair.of(InventoryMenu.BLOCK_ATLAS, EtchingMenu.EMPTY_SLOT_MUSIC_DISC);
            }
        });
        this.labelSlot = this.addSlot(new Slot(this.input, 1, 62, 43) {
            public boolean mayPlace(ItemStack stack) {
                return stack.getItem() instanceof SimpleMusicLabelItem;
            }

            @OnlyIn(Dist.CLIENT)
            public Pair<ResourceLocation, ResourceLocation> getNoItemIcon() {
                return Pair.of(InventoryMenu.BLOCK_ATLAS, EtchingMenu.EMPTY_SLOT_MUSIC_LABEL);
            }
        });
        this.resultSlot = this.addSlot(new Slot(this.result, 0, 116, 43) {
            public boolean mayPlace(ItemStack stack) {
                return false;
            }

            public void onTake(Player player, ItemStack stack) {
                MusicTableMenu.this.discSlot.remove(1);
                MusicTableMenu.this.labelSlot.remove(1);
                if (!MusicTableMenu.this.discSlot.hasItem() || !MusicTableMenu.this.labelSlot.hasItem()) {
                    MusicTableMenu.this.labelIndex.set(0);
                }

                MusicTableMenu.this.setupResultSlot();
                MusicTableMenu.this.broadcastChanges();
                containerLevelAccess.execute((level, pos) -> {
                    long l = level.getGameTime();
                    if (MusicTableMenu.this.lastSoundTime != l) {
                        level.playSound((Player)null, pos, (SoundEvent) EtchedSounds.UI_ETCHER_TAKE_RESULT.get(), SoundSource.BLOCKS, 1.0F, 1.0F);
                        MusicTableMenu.this.lastSoundTime = l;
                    }

                });
                super.onTake(player, stack);
            }
        });

        int x;
        for(x = 0; x < 3; ++x) {
            for(int j = 0; j < 9; ++j) {
                this.addSlot(new Slot(inventory, j + j * 9 + 9, 8 + j * 18, 98 + j * 18));
            }
        }

        for(x = 0; x < 9; ++x) {
            this.addSlot(new Slot(inventory, x, 8 + x * 18, 156));
        }

        this.addDataSlot(this.labelIndex);
    }

    private static void checkStatus(String url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection)(new URL(url)).openConnection(Proxy.NO_PROXY);
        httpURLConnection.setRequestMethod("HEAD");
        httpURLConnection.setInstanceFollowRedirects(true);
        Map<String, String> map = SoundDownloadSource.getDownloadHeaders();
        Iterator var3 = map.entrySet().iterator();

        while(var3.hasNext()) {
            Map.Entry<String, String> entry = (Map.Entry)var3.next();
            httpURLConnection.setRequestProperty((String)entry.getKey(), (String)entry.getValue());
        }

        if (httpURLConnection.getResponseCode() != 200) {
            int var10002 = httpURLConnection.getResponseCode();
            throw new IOException("" + var10002 + " " + httpURLConnection.getResponseMessage());
        } else {
            String contentType = httpURLConnection.getContentType();
            if (!VALID_FORMATS.contains(CONTENT_TYPE_PATTERN.split(contentType.toLowerCase(Locale.ROOT))[0])) {
                throw new IOException("Unsupported Content-Type: " + contentType);
            }
        }
    }

    public void removed(Player player) {
        super.removed(player);
        this.access.execute((level, pos) -> {
            this.clearContainer(player, this.input);
        });
    }

    public boolean stillValid(Player player) {
        return stillValid(ContainerLevelAccess.NULL, player, (Block) EtchedBlocks.ETCHING_TABLE.get());
    }

    public boolean clickMenuButton(Player player, int index) {
        if (index >= 0 && index < EtchedMusicDiscItem.LabelPattern.values().length) {
            this.labelIndex.set(index);
            this.setupResultSlot();
            return true;
        } else {
            return false;
        }
    }

    public ItemStack quickMoveStack(Player player, int index) {
        ItemStack itemStack = ItemStack.EMPTY;
        Slot slot = (Slot)this.slots.get(index);
        if (slot.hasItem()) {
            ItemStack itemStack2 = slot.getItem();
            itemStack = itemStack2.copy();
            if (index < 3) {
                if (!this.moveItemStackTo(itemStack2, 3, this.slots.size(), true)) {
                    return ItemStack.EMPTY;
                }
            } else if (!this.moveItemStackTo(itemStack2, 0, 3, false)) {
                return ItemStack.EMPTY;
            }

            if (itemStack2.isEmpty()) {
                slot.set(ItemStack.EMPTY);
            } else {
                slot.setChanged();
            }

            if (itemStack2.getCount() == itemStack.getCount()) {
                return ItemStack.EMPTY;
            }

            slot.onTake(player, itemStack2);
        }

        return itemStack;
    }

    public void slotsChanged(Container container) {
        ItemStack discStack = this.discSlot.getItem();
        ItemStack labelStack = this.labelSlot.getItem();
        ItemStack resultStack = this.resultSlot.getItem();
        if (resultStack.isEmpty() && labelStack.isEmpty()) {
            if (!discStack.isEmpty() && discStack.getItem() == EtchedItems.ETCHED_MUSIC_DISC.get()) {
                this.labelIndex.set(EtchedMusicDiscItem.getPattern(discStack).ordinal());
            } else {
                this.labelIndex.set(0);
            }
        }

        this.setupResultSlot();
        super.slotsChanged(container);
    }

    private void setupResultSlot() {
        if (!this.player.level.isClientSide()) {
            if (this.currentRequest == null || this.currentRequest.isDone() || this.urlId != this.currentRequestId) {
                EtchedMessages.PLAY.sendTo((ServerPlayer)this.player, new ClientboundInvalidEtchUrlPacket(""));
                this.resultSlot.set(ItemStack.EMPTY);

                if (this.labelIndex.get() >= 0 && this.labelIndex.get() < EtchedMusicDiscItem.LabelPattern.values().length) {
                    ItemStack discStack = this.discSlot.getItem();
                    ItemStack labelStack = this.labelSlot.getItem();
                    if (discStack.getItem() == EtchedItems.ETCHED_MUSIC_DISC.get() || !discStack.isEmpty() && !labelStack.isEmpty()) {
                        if (this.url == null && !discStack.isEmpty()) {
                            this.url = (String) PlayableRecord.getStackAlbum(discStack).map(TrackData::getUrl).orElse((String) null);
                        }

                        if (!TrackData.isValidURL(this.url)) {
                            return;
                        }
                        System.out.println("Setting up asynchronous request for result slot.");

                        int currentId = this.currentRequestId = this.urlId;
                        this.currentRequest = CompletableFuture.supplyAsync(() -> {
                            ItemStack resultStack = new ItemStack((ItemLike)EtchedItems.ETCHED_MUSIC_DISC.get());
                            resultStack.setCount(1);
                            int discColor = 5329233;
                            int primaryLabelColor = 16777215;
                            int secondaryLabelColor = 16777215;
                            TrackData[] data = new TrackData[]{TrackData.EMPTY};
                            if (discStack.getItem() == EtchedItems.ETCHED_MUSIC_DISC.get()) {
                                discColor = EtchedMusicDiscItem.getDiscColor(discStack);
                                primaryLabelColor = EtchedMusicDiscItem.getLabelPrimaryColor(discStack);
                                secondaryLabelColor = EtchedMusicDiscItem.getLabelSecondaryColor(discStack);
                                data = (TrackData[])PlayableRecord.getStackMusic(discStack).orElse(data);
                            }

                            if (data.length == 1 && !labelStack.isEmpty()) {
                                data[0] = data[0].withTitle(MusicLabelItem.getTitle(labelStack)).withArtist(MusicLabelItem.getAuthor(labelStack));
                            }

                            if (SoundSourceManager.isValidUrl(this.url)) {
                                try {
                                    data = (TrackData[])((CompletableFuture)DATA_CACHE.get(this.url, () -> {
                                        return SoundSourceManager.resolveTracks(this.url, (DownloadProgressListener)null, Proxy.NO_PROXY);
                                    })).join();
                                } catch (Exception var10) {
                                    if (!this.player.level.isClientSide()) {
                                        EtchedMessages.PLAY.sendTo((ServerPlayer)this.player, new ClientboundInvalidEtchUrlPacket(var10 instanceof CompletionException ? var10.getCause().getMessage() : var10.getMessage()));
                                    }

                                    if (var10 instanceof CompletionException) {
                                        throw (CompletionException)var10;
                                    }

                                    throw new CompletionException(var10);
                                }
                            } else if (!TrackData.isLocalSound(this.url)) {
                                try {
                                    checkStatus(this.url);
                                    data = new TrackData[]{data[0].withUrl(this.url)};
                                } catch (UnknownHostException var11) {
                                    if (!this.player.level.isClientSide()) {
                                        EtchedMessages.PLAY.sendTo((ServerPlayer)this.player, new ClientboundInvalidEtchUrlPacket("Unknown host: " + this.url));
                                    }

                                    throw new CompletionException("Invalid URL", var11);
                                } catch (Exception var12) {
                                    if (!this.player.level.isClientSide()) {
                                        EtchedMessages.PLAY.sendTo((ServerPlayer)this.player, new ClientboundInvalidEtchUrlPacket(var12.getLocalizedMessage()));
                                    }

                                    throw new CompletionException("Invalid URL", var12);
                                }
                            }

                            if (discStack.getItem() instanceof BlankMusicDiscItem) {
                                discColor = ((BlankMusicDiscItem)discStack.getItem()).getColor(discStack);
                            }

                            if (labelStack.getItem() instanceof MusicLabelItem) {
                                primaryLabelColor = MusicLabelItem.getLabelColor(labelStack);
                                secondaryLabelColor = primaryLabelColor;
                            } else if (labelStack.getItem() instanceof ComplexMusicLabelItem) {
                                primaryLabelColor = ComplexMusicLabelItem.getPrimaryColor(labelStack);
                                secondaryLabelColor = ComplexMusicLabelItem.getSecondaryColor(labelStack);
                            }

                            for(int i = 0; i < data.length; ++i) {
                                TrackData trackData = data[i];
                                if (trackData.getArtist().equals(TrackData.EMPTY.getArtist())) {
                                    trackData = trackData.withArtist(MusicLabelItem.getAuthor(labelStack));
                                }

                                if (TrackData.isLocalSound(this.url)) {
                                    trackData = trackData.withUrl((new ResourceLocation(this.url)).toString());
                                }

                                data[i] = trackData;
                            }

                            EtchedMusicDiscItem.setMusic(resultStack, data);
                            EtchedMusicDiscItem.setColor(resultStack, discColor, primaryLabelColor, secondaryLabelColor);
                            EtchedMusicDiscItem.setPattern(resultStack, EtchedMusicDiscItem.LabelPattern.values()[this.labelIndex.get()]);
                            return resultStack;
                        }, HttpUtil.DOWNLOAD_EXECUTOR).thenAcceptAsync((resultStack) -> {
                            if (this.urlId == currentId && !ItemStack.matches(resultStack, this.resultSlot.getItem()) && !ItemStack.matches(resultStack, this.discSlot.getItem())) {
                                System.out.println("Setting Result Slot with: " + resultStack);
                                this.resultSlot.set(resultStack);
                                ++this.urlId;
                                this.urlId %= 1000;
                                this.broadcastChanges();
                            }

                        }, this.player.level.getServer()).exceptionally((e) -> {
                            e.printStackTrace();
                            return null;
                        });
                    }
                }

            }
        }
    }

    public int getLabelIndex() {
        return this.labelIndex.get();
    }

    public void setUrl(String string) {
        if (!Objects.equals(this.url, string)) {
            this.url = string;
            ++this.urlId;
            this.urlId %= 1000;
            this.setupResultSlot();
        }

    }

    static {
        DATA_CACHE = CacheBuilder.newBuilder().expireAfterWrite(15L, TimeUnit.MINUTES).build();
        ImmutableSet.Builder<String> builder = new ImmutableSet.Builder();
        builder.add(new String[]{"audio/wav", "audio/x-wav", "audio/opus", "application/ogg", "audio/ogg", "audio/mpeg", "application/octet-stream"});
        VALID_FORMATS = builder.build();
    }
}
