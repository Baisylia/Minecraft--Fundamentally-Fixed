package com.ncpbails.fundamentallyfixed.core;

import com.ncpbails.fundamentallyfixed.block.ModBlocks;
import com.ncpbails.fundamentallyfixed.item.ModItems;
import com.teamabnormals.blueprint.core.util.DataUtil;
import net.minecraft.client.Minecraft;
import net.minecraft.client.color.block.BlockColors;
import net.minecraft.client.color.item.ItemColors;
import net.minecraft.client.renderer.BiomeColors;
import net.minecraft.client.renderer.ItemBlockRenderTypes;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.world.level.GrassColor;
import net.minecraft.world.level.block.Block;
import net.minecraftforge.registries.RegistryObject;

import java.util.Arrays;
import java.util.List;

public class ModListings {
    public static void registerCompostables() {
        DataUtil.registerCompostable(ModItems.GRASS_SEEDS.get(), 0.30F);
        DataUtil.registerCompostable(ModItems.WHEAT_SEEDS_FIXED.get(), 0.30F);
        DataUtil.registerCompostable(ModItems.LOOSE_GRASS.get(), 0.30F);
        DataUtil.registerCompostable(ModItems.LEAF.get(), 0.30F);
        DataUtil.registerCompostable(ModItems.WORM.get(), 0.30F);
    }
    public static void registerBlockColors() {
        BlockColors blockColors = Minecraft.getInstance().getBlockColors();
        ItemColors itemColors = Minecraft.getInstance().getItemColors();

        //Blocks with Biome Tint
        List<RegistryObject<Block>> grassColors = Arrays.asList(ModBlocks.GRASSES);
        //Blocks with Items with Biome Tint
        //List<RegistryObject<Block>> grassItemColors = Arrays.asList(ModBlocks.ACORN);

        DataUtil.registerBlockColor(blockColors, (x, world, pos, u) -> world != null && pos != null ?
                BiomeColors.getAverageGrassColor(world, pos) : GrassColor.get(0.5D, 1.0D), grassColors);
        //DataUtil.registerBlockItemColor(itemColors, (color, items) -> GrassColor.get(0.5D, 1.0D), grassItemColors);
    }

    public static void setRenderLayers() {
        ItemBlockRenderTypes.setRenderLayer(ModBlocks.GRASSES.get(), RenderType.cutout());
        ItemBlockRenderTypes.setRenderLayer(ModBlocks.WHEAT_FIXED.get(), RenderType.cutout());
        ItemBlockRenderTypes.setRenderLayer(ModBlocks.AETHER_PORTAL.get(), RenderType.translucent());
    }
}
