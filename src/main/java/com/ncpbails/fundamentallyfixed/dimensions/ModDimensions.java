package com.ncpbails.fundamentallyfixed.dimensions;

import com.ncpbails.fundamentallyfixed.FundamentallyFixed;
import net.minecraft.core.Registry;
import net.minecraft.resources.ResourceKey;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.dimension.DimensionType;

public class ModDimensions {
    public static final ResourceKey<Level> AETHER_KEY = ResourceKey.create(Registry.DIMENSION_REGISTRY,
            new ResourceLocation(FundamentallyFixed.MOD_ID, "aether"));

    private static ResourceLocation name(String name) {
        return new ResourceLocation(FundamentallyFixed.MOD_ID, name);
    }
    public static void register() {
        System.out.println("Registering ModDimensions for " + FundamentallyFixed.MOD_ID);
    }
}
