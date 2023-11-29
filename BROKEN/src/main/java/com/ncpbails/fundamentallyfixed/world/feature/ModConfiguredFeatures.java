package com.ncpbails.fundamentallyfixed.world.feature;

import com.ncpbails.fundamentallyfixed.FundamentallyFixed;
import com.ncpbails.fundamentallyfixed.block.ModBlocks;
import net.minecraft.core.Holder;
import net.minecraft.core.Registry;
import net.minecraft.data.worldgen.features.FeatureUtils;
import net.minecraft.data.worldgen.placement.PlacementUtils;
import net.minecraft.util.random.SimpleWeightedRandomList;
import net.minecraft.util.valueproviders.ConstantInt;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.Blocks;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.levelgen.feature.ConfiguredFeature;
import net.minecraft.world.level.levelgen.feature.Feature;
import net.minecraft.world.level.levelgen.feature.WeightedPlacedFeature;
import net.minecraft.world.level.levelgen.feature.configurations.RandomFeatureConfiguration;
import net.minecraft.world.level.levelgen.feature.configurations.RandomPatchConfiguration;
import net.minecraft.world.level.levelgen.feature.configurations.SimpleBlockConfiguration;
import net.minecraft.world.level.levelgen.feature.configurations.TreeConfiguration;
import net.minecraft.world.level.levelgen.feature.featuresize.TwoLayersFeatureSize;
import net.minecraft.world.level.levelgen.feature.foliageplacers.AcaciaFoliagePlacer;
import net.minecraft.world.level.levelgen.feature.foliageplacers.BlobFoliagePlacer;
import net.minecraft.world.level.levelgen.feature.foliageplacers.FancyFoliagePlacer;
import net.minecraft.world.level.levelgen.feature.stateproviders.BlockStateProvider;
import net.minecraft.world.level.levelgen.feature.stateproviders.WeightedStateProvider;
import net.minecraft.world.level.levelgen.feature.trunkplacers.FancyTrunkPlacer;
import net.minecraft.world.level.levelgen.feature.trunkplacers.StraightTrunkPlacer;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.RegistryObject;

import java.util.List;
import java.util.OptionalInt;

public class ModConfiguredFeatures {
    public static final DeferredRegister<ConfiguredFeature<?, ?>> CONFIGURED_FEATURES =
            DeferredRegister.create(Registry.CONFIGURED_FEATURE_REGISTRY, FundamentallyFixed.MOD_ID);


    public static final RegistryObject<ConfiguredFeature<?, ?>> OAK_TREE_FIXED =
            CONFIGURED_FEATURES.register("oak_tree_fixed", () ->
                    new ConfiguredFeature<>(Feature.TREE, new TreeConfiguration.TreeConfigurationBuilder(
                            new WeightedStateProvider(SimpleWeightedRandomList.<BlockState>builder().add(Blocks.OAK_LOG.defaultBlockState(),
                                    7).add(ModBlocks.SAPPY_OAK_LOG.get().defaultBlockState(), 1)),
                            new StraightTrunkPlacer(4, 2, 0),
                            BlockStateProvider.simple(Blocks.OAK_LEAVES),
                            new BlobFoliagePlacer(ConstantInt.of(2), ConstantInt.of(0), 3),
                            new TwoLayersFeatureSize(1, 0, 1)).ignoreVines().build()));

    public static final RegistryObject<ConfiguredFeature<?, ?>> OAK_TREE_FANCY_FIXED =
            CONFIGURED_FEATURES.register("oak_tree_fancy_fixed", () ->
                    new ConfiguredFeature<>(Feature.TREE, new TreeConfiguration.TreeConfigurationBuilder(
                            new WeightedStateProvider(SimpleWeightedRandomList.<BlockState>builder().add(Blocks.OAK_LOG.defaultBlockState(),
                                    7).add(ModBlocks.SAPPY_OAK_LOG.get().defaultBlockState(), 1)),
                            new FancyTrunkPlacer(3, 11, 0),
                            BlockStateProvider.simple(Blocks.OAK_LEAVES),
                            new FancyFoliagePlacer(ConstantInt.of(2), ConstantInt.of(4), 4),
                            new TwoLayersFeatureSize(0, 0, 0, OptionalInt.of(4))).ignoreVines().build()));

    public static final RegistryObject<ConfiguredFeature<?, ?>> OAK_TREE_FIXED_SPAWN =
            CONFIGURED_FEATURES.register("oak_tree_fixed_spawn", () -> new ConfiguredFeature<>(Feature.RANDOM_SELECTOR,
                    new RandomFeatureConfiguration(List.of(new WeightedPlacedFeature(
                            ModPlacedFeatures.OAK_TREE_FIXED_CHECKED.getHolder().get(),
                            0.5F)), ModPlacedFeatures.OAK_TREE_FIXED_CHECKED.getHolder().get())));

    public static final RegistryObject<ConfiguredFeature<?, ?>> OAK_TREE_FANCY_FIXED_SPAWN =
            CONFIGURED_FEATURES.register("oak_tree_fancy_fixed_spawn", () -> new ConfiguredFeature<>(Feature.RANDOM_SELECTOR,
                    new RandomFeatureConfiguration(List.of(new WeightedPlacedFeature(
                            ModPlacedFeatures.OAK_TREE_FANCY_FIXED_CHECKED.getHolder().get(),
                            0.5F)), ModPlacedFeatures.OAK_TREE_FANCY_FIXED_CHECKED.getHolder().get())));

    public static void register(IEventBus eventBus) {
        CONFIGURED_FEATURES.register(eventBus);
    }
}
