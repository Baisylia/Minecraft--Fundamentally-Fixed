package com.ncpbails.fundamentallyfixed.items.custom;

import net.minecraft.ChatFormatting;
import net.minecraft.advancements.CriteriaTriggers;
import net.minecraft.core.NonNullList;
import net.minecraft.core.Registry;
import net.minecraft.network.chat.Component;
import net.minecraft.network.chat.MutableComponent;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.stats.Stats;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.InteractionResultHolder;
import net.minecraft.world.effect.MobEffect;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.item.*;
import net.minecraft.world.item.alchemy.Potion;
import net.minecraft.world.item.alchemy.PotionUtils;
import net.minecraft.world.item.alchemy.Potions;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.gameevent.GameEvent;

import javax.annotation.Nullable;
import java.util.List;

public class MysticalStewItem extends Item {
    private static final int DRINK_DURATION = 32;

    public MysticalStewItem(Properties p_42979_) {
        super(p_42979_);
    }

    public ItemStack getDefaultInstance() {
        return PotionUtils.setPotion(super.getDefaultInstance(), Potions.WATER);
    }

    public ItemStack finishUsingItem(ItemStack p_42984_, Level p_42985_, LivingEntity p_42986_) {
        Player player = p_42986_ instanceof Player ? (Player)p_42986_ : null;
        if (player instanceof ServerPlayer) {
            CriteriaTriggers.CONSUME_ITEM.trigger((ServerPlayer)player, p_42984_);
        }

        if (!p_42985_.isClientSide) {
            for (MobEffectInstance mobeffectinstance : PotionUtils.getMobEffects(p_42984_)) {
                int duration = mobeffectinstance.getDuration();
                int newDuration = duration / 2;

                if (mobeffectinstance.getEffect().isInstantenous()) {
                    mobeffectinstance.getEffect().applyInstantenousEffect(player, player, p_42986_, mobeffectinstance.getAmplifier(), 1.0D);
                } else {
                    p_42986_.addEffect(new MobEffectInstance(mobeffectinstance.getEffect(), newDuration, mobeffectinstance.getAmplifier(), false, true));
                }
            }
        }

        if (player != null) {
            player.awardStat(Stats.ITEM_USED.get(this));
            if (!player.getAbilities().instabuild) {
                p_42984_.shrink(1);
            }
        }

        if (player == null || !player.getAbilities().instabuild) {
            if (p_42984_.isEmpty()) {
                return new ItemStack(Items.GLASS_BOTTLE);
            }

            if (player != null) {
                player.getInventory().add(new ItemStack(Items.GLASS_BOTTLE));
            }
        }

        p_42986_.gameEvent(GameEvent.DRINK);
        return p_42984_;
    }

    public int getUseDuration(ItemStack p_43001_) {
        return 32;
    }

    public UseAnim getUseAnimation(ItemStack p_42997_) {
        return UseAnim.DRINK;
    }

    public InteractionResultHolder<ItemStack> use(Level p_42993_, Player p_42994_, InteractionHand p_42995_) {
        return ItemUtils.startUsingInstantly(p_42993_, p_42994_, p_42995_);
    }



    public void appendHoverText(ItemStack p_42988_, @Nullable Level p_42989_, List<Component> p_42990_, TooltipFlag p_42991_) {
        List<MobEffectInstance> effects = PotionUtils.getMobEffects(p_42988_);

        for (MobEffectInstance effect : effects) {
            int duration = effect.getDuration();
            int modifiedDuration = duration / 2; // Adjusted duration in ticks
            int modifiedDurationSeconds = modifiedDuration / 20; // Convert ticks to seconds
            int modifiedDurationMinutes = modifiedDurationSeconds / 60; // Calculate minutes
            int remainingSeconds = modifiedDurationSeconds % 60; // Calculate remaining seconds

            // Create a tooltip line with the modified duration in minutes and seconds format
            String durationText = String.format("%d:%02d", modifiedDurationMinutes, remainingSeconds);
            MutableComponent line = effect.getEffect().getDisplayName().copy()
                    .append(" (")
                    .append(durationText)
                    .withStyle(ChatFormatting.BLUE)
                    .append(")");

            p_42990_.add(line);
        }
    }

    public void fillItemCategory(CreativeModeTab p_42981_, NonNullList<ItemStack> p_42982_) {
        for(Potion potion : Registry.POTION) {
            if (potion.allowedInCreativeTab(this, p_42981_, this.allowedIn(p_42981_))) {
                if (potion != Potions.EMPTY) {
                    p_42982_.add(PotionUtils.setPotion(new ItemStack(this), potion));
                }
            }
        }

    }
}
