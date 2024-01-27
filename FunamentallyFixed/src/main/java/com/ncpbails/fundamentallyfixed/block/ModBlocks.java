package com.ncpbails.fundamentallyfixed.block;

import com.ncpbails.fundamentallyfixed.FundamentallyFixed;
import com.ncpbails.fundamentallyfixed.block.custom.AcornBlock;
import com.ncpbails.fundamentallyfixed.block.custom.DualCropBlock;
import com.ncpbails.fundamentallyfixed.block.custom.FixedCropBlock;
import com.ncpbails.fundamentallyfixed.block.custom.SaltPillarBlock;
import com.ncpbails.fundamentallyfixed.items.ModItems;
import com.ncpbails.fundamentallyfixed.world.feature.tree.OakTreeFixedGrower;
import com.ncpbails.modestmining.block.entity.custom.RockBlock;
import com.ordana.spelunkery.blocks.rock_salt.SaltBlock;
import com.teamabnormals.savage_and_ravage.core.registry.SRBlocks;
import net.minecraft.core.BlockPos;
import net.minecraft.core.Direction;
import net.minecraft.world.item.*;
import net.minecraft.world.item.context.UseOnContext;
import net.minecraft.world.item.crafting.RecipeType;
import net.minecraft.world.level.BlockGetter;
import net.minecraft.world.level.block.*;
import net.minecraft.world.level.block.state.BlockBehaviour;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.material.Material;
import net.minecraft.world.level.material.MaterialColor;
import net.minecraftforge.common.ToolAction;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.RegistryObject;
import vazkii.quark.content.building.module.BambooBackportModule;

import javax.annotation.Nullable;
import java.util.function.Supplier;

public class ModBlocks {
    public static final DeferredRegister<Block> BLOCKS = DeferredRegister.create(ForgeRegistries.BLOCKS, FundamentallyFixed.MOD_ID);

    //Blocks
    //public static final RegistryObject<Block> REDSTONE_DYNAMO = registerBlock("redstone_dynamo",
    //        () -> new RedstoneDynamoBlock(BlockBehaviour.Properties.copy(Blocks.OAK_LOG)), CreativeModeTab.TAB_BUILDING_BLOCKS, true, 300);

    public static final RegistryObject<Block> SAPPY_OAK_LOG = registerBlock("sappy_oak_log",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.OAK_LOG)) {
                @Override public boolean isFlammable(BlockState state, BlockGetter world, BlockPos pos, Direction face) { return true; }
                @Override public int getFlammability(BlockState state, BlockGetter world, BlockPos pos, Direction face) { return 60; }
                @Override public int getFireSpreadSpeed(BlockState state, BlockGetter world, BlockPos pos, Direction face) { return 30; }
                @Override public @Nullable BlockState getToolModifiedState(BlockState state, UseOnContext context, ToolAction toolAction, boolean simulate) {
                    if(context.getItemInHand().getItem() instanceof AxeItem) {
                        if(state.is(ModBlocks.SAPPY_OAK_LOG.get())) {
                            return Blocks.STRIPPED_OAK_LOG.defaultBlockState().setValue(AXIS, state.getValue(AXIS));}}
                    return super.getToolModifiedState(state, context, toolAction, simulate);}

            }, CreativeModeTab.TAB_BUILDING_BLOCKS, true, 300);

    public static final RegistryObject<Block> CUT_BAMBOO = registerBlock("cut_bamboo",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.OAK_LOG)) {
                @Override public boolean isFlammable(BlockState state, BlockGetter world, BlockPos pos, Direction face) { return true; }
                @Override public int getFlammability(BlockState state, BlockGetter world, BlockPos pos, Direction face) { return 60; }
                @Override public int getFireSpreadSpeed(BlockState state, BlockGetter world, BlockPos pos, Direction face) { return 30; }
                @Override public @Nullable BlockState getToolModifiedState(BlockState state, UseOnContext context, ToolAction toolAction, boolean simulate) {
                    if(context.getItemInHand().getItem() instanceof AxeItem) {
                        if(state.is(ModBlocks.CUT_BAMBOO.get())) {
                            return ModBlocks.STRIPPED_CUT_BAMBOO.get().defaultBlockState().setValue(AXIS, state.getValue(AXIS));}}
                    return super.getToolModifiedState(state, context, toolAction, simulate);}

            }, CreativeModeTab.TAB_BUILDING_BLOCKS, true, 300);

    public static final RegistryObject<Block> STRIPPED_CUT_BAMBOO = registerBlock("stripped_cut_bamboo",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.OAK_LOG)) {
                @Override public boolean isFlammable(BlockState state, BlockGetter world, BlockPos pos, Direction face) { return true; }
                @Override public int getFlammability(BlockState state, BlockGetter world, BlockPos pos, Direction face) { return 60; }
                @Override public int getFireSpreadSpeed(BlockState state, BlockGetter world, BlockPos pos, Direction face) { return 30; }

            }, CreativeModeTab.TAB_BUILDING_BLOCKS, true, 300);

    public static final RegistryObject<Block> OCEANIC_PRISMARINE_ORE = registerBlock("oceanic_prismarine_ore",
            () -> new Block(BlockBehaviour.Properties.copy(com.ncpbails.modestmining.block.ModBlocks.OCEANIC_REMAINS.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> ALUMINIUM_BLOCK = registerBlock("aluminium_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> RAW_ALUMINIUM_BLOCK = registerBlock("raw_aluminium_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.RAW_COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> ALUMINIUM_ORE = registerBlock("aluminium_ore",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.COPPER_ORE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> DEEPSLATE_ALUMINIUM_ORE = registerBlock("deepslate_aluminium_ore",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.DEEPSLATE_COPPER_ORE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> COPPER_ORE = registerBlock("copper_ore",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.COPPER_ORE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> DEEPSLATE_COPPER_ORE = registerBlock("deepslate_copper_ore",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.DEEPSLATE_COPPER_ORE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> RAW_COPPER_BLOCK = registerBlock("raw_copper_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.RAW_COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> DEEPSlATE_ROCKS = registerBlock("deepslate_rocks",
            () -> new RockBlock(BlockBehaviour.Properties.of(Material.STONE, MaterialColor.COLOR_YELLOW)
                    .strength(0.6f, 0.6f).requiresCorrectToolForDrops()), CreativeModeTab.TAB_MISC, false, 0);

    public static final RegistryObject<Block> END_STONE_ROCKS = registerBlock("end_stone_rocks",
            () -> new RockBlock(BlockBehaviour.Properties.of(Material.STONE, MaterialColor.COLOR_GRAY)
                    .strength(0.6f, 0.6f).requiresCorrectToolForDrops()), CreativeModeTab.TAB_MISC, false, 0);

    public static final RegistryObject<Block> BLAST_PROOF_BLOCK = registerBlock("blast_proof_block",
            () -> new Block(BlockBehaviour.Properties.copy(SRBlocks.BLAST_PROOF_PLATES.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> STURDY_DEEPSLATE = registerBlock("sturdy_deepslate",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.DEEPSLATE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> POLISHED_PHYTON = registerBlock("polished_phyton",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.PRISMARINE_BRICKS)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> POLISHED_PHYTON_STAIRS = registerBlock("polished_phyton_stairs",
            () -> new StairBlock(() -> Blocks.PRISMARINE_BRICK_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.PRISMARINE_BRICKS)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> POLISHED_PHYTON_SLAB = registerBlock("polished_phyton_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.PRISMARINE_BRICKS)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> POLISHED_PHYTON_WALL = registerBlock("polished_phyton_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.PRISMARINE_BRICKS)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> COARSE_FLORAROCK = registerBlock("coarse_florarock",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.COARSE_DIRT)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> FLORAROCK_BRICKS = registerBlock("florarock_bricks",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.DIRT)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> FLORAROCK_BRICK_STAIRS = registerBlock("florarock_brick_stairs",
            () -> new StairBlock(() -> Blocks.MUD_BRICK_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.DIRT)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> FLORAROCK_BRICK_SLAB = registerBlock("florarock_brick_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.DIRT)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> FLORAROCK_BRICK_WALL = registerBlock("florarock_brick_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.DIRT)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);


    //Pillars
    public static final RegistryObject<Block> SCORIA_PILLAR = registerBlock("scoria_pillar",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.STONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> SCORCHIA_PILLAR = registerBlock("scorchia_pillar",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.STONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> OCHRUM_PILLAR = registerBlock("ochrum_pillar",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.STONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> GLANCE_PILLAR = registerBlock("glance_pillar",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.STONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> HOLYSTONE_PILLAR = registerBlock("holystone_pillar",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.STONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    //public static final RegistryObject<Block> BASALT_PILLAR = registerBlock("basalt_pillar",
    //        () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.STONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> DULLSTONE_PILLAR = registerBlock("dullstone_pillar",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.STONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> DIMSTONE_PILLAR = registerBlock("dimstone_pillar",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.STONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> GLOWSTONE_PILLAR = registerBlock("glowstone_pillar",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.STONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> SHIMMER_STONE_PILLAR = registerBlock("shimmer_stone_pillar",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.STONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> SOUL_SLATE_PILLAR = registerBlock("soul_slate_pillar",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.STONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> ROCK_SALT_PILLAR = registerBlock("rock_salt_pillar",
            () -> new SaltPillarBlock(BlockBehaviour.Properties.copy(Blocks.STONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> PACKED_ICE_PILLAR = registerBlock("packed_ice_pillar",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.STONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> BLUE_ICE_PILLAR = registerBlock("blue_ice_pillar",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.STONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> SNOW_PILLAR = registerBlock("snow_pillar",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.STONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> END_STONE_PILLAR = registerBlock("end_stone_pillar",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.STONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> BLUE_NETHER_BRICK_PILLAR = registerBlock("blue_nether_brick_pillar",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.STONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> RED_NETHER_BRICK_PILLAR = registerBlock("red_nether_brick_pillar",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.STONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> NETHER_BRICK_PILLAR = registerBlock("nether_brick_pillar",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.STONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> BLACKSTONE_PILLAR = registerBlock("blackstone_pillar",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.STONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> PERMAFROST_PILLAR = registerBlock("permafrost_pillar",
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.STONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);


    //Crops
    public static final RegistryObject<Block> ACORN = registerBlock("acorn",
            () -> new AcornBlock(new OakTreeFixedGrower(), BlockBehaviour.Properties.copy(Blocks.OAK_SAPLING)), CreativeModeTab.TAB_MISC, false, 0);

    public static final RegistryObject<Block> GRASSES = registerBlockWithoutBlockItem("grasses",
            () -> new DualCropBlock(BlockBehaviour.Properties.copy(Blocks.WHEAT).noOcclusion()) {
                @Override
                public ItemStack getCloneItemStack(BlockGetter getter, BlockPos pos, BlockState state) {
                    return new ItemStack(ModItems.GRASS_SEEDS.get());
                }
            });
    public static final RegistryObject<Block> WHEAT_FIXED = registerBlockWithoutBlockItem("wheat_fixed",
            () -> new FixedCropBlock(BlockBehaviour.Properties.copy(Blocks.WHEAT).noOcclusion()) {
                @Override
                public ItemStack getCloneItemStack(BlockGetter getter, BlockPos pos, BlockState state) {
                    return new ItemStack(ModItems.WHEAT_SEEDS_FIXED.get());
                }
            });

    private static <T extends Block> RegistryObject<T> registerBlock(String name, Supplier<T> block, CreativeModeTab tab, Boolean isFuel, Integer fuelAmount) {
        RegistryObject<T> toReturn = BLOCKS.register(name, block);
        registerBlockItem(name, toReturn, tab, isFuel, fuelAmount);
        return toReturn;
    }

    private static <T extends Block> RegistryObject<T> registerBlockWithoutBlockItem(String name, Supplier<T> block) {
        return BLOCKS.register(name, block);
    }

    private static <T extends Block> RegistryObject<Item> registerBlockItem(String name, RegistryObject<T> block, CreativeModeTab tab, Boolean isFuel, Integer fuelAmount) {
        if(isFuel == false) {
            return ModItems.ITEMS.register(name, () -> new BlockItem(block.get(),
                    new Item.Properties().tab(tab)));
        } else {
            return ModItems.ITEMS.register(name, () -> new BlockItem(block.get(),
                    new Item.Properties().tab(tab)){
                @Override public int getBurnTime(ItemStack itemStack, @Nullable RecipeType<?> recipeType) {return fuelAmount;}});
        }
    }

    public static void register(IEventBus eventBus) {
        BLOCKS.register(eventBus);
    }
}
