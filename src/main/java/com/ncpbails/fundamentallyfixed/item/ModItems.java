package com.ncpbails.fundamentallyfixed.item;

import com.ncpbails.fundamentallyfixed.FundamentallyFixed;
import com.ncpbails.fundamentallyfixed.block.ModBlocks;
import net.minecraft.world.item.CreativeModeTab;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.ItemNameBlockItem;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.RegistryObject;
import vectorwing.farmersdelight.FarmersDelight;

public class ModItems {
    public static final DeferredRegister<Item> ITEMS = DeferredRegister.create(ForgeRegistries.ITEMS, FundamentallyFixed.MOD_ID);

    public static final RegistryObject<Item> SAP = ITEMS.register("sap", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> HANDLE = ITEMS.register("handle", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> LEAF = ITEMS.register("leaf", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> LOOSE_GRASS = ITEMS.register("loose_grass", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> SHARP_STONE = ITEMS.register("sharp_stone", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> WORM = ITEMS.register("worm", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> GRASS_SEEDS = ITEMS.register("grass_seeds",
            () -> new ItemNameBlockItem(ModBlocks.GRASSES.get(),
                    new Item.Properties().tab(FarmersDelight.CREATIVE_TAB)));
    public static void register(IEventBus eventBus) {
        ITEMS.register(eventBus);
    }
}
