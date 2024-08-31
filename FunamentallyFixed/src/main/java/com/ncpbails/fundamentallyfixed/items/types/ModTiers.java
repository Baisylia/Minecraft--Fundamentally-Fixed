package com.ncpbails.fundamentallyfixed.items.types;

import com.ncpbails.fundamentallyfixed.core.ModTags;
import com.ncpbails.fundamentallyfixed.items.ModItems;
import galena.oreganized.Oreganized;
import galena.oreganized.index.OBlocks;
import galena.oreganized.index.OItems;
import net.minecraft.tags.BlockTags;
import net.minecraft.tags.ItemTags;
import net.minecraft.world.item.Items;
import net.minecraft.world.item.crafting.Ingredient;
import net.minecraftforge.common.ForgeTier;
import net.minecraftforge.common.Tags;

public class ModTiers {
    public static final ForgeTier FLINT = new ForgeTier(0, 59, 2.0f, 0.0f, 15,
            Tags.Blocks.NEEDS_WOOD_TOOL, () -> Ingredient.of(Items.FLINT));

    public static final ForgeTier WOOD = new ForgeTier(0, 59, 2.0F, 0.0F, 15,
            Tags.Blocks.NEEDS_WOOD_TOOL, () -> Ingredient.of(com.ncpbails.modestmining.item.ModItems.PLANK.get()));
    public static final ForgeTier COPPER = new ForgeTier(1, 131, 4.0f, 1.0f, 5,
            BlockTags.NEEDS_STONE_TOOL, () -> Ingredient.of(ModItems.RAW_COPPER_NUGGET.get()));
    public static final ForgeTier BRONZE = new ForgeTier(1, 45, 1.0f, 0.0f, 2,
            BlockTags.NEEDS_IRON_TOOL, () -> Ingredient.of(ModItems.BRONZE_INGOT.get()));

    public static final ForgeTier STEEL = new ForgeTier(2, 250, 6.0F, 2.0F, 14,
            BlockTags.NEEDS_DIAMOND_TOOL, () -> Ingredient.of(com.ncpbails.modestmining.item.ModItems.STEEL_INGOT.get()));

    public static final ForgeTier DIAMOND = new ForgeTier(3, 1561, 8.0F, 3.0F, 10,
        ModTags.Blocks.NEEDS_UPGRADED_TOOL, () -> Ingredient.of(Items.DIAMOND));


    public static final ForgeTier NETHERITE = new ForgeTier(4, 2031, 9.0F, 4.0F, 15,
            ModTags.Blocks.NEEDS_UPGRADED_TOOL, () -> Ingredient.of(OItems.NETHERITE_NUGGET.get()));

    public static final ForgeTier GRAVITITE = new ForgeTier(4, 2031, 9.0F, 4.0F, 15,
            ModTags.Blocks.NEEDS_UPGRADED_TOOL, () -> Ingredient.of(ModItems.GRAVITITE_NUGGET.get()));

    public static final ForgeTier ELECTRUM = new ForgeTier(4, 2031, 9.0F, 4.0F, 15,
            ModTags.Blocks.NEEDS_UPGRADED_TOOL, () -> Ingredient.of(OItems.ELECTRUM_NUGGET.get()));

    public static final ForgeTier PRISMARITE = new ForgeTier(4, 2031, 9.0F, 4.0F, 15,
            ModTags.Blocks.NEEDS_UPGRADED_TOOL, () -> Ingredient.of(com.ncpbails.modestmining.item.ModItems.PRISMARITE_NUGGET.get()));

    public static final ForgeTier CHLOROPHITE = new ForgeTier(4, 2031, 9.0F, 4.0F, 15,
            ModTags.Blocks.NEEDS_UPGRADED_TOOL, () -> Ingredient.of(ModItems.CHLOROPHITE_NUGGET.get()));

    public static final ForgeTier HALLOWED = new ForgeTier(4, 2031, 9.0F, 4.0F, 15,
            ModTags.Blocks.NEEDS_UPGRADED_TOOL, () -> Ingredient.of(ModItems.HALLOWED_NUGGET.get()));

    public static final ForgeTier MYTHRIL = new ForgeTier(4, 2031, 9.0F, 4.0F, 15,
            ModTags.Blocks.NEEDS_UPGRADED_TOOL, () -> Ingredient.of(ModItems.MYTHRIL_NUGGET.get()));

    public static final ForgeTier VOIDENDUM = new ForgeTier(4, 2031, 9.0F, 4.0F, 15,
            ModTags.Blocks.NEEDS_UPGRADED_TOOL, () -> Ingredient.of(ModItems.VOIDENDUM_NUGGET.get()));

    public static final ForgeTier STOLDUM = new ForgeTier(4, 2031, 9.0F, 4.0F, 15,
            ModTags.Blocks.NEEDS_UPGRADED_TOOL, () -> Ingredient.of(ModItems.STOLDUM_NUGGET.get()));
}
