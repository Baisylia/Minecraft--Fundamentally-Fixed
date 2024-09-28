package com.ncpbails.fundamentallyfixed;

import com.elenai.feathers.Feathers;
import com.elenai.feathers.api.FeathersHelper;
import com.elenai.feathers.attributes.FeathersAttributes;
import com.google.common.collect.ImmutableBiMap;
import com.mojang.logging.LogUtils;
import com.ncpbails.fundamentallyfixed.block.ModBlocks;
import com.ncpbails.fundamentallyfixed.core.ModListings;
import com.ncpbails.fundamentallyfixed.entity.ModEntityTypes;
import com.ncpbails.fundamentallyfixed.items.ModItems;
import com.ncpbails.fundamentallyfixed.world.feature.ModConfiguredFeatures;
import com.ncpbails.fundamentallyfixed.world.feature.ModPlacedFeatures;
import net.minecraft.client.renderer.EffectInstance;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.world.level.block.Block;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.event.TickEvent;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.LogicalSide;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.event.lifecycle.FMLClientSetupEvent;
import net.minecraftforge.fml.event.lifecycle.FMLCommonSetupEvent;
import net.minecraftforge.fml.javafmlmod.FMLJavaModLoadingContext;
import org.slf4j.Logger;

// The value here should match an entry in the META-INF/mods.toml file
@Mod(FundamentallyFixed.MOD_ID)
public class FundamentallyFixed
{
    public static final String MOD_ID = "fundamentallyfixed";
    private static final Logger LOGGER = LogUtils.getLogger();

    public FundamentallyFixed()
    {
        IEventBus modEventBus = FMLJavaModLoadingContext.get().getModEventBus();
        modEventBus.addListener(this::commonSetup);

        //ModCBlocks.register();
        //ModCBlockEntities.register();
        ModItems.register(modEventBus);
        ModBlocks.register(modEventBus);
        ModConfiguredFeatures.register(modEventBus);
        ModPlacedFeatures.register(modEventBus);
        //ModEntityTypes.register(modEventBus);

        MinecraftForge.EVENT_BUS.register(this);
        MinecraftForge.EVENT_BUS.addListener(FundamentallyFixed::onPlayerTick);
    }

    private void commonSetup(final FMLCommonSetupEvent event)
    {

    }
    private static final int TICKS_PER_REGENERATION = 100;
    private static int ticksSinceLastRegeneration = 0;

    @SubscribeEvent
    public static void onPlayerTick(TickEvent.PlayerTickEvent event) {
        if(event.side == LogicalSide.SERVER) {
            if (event.phase != TickEvent.Phase.START) {
                if (event.player.isAlive()) {
                    if ((FeathersHelper.getFeathers((ServerPlayer) event.player) > 0) && (event.player.getHealth() < event.player.getMaxHealth())) {
                        ticksSinceLastRegeneration++;
                        if (ticksSinceLastRegeneration >= TICKS_PER_REGENERATION) {
                            //event.player.addEffect(new MobEffectInstance(MobEffects.REGENERATION, 20, 20));
                            event.player.heal(1.0f);
                            FeathersHelper.spendFeathers((ServerPlayer) event.player, 1);
                            ticksSinceLastRegeneration = 0; // Reset tick counter
                        }
                    }
                }
            }
        }
    }

    // You can use EventBusSubscriber to automatically register all static methods in the class annotated with @SubscribeEvent
    @Mod.EventBusSubscriber(modid = MOD_ID, bus = Mod.EventBusSubscriber.Bus.MOD)
    public static class ClientModEvents
    {
        @SubscribeEvent
        public static void onClientSetup(FMLClientSetupEvent event)
        {
            ModListings.setRenderLayers();
            ModListings.registerCompostables();
            event.enqueueWork(() -> {
                ModListings.registerBlockColors();
            });
        }
    }
}
