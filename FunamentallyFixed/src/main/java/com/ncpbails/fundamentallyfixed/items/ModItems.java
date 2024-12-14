package com.ncpbails.fundamentallyfixed.items;

import com.ncpbails.fundamentallyfixed.FundamentallyFixed;
import com.ncpbails.fundamentallyfixed.block.ModBlocks;
import com.ncpbails.fundamentallyfixed.items.custom.FixedPotionItem;
import com.ncpbails.fundamentallyfixed.items.custom.MysticalStewItem;
import com.ncpbails.fundamentallyfixed.items.types.ModArmourMaterials;
import com.ncpbails.fundamentallyfixed.items.types.ModTiers;
import com.ncpbails.modestmining.item.custom.weapons.GlaiveItem;
import com.ncpbails.modestmining.item.custom.weapons.HammerItem;
import com.ncpbails.modestmining.item.custom.weapons.KatanaItem;
import com.ncpbails.modestmining.item.custom.weapons.MaceItem;
import com.ninni.twigs.item.PebbleItem;
import com.ninni.twigs.item.TwigsCreativeModeTabs;
import com.simibubi.create.content.kinetics.waterwheel.WaterWheelBlock;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.world.entity.EquipmentSlot;
import net.minecraft.world.item.*;
import net.minecraft.world.level.block.Block;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.RegistryObject;
import vectorwing.farmersdelight.common.item.DrinkableItem;
import vectorwing.farmersdelight.common.item.KnifeItem;

public class ModItems {
    public static final DeferredRegister<Item> ITEMS = DeferredRegister.create(ForgeRegistries.ITEMS, FundamentallyFixed.MOD_ID);


    public static final RegistryObject<Item> BREEZE_ROD = ITEMS.register("breeze_rod", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));
    public static final RegistryObject<Item> BREEZE_POWDER = ITEMS.register("breeze_powder", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));
    public static final RegistryObject<Item> INFERNO_ROD = ITEMS.register("inferno_rod", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));
    public static final RegistryObject<Item> INFERNO_POWDER = ITEMS.register("inferno_powder", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> DEEPSLATE_PEBBLE = ITEMS.register("deepslate_pebble", () -> new PebbleItem(ModBlocks.DEEPSLATE_PEBBLE.get(), (new Item.Properties()).tab(CreativeModeTab.TAB_MISC)));
    public static final RegistryObject<Item> BLACKSTONE_PEBBLE = ITEMS.register("blackstone_pebble", () -> new PebbleItem(ModBlocks.BLACKSTONE_PEBBLE.get(), (new Item.Properties()).tab(CreativeModeTab.TAB_MISC)));
    public static final RegistryObject<Item> ALTISITE_PEBBLE = ITEMS.register("altisite_pebble", () -> new PebbleItem(ModBlocks.ALTISITE_PEBBLE.get(), (new Item.Properties()).tab(CreativeModeTab.TAB_MISC)));
    public static final RegistryObject<Item> ENDSTONE_PEBBLE = ITEMS.register("endstone_pebble", () -> new PebbleItem(ModBlocks.ENDSTONE_PEBBLE.get(), (new Item.Properties()).tab(CreativeModeTab.TAB_MISC)));
    public static final RegistryObject<Item> PHYTON_PEBBLE = ITEMS.register("phyton_pebble", () -> new PebbleItem(ModBlocks.PHYTON_PEBBLE.get(), (new Item.Properties()).tab(CreativeModeTab.TAB_MISC)));
    public static final RegistryObject<Item> LOOSE_GRASS = ITEMS.register("loose_grass", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));
    public static final RegistryObject<Item> WORM = ITEMS.register("worm", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> CLOTH = ITEMS.register("cloth", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    //public static final RegistryObject<Item> TERRACOTTA_FRACTURE = ITEMS.register("terracotta_fracture", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));
    public static final RegistryObject<Item> RAW_COPPER_NUGGET = ITEMS.register("raw_copper_nugget", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> RAW_ALUMINIUM_NUGGET = ITEMS.register("raw_aluminium_nugget", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> RAW_IRON_NUGGET = ITEMS.register("raw_iron_nugget", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> RAW_GOLD_NUGGET = ITEMS.register("raw_gold_nugget", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> RAW_LEAD_NUGGET = ITEMS.register("raw_lead_nugget", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> RAW_SILVER_NUGGET = ITEMS.register("raw_silver_nugget", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> RAW_ALUMINIUM = ITEMS.register("raw_aluminium", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> ALUMINIUM_INGOT = ITEMS.register("aluminium_ingot", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> ALUMINIUM_NUGGET = ITEMS.register("aluminium_nugget", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> SPRING = ITEMS.register("spring", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    //public static final RegistryObject<Item> ITEM_HOLDER = ITEMS.register("item_holder", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> HOOK = ITEMS.register("hook", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> GOLD_COIN = ITEMS.register("gold_coin", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> SILVER_COIN = ITEMS.register("silver_coin", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> BRONZE_COIN = ITEMS.register("bronze_coin", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> BRONZE_INGOT = ITEMS.register("bronze_ingot", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> BRONZE_NUGGET = ITEMS.register("bronze_nugget", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> GRAVITITE_INGOT = ITEMS.register("gravitite_ingot", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> GRAVITITE_NUGGET = ITEMS.register("gravitite_nugget", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> STOLDUM_INGOT = ITEMS.register("stoldum_ingot", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> STOLDUM_NUGGET = ITEMS.register("stoldum_nugget", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> VOIDENDUM_INGOT = ITEMS.register("voidendum_ingot", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> VOIDENDUM_NUGGET = ITEMS.register("voidendum_nugget", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> MYTHRIL_INGOT = ITEMS.register("mythril_ingot", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> MYTHRIL_NUGGET = ITEMS.register("mythril_nugget", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> HALLOWED_INGOT = ITEMS.register("hallowed_ingot", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> HALLOWED_NUGGET = ITEMS.register("hallowed_nugget", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> CHLOROPHITE_INGOT = ITEMS.register("chlorophite_ingot", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> CHLOROPHITE_NUGGET = ITEMS.register("chlorophite_nugget", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> RAW_INFERNUM = ITEMS.register("raw_infernum_debris", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> RAW_INFERNUM_NUGGET = ITEMS.register("raw_infernum_nugget", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> INFERNUM_NUGGET = ITEMS.register("infernum_nugget", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> RAW_PHYTON = ITEMS.register("raw_phyton_remains", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> RAW_PHYTON_NUGGET = ITEMS.register("raw_phyton_nugget", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    //public static final RegistryObject<Item> ROUGH_RUBY = ITEMS.register("rough_ruby", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    //public static final RegistryObject<Item> RUBY = ITEMS.register("ruby", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    //public static final RegistryObject<Item> ROUGH_RUBY_SHARD = ITEMS.register("rough_ruby_shard", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    //public static final RegistryObject<Item> RUBY_SHARD = ITEMS.register("ruby_shard", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> ALUMINIUM_DUST = ITEMS.register("aluminium_dust", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> LEAD_DUST = ITEMS.register("lead_dust", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> SILVER_DUST = ITEMS.register("silver_dust", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> NETHERRACK_POWDER = ITEMS.register("netherrack_powder", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> CALCIUM_POWDER = ITEMS.register("calcium_powder", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> GROUND_PRISMARINE = ITEMS.register("ground_prismarine", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> WHEAT_FLOUR = ITEMS.register("wheat_flour", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> ACORN_FLOUR = ITEMS.register("acorn_flour", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> COCOA_POWDER = ITEMS.register("cocoa_powder", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> ALUMINIUM_SHEET = ITEMS.register("aluminium_sheet", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> LEAD_SHEET = ITEMS.register("lead_sheet", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> SILVER_SHEET = ITEMS.register("silver_sheet", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> PRISMARITE_SHEET = ITEMS.register("prismarite_sheet", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> GRAVITITE_SHEET = ITEMS.register("gravitite_sheet", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> STOLDUM_SHEET = ITEMS.register("stoldum_sheet", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> VOIDENDUM_SHEET = ITEMS.register("voidendum_sheet", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> MYTHRIL_SHEET = ITEMS.register("mythril_sheet", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> HALLOWED_SHEET = ITEMS.register("hallowed_sheet", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> CHLOROPHITE_SHEET = ITEMS.register("chlorophite_sheet", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> NETHERITE_SHEET = ITEMS.register("netherite_sheet", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> ELECTRUM_SHEET = ITEMS.register("electrum_sheet", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> BRONZE_SHEET = ITEMS.register("bronze_sheet", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> STEEL_SHEET = ITEMS.register("steel_sheet", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> ROUGH_QUARTZ_SHARD = ITEMS.register("rough_quartz_shard", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> QUARTZ_SHARD = ITEMS.register("quartz_shard", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> QUARTZ = ITEMS.register("quartz", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> METEORITE_SCRAP = ITEMS.register("meteorite_scrap", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> METEORITE_DUST = ITEMS.register("meteorite_dust", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> METEORITE_NUGGET = ITEMS.register("meteorite_nugget", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> PRISMARINE_SHARD = ITEMS.register("prismarine_shard", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    //public static final RegistryObject<Item> COW_HIDE = ITEMS.register("cow_hide", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    //public static final RegistryObject<Item> HORSE_HIDE = ITEMS.register("horse_hide", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    //public static final RegistryObject<Item> LLAMA_HIDE = ITEMS.register("llama_hide", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> MAMMAL_HIDE = ITEMS.register("mammal_hide", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> SAND_PILE = ITEMS.register("sand_pile", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> DIRT_PILE = ITEMS.register("dirt_pile", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> SOUL_SAND_PILE = ITEMS.register("soul_sand_pile", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> RED_SAND_PILE = ITEMS.register("red_sand_pile", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> FLORAROCK_PILE = ITEMS.register("florarock_pile", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> QUICKSOIL_PILE = ITEMS.register("quicksoil_pile", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> SILVERFISH_EGGS = ITEMS.register("silverfish_eggs", () -> new Item(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));


    public static final RegistryObject<Item> FLINT_HATCHET = ITEMS.register("flint_hatchet", () -> new AxeItem(ModTiers.FLINT, 5.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> FLINT_PICK = ITEMS.register("flint_pick", () -> new PickaxeItem(ModTiers.FLINT, 1, -2.8f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> FLINT_KNIFE = ITEMS.register("flint_knife", () -> new KnifeItem(ModTiers.FLINT, 1, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));


    public static final RegistryObject<Item> COPPER_HATCHET = ITEMS.register("copper_hatchet", () -> new AxeItem(ModTiers.COPPER, 5.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> COPPER_PICK = ITEMS.register("copper_pick", () -> new PickaxeItem(ModTiers.COPPER, 1, -2.8f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> COPPER_KNIFE = ITEMS.register("copper_knife", () -> new KnifeItem(ModTiers.COPPER, -2, -2f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));


    public static final RegistryObject<Item> BRONZE_SWORD = ITEMS.register("bronze_sword", () -> new SwordItem(ModTiers.BRONZE, 3, -2.4f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> BRONZE_AXE = ITEMS.register("bronze_axe", () -> new AxeItem(ModTiers.BRONZE, 5.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> BRONZE_PICKAXE = ITEMS.register("bronze_pickaxe", () -> new PickaxeItem(ModTiers.BRONZE, 1, -2.8f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> BRONZE_SHOVEL = ITEMS.register("bronze_shovel", () -> new ShovelItem(ModTiers.BRONZE, 1.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> BRONZE_HOE = ITEMS.register("bronze_hoe", () -> new HoeItem(ModTiers.BRONZE, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> BRONZE_KNIFE = ITEMS.register("bronze_knife", () -> new KnifeItem(ModTiers.BRONZE, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> BRONZE_HELMET = ITEMS.register("bronze_helmet", () -> new ArmorItem(ModArmourMaterials.BRONZE, EquipmentSlot.HEAD,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> BRONZE_CHESTPLATE = ITEMS.register("bronze_chestplate", () -> new ArmorItem(ModArmourMaterials.BRONZE, EquipmentSlot.CHEST,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> BRONZE_LEGGINGS = ITEMS.register("bronze_leggings", () -> new ArmorItem(ModArmourMaterials.BRONZE, EquipmentSlot.LEGS,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> BRONZE_BOOTS = ITEMS.register("bronze_boots", () -> new ArmorItem(ModArmourMaterials.BRONZE, EquipmentSlot.FEET,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> BRONZE_HAMMER = ITEMS.register("bronze_hammer", () -> new HammerItem(ModTiers.BRONZE, 7, -3.3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));


    public static final RegistryObject<Item> STEEL_SWORD = ITEMS.register("steel_sword", () -> new SwordItem(ModTiers.STEEL, 3, -2.4f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> STEEL_AXE = ITEMS.register("steel_axe", () -> new AxeItem(ModTiers.STEEL, 5.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> STEEL_PICKAXE = ITEMS.register("steel_pickaxe", () -> new PickaxeItem(ModTiers.STEEL, 1, -2.8f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> STEEL_SHOVEL = ITEMS.register("steel_shovel", () -> new ShovelItem(ModTiers.STEEL, 1.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> STEEL_HOE = ITEMS.register("steel_hoe", () -> new HoeItem(ModTiers.STEEL, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> STEEL_KNIFE = ITEMS.register("steel_knife", () -> new KnifeItem(ModTiers.STEEL, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> STEEL_HELMET = ITEMS.register("steel_helmet", () -> new ArmorItem(ModArmourMaterials.STEEL, EquipmentSlot.HEAD,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> STEEL_CHESTPLATE = ITEMS.register("steel_chestplate", () -> new ArmorItem(ModArmourMaterials.STEEL, EquipmentSlot.CHEST,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> STEEL_LEGGINGS = ITEMS.register("steel_leggings", () -> new ArmorItem(ModArmourMaterials.STEEL, EquipmentSlot.LEGS,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> STEEL_BOOTS = ITEMS.register("steel_boots", () -> new ArmorItem(ModArmourMaterials.STEEL, EquipmentSlot.FEET,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> STEEL_KATANA = ITEMS.register("steel_katana", () -> new KatanaItem(ModTiers.STEEL, 2, -2.7f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> STEEL_MACE = ITEMS.register("steel_mace", () -> new MaceItem(ModTiers.STEEL, 1, -3.3f, 2.0f, 2.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> STEEL_GLAIVE = ITEMS.register("steel_glaive", () -> new GlaiveItem(ModTiers.STEEL, 3, -3.4f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> STEEL_HAMMER = ITEMS.register("steel_hammer", () -> new HammerItem(ModTiers.STEEL, 7, -3.3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));


    public static final RegistryObject<Item> DIAMOND_SWORD = ITEMS.register("diamond_sword", () -> new SwordItem(ModTiers.DIAMOND, 3, -2.4f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> DIAMOND_AXE = ITEMS.register("diamond_axe", () -> new AxeItem(ModTiers.DIAMOND, 5.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> DIAMOND_PICKAXE = ITEMS.register("diamond_pickaxe", () -> new PickaxeItem(ModTiers.DIAMOND, 1, -2.8f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> DIAMOND_SHOVEL = ITEMS.register("diamond_shovel", () -> new ShovelItem(ModTiers.DIAMOND, 1.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> DIAMOND_HOE = ITEMS.register("diamond_hoe", () -> new HoeItem(ModTiers.DIAMOND, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> DIAMOND_KNIFE = ITEMS.register("diamond_knife", () -> new KnifeItem(ModTiers.DIAMOND, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> DIAMOND_HELMET = ITEMS.register("diamond_helmet", () -> new ArmorItem(ModArmourMaterials.DIAMOND, EquipmentSlot.HEAD,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> DIAMOND_CHESTPLATE = ITEMS.register("diamond_chestplate", () -> new ArmorItem(ModArmourMaterials.DIAMOND, EquipmentSlot.CHEST,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> DIAMOND_LEGGINGS = ITEMS.register("diamond_leggings", () -> new ArmorItem(ModArmourMaterials.DIAMOND, EquipmentSlot.LEGS,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> DIAMOND_BOOTS = ITEMS.register("diamond_boots", () -> new ArmorItem(ModArmourMaterials.DIAMOND, EquipmentSlot.FEET,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> DIAMOND_KATANA = ITEMS.register("diamond_katana", () -> new KatanaItem(ModTiers.DIAMOND, 2, -2.7f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> DIAMOND_MACE = ITEMS.register("diamond_mace", () -> new MaceItem(ModTiers.DIAMOND, 1, -3.3f, 2.0f, 2.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> DIAMOND_GLAIVE = ITEMS.register("diamond_glaive", () -> new GlaiveItem(ModTiers.DIAMOND, 3, -3.4f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> DIAMOND_HAMMER = ITEMS.register("diamond_hammer", () -> new HammerItem(ModTiers.DIAMOND, 7, -3.3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));


    public static final RegistryObject<Item> NETHERITE_SWORD = ITEMS.register("netherite_sword", () -> new SwordItem(ModTiers.NETHERITE, 3, -2.4f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> NETHERITE_AXE = ITEMS.register("netherite_axe", () -> new AxeItem(ModTiers.NETHERITE, 5.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> NETHERITE_PICKAXE = ITEMS.register("netherite_pickaxe", () -> new PickaxeItem(ModTiers.NETHERITE, 1, -2.8f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> NETHERITE_SHOVEL = ITEMS.register("netherite_shovel", () -> new ShovelItem(ModTiers.NETHERITE, 1.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> NETHERITE_HOE = ITEMS.register("netherite_hoe", () -> new HoeItem(ModTiers.NETHERITE, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> NETHERITE_KNIFE = ITEMS.register("netherite_knife", () -> new KnifeItem(ModTiers.NETHERITE, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> NETHERITE_HELMET = ITEMS.register("netherite_helmet", () -> new ArmorItem(ModArmourMaterials.NETHERITE, EquipmentSlot.HEAD,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> NETHERITE_CHESTPLATE = ITEMS.register("netherite_chestplate", () -> new ArmorItem(ModArmourMaterials.NETHERITE, EquipmentSlot.CHEST,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> NETHERITE_LEGGINGS = ITEMS.register("netherite_leggings", () -> new ArmorItem(ModArmourMaterials.NETHERITE, EquipmentSlot.LEGS,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> NETHERITE_BOOTS = ITEMS.register("netherite_boots", () -> new ArmorItem(ModArmourMaterials.NETHERITE, EquipmentSlot.FEET,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> NETHERITE_KATANA = ITEMS.register("netherite_katana", () -> new KatanaItem(ModTiers.NETHERITE, 2, -2.7f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> NETHERITE_MACE = ITEMS.register("netherite_mace", () -> new MaceItem(ModTiers.NETHERITE, 1, -3.3f, 2.0f, 2.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> NETHERITE_GLAIVE = ITEMS.register("netherite_glaive", () -> new GlaiveItem(ModTiers.NETHERITE, 3, -3.4f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> NETHERITE_HAMMER = ITEMS.register("netherite_hammer", () -> new HammerItem(ModTiers.NETHERITE, 7, -3.3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));


    public static final RegistryObject<Item> GRAVITITE_SWORD = ITEMS.register("gravitite_sword", () -> new SwordItem(ModTiers.GRAVITITE, 3, -2.4f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> GRAVITITE_AXE = ITEMS.register("gravitite_axe", () -> new AxeItem(ModTiers.GRAVITITE, 5.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> GRAVITITE_PICKAXE = ITEMS.register("gravitite_pickaxe", () -> new PickaxeItem(ModTiers.GRAVITITE, 1, -2.8f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> GRAVITITE_SHOVEL = ITEMS.register("gravitite_shovel", () -> new ShovelItem(ModTiers.GRAVITITE, 1.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> GRAVITITE_HOE = ITEMS.register("gravitite_hoe", () -> new HoeItem(ModTiers.GRAVITITE, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> GRAVITITE_KNIFE = ITEMS.register("gravitite_knife", () -> new KnifeItem(ModTiers.GRAVITITE, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> GRAVITITE_HELMET = ITEMS.register("gravitite_helmet", () -> new ArmorItem(ModArmourMaterials.GRAVITITE, EquipmentSlot.HEAD,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> GRAVITITE_CHESTPLATE = ITEMS.register("gravitite_chestplate", () -> new ArmorItem(ModArmourMaterials.GRAVITITE, EquipmentSlot.CHEST,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> GRAVITITE_LEGGINGS = ITEMS.register("gravitite_leggings", () -> new ArmorItem(ModArmourMaterials.GRAVITITE, EquipmentSlot.LEGS,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> GRAVITITE_BOOTS = ITEMS.register("gravitite_boots", () -> new ArmorItem(ModArmourMaterials.GRAVITITE, EquipmentSlot.FEET,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> GRAVITITE_KATANA = ITEMS.register("gravitite_katana", () -> new KatanaItem(ModTiers.GRAVITITE, 2, -2.7f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> GRAVITITE_MACE = ITEMS.register("gravitite_mace", () -> new MaceItem(ModTiers.GRAVITITE, 1, -3.3f, 2.0f, 2.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> GRAVITITE_GLAIVE = ITEMS.register("gravitite_glaive", () -> new GlaiveItem(ModTiers.GRAVITITE, 3, -3.4f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> GRAVITITE_HAMMER = ITEMS.register("gravitite_hammer", () -> new HammerItem(ModTiers.GRAVITITE, 7, -3.3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));


    public static final RegistryObject<Item> ELECTRUM_SWORD = ITEMS.register("electrum_sword", () -> new SwordItem(ModTiers.ELECTRUM, 3, -2.4f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> ELECTRUM_AXE = ITEMS.register("electrum_axe", () -> new AxeItem(ModTiers.ELECTRUM, 5.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> ELECTRUM_PICKAXE = ITEMS.register("electrum_pickaxe", () -> new PickaxeItem(ModTiers.ELECTRUM, 1, -2.8f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> ELECTRUM_SHOVEL = ITEMS.register("electrum_shovel", () -> new ShovelItem(ModTiers.ELECTRUM, 1.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> ELECTRUM_HOE = ITEMS.register("electrum_hoe", () -> new HoeItem(ModTiers.ELECTRUM, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> ELECTRUM_KNIFE = ITEMS.register("electrum_knife", () -> new KnifeItem(ModTiers.ELECTRUM, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> ELECTRUM_HELMET = ITEMS.register("electrum_helmet", () -> new ArmorItem(ModArmourMaterials.ELECTRUM, EquipmentSlot.HEAD,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> ELECTRUM_CHESTPLATE = ITEMS.register("electrum_chestplate", () -> new ArmorItem(ModArmourMaterials.ELECTRUM, EquipmentSlot.CHEST,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> ELECTRUM_LEGGINGS = ITEMS.register("electrum_leggings", () -> new ArmorItem(ModArmourMaterials.ELECTRUM, EquipmentSlot.LEGS,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> ELECTRUM_BOOTS = ITEMS.register("electrum_boots", () -> new ArmorItem(ModArmourMaterials.ELECTRUM, EquipmentSlot.FEET,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> ELECTRUM_KATANA = ITEMS.register("electrum_katana", () -> new KatanaItem(ModTiers.ELECTRUM, 2, -2.7f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> ELECTRUM_MACE = ITEMS.register("electrum_mace", () -> new MaceItem(ModTiers.ELECTRUM, 1, -3.3f, 2.0f, 2.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> ELECTRUM_GLAIVE = ITEMS.register("electrum_glaive", () -> new GlaiveItem(ModTiers.ELECTRUM, 3, -3.4f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> ELECTRUM_HAMMER = ITEMS.register("electrum_hammer", () -> new HammerItem(ModTiers.ELECTRUM, 7, -3.3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));


    public static final RegistryObject<Item> PRISMARITE_SWORD = ITEMS.register("prismarite_sword", () -> new SwordItem(ModTiers.PRISMARITE, 3, -2.4f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> PRISMARITE_AXE = ITEMS.register("prismarite_axe", () -> new AxeItem(ModTiers.PRISMARITE, 5.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> PRISMARITE_PICKAXE = ITEMS.register("prismarite_pickaxe", () -> new PickaxeItem(ModTiers.PRISMARITE, 1, -2.8f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> PRISMARITE_SHOVEL = ITEMS.register("prismarite_shovel", () -> new ShovelItem(ModTiers.PRISMARITE, 1.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> PRISMARITE_HOE = ITEMS.register("prismarite_hoe", () -> new HoeItem(ModTiers.PRISMARITE, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> PRISMARITE_KNIFE = ITEMS.register("prismarite_knife", () -> new KnifeItem(ModTiers.PRISMARITE, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> PRISMARITE_HELMET = ITEMS.register("prismarite_helmet", () -> new ArmorItem(ModArmourMaterials.PRISMARITE, EquipmentSlot.HEAD,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> PRISMARITE_CHESTPLATE = ITEMS.register("prismarite_chestplate", () -> new ArmorItem(ModArmourMaterials.PRISMARITE, EquipmentSlot.CHEST,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> PRISMARITE_LEGGINGS = ITEMS.register("prismarite_leggings", () -> new ArmorItem(ModArmourMaterials.PRISMARITE, EquipmentSlot.LEGS,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> PRISMARITE_BOOTS = ITEMS.register("prismarite_boots", () -> new ArmorItem(ModArmourMaterials.PRISMARITE, EquipmentSlot.FEET,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> PRISMARITE_KATANA = ITEMS.register("prismarite_katana", () -> new KatanaItem(ModTiers.PRISMARITE, 2, -2.7f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> PRISMARITE_MACE = ITEMS.register("prismarite_mace", () -> new MaceItem(ModTiers.PRISMARITE, 1, -3.3f, 2.0f, 2.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> PRISMARITE_GLAIVE = ITEMS.register("prismarite_glaive", () -> new GlaiveItem(ModTiers.PRISMARITE, 3, -3.4f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> PRISMARITE_HAMMER = ITEMS.register("prismarite_hammer", () -> new HammerItem(ModTiers.PRISMARITE, 7, -3.3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));


    public static final RegistryObject<Item> CHLOROPHITE_SWORD = ITEMS.register("chlorophite_sword", () -> new SwordItem(ModTiers.CHLOROPHITE, 3, -2.4f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> CHLOROPHITE_AXE = ITEMS.register("chlorophite_axe", () -> new AxeItem(ModTiers.CHLOROPHITE, 5.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> CHLOROPHITE_PICKAXE = ITEMS.register("chlorophite_pickaxe", () -> new PickaxeItem(ModTiers.CHLOROPHITE, 1, -2.8f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> CHLOROPHITE_SHOVEL = ITEMS.register("chlorophite_shovel", () -> new ShovelItem(ModTiers.CHLOROPHITE, 1.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> CHLOROPHITE_HOE = ITEMS.register("chlorophite_hoe", () -> new HoeItem(ModTiers.CHLOROPHITE, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> CHLOROPHITE_KNIFE = ITEMS.register("chlorophite_knife", () -> new KnifeItem(ModTiers.CHLOROPHITE, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> CHLOROPHITE_HELMET = ITEMS.register("chlorophite_helmet", () -> new ArmorItem(ModArmourMaterials.CHLOROPHITE, EquipmentSlot.HEAD,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> CHLOROPHITE_CHESTPLATE = ITEMS.register("chlorophite_chestplate", () -> new ArmorItem(ModArmourMaterials.CHLOROPHITE, EquipmentSlot.CHEST,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> CHLOROPHITE_LEGGINGS = ITEMS.register("chlorophite_leggings", () -> new ArmorItem(ModArmourMaterials.CHLOROPHITE, EquipmentSlot.LEGS,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> CHLOROPHITE_BOOTS = ITEMS.register("chlorophite_boots", () -> new ArmorItem(ModArmourMaterials.CHLOROPHITE, EquipmentSlot.FEET,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> CHLOROPHITE_KATANA = ITEMS.register("chlorophite_katana", () -> new KatanaItem(ModTiers.CHLOROPHITE, 2, -2.7f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> CHLOROPHITE_MACE = ITEMS.register("chlorophite_mace", () -> new MaceItem(ModTiers.CHLOROPHITE, 1, -3.3f, 2.0f, 2.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> CHLOROPHITE_GLAIVE = ITEMS.register("chlorophite_glaive", () -> new GlaiveItem(ModTiers.CHLOROPHITE, 3, -3.4f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> CHLOROPHITE_HAMMER = ITEMS.register("chlorophite_hammer", () -> new HammerItem(ModTiers.CHLOROPHITE, 7, -3.3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));


    public static final RegistryObject<Item> HALLOWED_SWORD = ITEMS.register("hallowed_sword", () -> new SwordItem(ModTiers.HALLOWED, 3, -2.4f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> HALLOWED_AXE = ITEMS.register("hallowed_axe", () -> new AxeItem(ModTiers.HALLOWED, 5.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> HALLOWED_PICKAXE = ITEMS.register("hallowed_pickaxe", () -> new PickaxeItem(ModTiers.HALLOWED, 1, -2.8f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> HALLOWED_SHOVEL = ITEMS.register("hallowed_shovel", () -> new ShovelItem(ModTiers.HALLOWED, 1.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> HALLOWED_HOE = ITEMS.register("hallowed_hoe", () -> new HoeItem(ModTiers.HALLOWED, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> HALLOWED_KNIFE = ITEMS.register("hallowed_knife", () -> new KnifeItem(ModTiers.HALLOWED, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> HALLOWED_HELMET = ITEMS.register("hallowed_helmet", () -> new ArmorItem(ModArmourMaterials.HALLOWED, EquipmentSlot.HEAD,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> HALLOWED_CHESTPLATE = ITEMS.register("hallowed_chestplate", () -> new ArmorItem(ModArmourMaterials.HALLOWED, EquipmentSlot.CHEST,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> HALLOWED_LEGGINGS = ITEMS.register("hallowed_leggings", () -> new ArmorItem(ModArmourMaterials.HALLOWED, EquipmentSlot.LEGS,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> HALLOWED_BOOTS = ITEMS.register("hallowed_boots", () -> new ArmorItem(ModArmourMaterials.HALLOWED, EquipmentSlot.FEET,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> HALLOWED_KATANA = ITEMS.register("hallowed_katana", () -> new KatanaItem(ModTiers.HALLOWED, 2, -2.7f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> HALLOWED_MACE = ITEMS.register("hallowed_mace", () -> new MaceItem(ModTiers.HALLOWED, 1, -3.3f, 2.0f, 2.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> HALLOWED_GLAIVE = ITEMS.register("hallowed_glaive", () -> new GlaiveItem(ModTiers.HALLOWED, 3, -3.4f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> HALLOWED_HAMMER = ITEMS.register("hallowed_hammer", () -> new HammerItem(ModTiers.HALLOWED, 7, -3.3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));


    public static final RegistryObject<Item> MYTHRIL_SWORD = ITEMS.register("mythril_sword", () -> new SwordItem(ModTiers.MYTHRIL, 3, -2.4f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> MYTHRIL_AXE = ITEMS.register("mythril_axe", () -> new AxeItem(ModTiers.MYTHRIL, 5.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> MYTHRIL_PICKAXE = ITEMS.register("mythril_pickaxe", () -> new PickaxeItem(ModTiers.MYTHRIL, 1, -2.8f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> MYTHRIL_SHOVEL = ITEMS.register("mythril_shovel", () -> new ShovelItem(ModTiers.MYTHRIL, 1.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> MYTHRIL_HOE = ITEMS.register("mythril_hoe", () -> new HoeItem(ModTiers.MYTHRIL, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> MYTHRIL_KNIFE = ITEMS.register("mythril_knife", () -> new KnifeItem(ModTiers.MYTHRIL, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> MYTHRIL_HELMET = ITEMS.register("mythril_helmet", () -> new ArmorItem(ModArmourMaterials.MYTHRIL, EquipmentSlot.HEAD,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> MYTHRIL_CHESTPLATE = ITEMS.register("mythril_chestplate", () -> new ArmorItem(ModArmourMaterials.MYTHRIL, EquipmentSlot.CHEST,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> MYTHRIL_LEGGINGS = ITEMS.register("mythril_leggings", () -> new ArmorItem(ModArmourMaterials.MYTHRIL, EquipmentSlot.LEGS,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> MYTHRIL_BOOTS = ITEMS.register("mythril_boots", () -> new ArmorItem(ModArmourMaterials.MYTHRIL, EquipmentSlot.FEET,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> MYTHRIL_KATANA = ITEMS.register("mythril_katana", () -> new KatanaItem(ModTiers.MYTHRIL, 2, -2.7f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> MYTHRIL_MACE = ITEMS.register("mythril_mace", () -> new MaceItem(ModTiers.MYTHRIL, 1, -3.3f, 2.0f, 2.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> MYTHRIL_GLAIVE = ITEMS.register("mythril_glaive", () -> new GlaiveItem(ModTiers.MYTHRIL, 3, -3.4f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> MYTHRIL_HAMMER = ITEMS.register("mythril_hammer", () -> new HammerItem(ModTiers.MYTHRIL, 7, -3.3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));


    public static final RegistryObject<Item> VOIDENDUM_SWORD = ITEMS.register("voidendum_sword", () -> new SwordItem(ModTiers.VOIDENDUM, 3, -2.4f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> VOIDENDUM_AXE = ITEMS.register("voidendum_axe", () -> new AxeItem(ModTiers.VOIDENDUM, 5.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> VOIDENDUM_PICKAXE = ITEMS.register("voidendum_pickaxe", () -> new PickaxeItem(ModTiers.VOIDENDUM, 1, -2.8f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> VOIDENDUM_SHOVEL = ITEMS.register("voidendum_shovel", () -> new ShovelItem(ModTiers.VOIDENDUM, 1.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> VOIDENDUM_HOE = ITEMS.register("voidendum_hoe", () -> new HoeItem(ModTiers.VOIDENDUM, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> VOIDENDUM_KNIFE = ITEMS.register("voidendum_knife", () -> new KnifeItem(ModTiers.VOIDENDUM, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> VOIDENDUM_HELMET = ITEMS.register("voidendum_helmet", () -> new ArmorItem(ModArmourMaterials.VOIDENDUM, EquipmentSlot.HEAD,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> VOIDENDUM_CHESTPLATE = ITEMS.register("voidendum_chestplate", () -> new ArmorItem(ModArmourMaterials.VOIDENDUM, EquipmentSlot.CHEST,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> VOIDENDUM_LEGGINGS = ITEMS.register("voidendum_leggings", () -> new ArmorItem(ModArmourMaterials.VOIDENDUM, EquipmentSlot.LEGS,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> VOIDENDUM_BOOTS = ITEMS.register("voidendum_boots", () -> new ArmorItem(ModArmourMaterials.VOIDENDUM, EquipmentSlot.FEET,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> VOIDENDUM_KATANA = ITEMS.register("voidendum_katana", () -> new KatanaItem(ModTiers.VOIDENDUM, 2, -2.7f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> VOIDENDUM_MACE = ITEMS.register("voidendum_mace", () -> new MaceItem(ModTiers.VOIDENDUM, 1, -3.3f, 2.0f, 2.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> VOIDENDUM_GLAIVE = ITEMS.register("voidendum_glaive", () -> new GlaiveItem(ModTiers.VOIDENDUM, 3, -3.4f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> VOIDENDUM_HAMMER = ITEMS.register("voidendum_hammer", () -> new HammerItem(ModTiers.VOIDENDUM, 7, -3.3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));


    public static final RegistryObject<Item> STOLDUM_SWORD = ITEMS.register("stoldum_sword", () -> new SwordItem(ModTiers.STOLDUM, 3, -2.4f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> STOLDUM_AXE = ITEMS.register("stoldum_axe", () -> new AxeItem(ModTiers.STOLDUM, 5.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> STOLDUM_PICKAXE = ITEMS.register("stoldum_pickaxe", () -> new PickaxeItem(ModTiers.STOLDUM, 1, -2.8f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> STOLDUM_SHOVEL = ITEMS.register("stoldum_shovel", () -> new ShovelItem(ModTiers.STOLDUM, 1.5f, -3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> STOLDUM_HOE = ITEMS.register("stoldum_hoe", () -> new HoeItem(ModTiers.STOLDUM, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> STOLDUM_KNIFE = ITEMS.register("stoldum_knife", () -> new KnifeItem(ModTiers.STOLDUM, -2, 0f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));

    public static final RegistryObject<Item> STOLDUM_HELMET = ITEMS.register("stoldum_helmet", () -> new ArmorItem(ModArmourMaterials.STOLDUM, EquipmentSlot.HEAD,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> STOLDUM_CHESTPLATE = ITEMS.register("stoldum_chestplate", () -> new ArmorItem(ModArmourMaterials.STOLDUM, EquipmentSlot.CHEST,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> STOLDUM_LEGGINGS = ITEMS.register("stoldum_leggings", () -> new ArmorItem(ModArmourMaterials.STOLDUM, EquipmentSlot.LEGS,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> STOLDUM_BOOTS = ITEMS.register("stoldum_boots", () -> new ArmorItem(ModArmourMaterials.STOLDUM, EquipmentSlot.FEET,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> STOLDUM_KATANA = ITEMS.register("stoldum_katana", () -> new KatanaItem(ModTiers.STOLDUM, 2, -2.7f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> STOLDUM_MACE = ITEMS.register("stoldum_mace", () -> new MaceItem(ModTiers.STOLDUM, 1, -3.3f, 2.0f, 2.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> STOLDUM_GLAIVE = ITEMS.register("stoldum_glaive", () -> new GlaiveItem(ModTiers.STOLDUM, 3, -3.4f, 3.0f,
            new Item.Properties().tab(CreativeModeTab.TAB_COMBAT)));

    public static final RegistryObject<Item> STOLDUM_HAMMER = ITEMS.register("stoldum_hammer", () -> new HammerItem(ModTiers.STOLDUM, 7, -3.3f,
            new Item.Properties().tab(CreativeModeTab.TAB_TOOLS)));



    public static final RegistryObject<Item> POSITIVE_POTION_BASE = ITEMS.register("positive_potion_base", () ->
            new DrinkableItem(new Item.Properties().craftRemainder(Items.GLASS_BOTTLE).stacksTo(16).tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> NEGATIVE_POTION_BASE = ITEMS.register("negative_potion_base", () ->
            new DrinkableItem(new Item.Properties().craftRemainder(Items.GLASS_BOTTLE).stacksTo(16).tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> MYSTICAL_STEW = ITEMS.register("mystical_stew", () -> new MysticalStewItem(new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> SPLASHTEST = ITEMS.register("splashtest", () ->
            new FixedPotionItem(new MobEffectInstance(MobEffects.GLOWING, 40, 1), new Item.Properties().tab(CreativeModeTab.TAB_BREWING)));

    public static final RegistryObject<Item> GRASS_SEEDS = ITEMS.register("grass_seeds",
            () -> new ItemNameBlockItem(ModBlocks.GRASSES.get(),
                    new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static final RegistryObject<Item> WHEAT_SEEDS_FIXED = ITEMS.register("wheat_seeds_fixed",
            () -> new ItemNameBlockItem(ModBlocks.WHEAT_FIXED.get(),
                    new Item.Properties().tab(CreativeModeTab.TAB_MISC)));

    public static void register(IEventBus eventBus) {
        ITEMS.register(eventBus);
    }
}
