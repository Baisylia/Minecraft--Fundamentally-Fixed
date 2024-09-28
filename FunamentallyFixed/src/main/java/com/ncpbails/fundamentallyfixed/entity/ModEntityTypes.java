package com.ncpbails.fundamentallyfixed.entity;

import com.ncpbails.fundamentallyfixed.FundamentallyFixed;
import com.ncpbails.fundamentallyfixed.entity.custom.SweptGravisand;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.MobCategory;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.RegistryObject;

public class ModEntityTypes {
    public static final DeferredRegister<EntityType<?>> ENTITY_TYPES =
            DeferredRegister.create(ForgeRegistries.ENTITY_TYPES, FundamentallyFixed.MOD_ID);

    public static final RegistryObject<EntityType<SweptGravisand>> SWEPT_GRAVISAND =
            ENTITY_TYPES.register("swept_gravisand",
                    () -> EntityType.Builder.of(SweptGravisand::new, MobCategory.MISC)
                            .sized(0.98F, 0.98F).clientTrackingRange(10).updateInterval(20)
                            .build(new ResourceLocation(FundamentallyFixed.MOD_ID, "swept_gravisand").toString()));

    public static void register(IEventBus eventBus) {
        ENTITY_TYPES.register(eventBus);
    }
}
