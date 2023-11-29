package com.ncpbails.fundamentallyfixed.world.feature;

import com.ncpbails.fundamentallyfixed.FundamentallyFixed;
import com.ncpbails.fundamentallyfixed.block.ModBlocks;
import net.minecraft.core.Holder;
import net.minecraft.core.Registry;
import net.minecraft.data.worldgen.features.TreeFeatures;
import net.minecraft.data.worldgen.placement.PlacementUtils;
import net.minecraft.data.worldgen.placement.VegetationPlacements;
import net.minecraft.world.level.block.Blocks;
import net.minecraft.world.level.levelgen.placement.BiomeFilter;
import net.minecraft.world.level.levelgen.placement.InSquarePlacement;
import net.minecraft.world.level.levelgen.placement.PlacedFeature;
import net.minecraft.world.level.levelgen.placement.RarityFilter;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.RegistryObject;

import java.util.List;

    public class ModPlacedFeatures {
    public static final DeferredRegister<PlacedFeature> PLACED_FEATURES =
            DeferredRegister.create(Registry.PLACED_FEATURE_REGISTRY, FundamentallyFixed.MOD_ID);

    public static final RegistryObject<PlacedFeature> OAK_TREE_FIXED_CHECKED = PLACED_FEATURES.register("oak_tree_fixed_checked",
            () -> new PlacedFeature(ModConfiguredFeatures.OAK_TREE_FIXED.getHolder().get(),
                    List.of(PlacementUtils.filteredByBlockSurvival(ModBlocks.ACORN.get()))));

    public static final RegistryObject<PlacedFeature> OAK_TREE_FIXED_PLACED = PLACED_FEATURES.register("oak_tree_fixed_plains",
            () -> new PlacedFeature(ModConfiguredFeatures.OAK_TREE_FIXED_SPAWN.getHolder().get(), VegetationPlacements.treePlacement(
                    PlacementUtils.countExtra(0, 0.1f, 1))));

        public static final RegistryObject<PlacedFeature> OAK_TREE_FANCY_FIXED_CHECKED = PLACED_FEATURES.register("oak_tree_fancy_fixed_checked",
                () -> new PlacedFeature(ModConfiguredFeatures.OAK_TREE_FANCY_FIXED.getHolder().get(),
                        List.of(PlacementUtils.filteredByBlockSurvival(ModBlocks.ACORN.get()))));

        public static final RegistryObject<PlacedFeature> OAK_TREE_FANCY_FIXED_PLACED = PLACED_FEATURES.register("oak_tree_fancy_fixed_plains",
                () -> new PlacedFeature(ModConfiguredFeatures.OAK_TREE_FANCY_FIXED_SPAWN.getHolder().get(), VegetationPlacements.treePlacement(
                        PlacementUtils.countExtra(0, 0.05f, 1))));

        public static void register(IEventBus eventBus) {
        PLACED_FEATURES.register(eventBus);
    }
}