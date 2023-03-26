package com.ncpbails.fundamentallyfixed.world.feature.tree;

import com.ncpbails.fundamentallyfixed.world.feature.ModConfiguredFeatures;
import net.minecraft.core.Holder;
import net.minecraft.util.RandomSource;
import net.minecraft.world.level.block.grower.AbstractTreeGrower;
import net.minecraft.world.level.levelgen.feature.ConfiguredFeature;

import javax.annotation.Nullable;

public class OakTreeFixedGrower extends AbstractTreeGrower {
    @Nullable
    @Override
    protected Holder<? extends ConfiguredFeature<?, ?>> getConfiguredFeature(RandomSource p_222910_, boolean pLargeHive) {
        return ModConfiguredFeatures.OAK_TREE_FIXED.getHolder().get();
    }
}