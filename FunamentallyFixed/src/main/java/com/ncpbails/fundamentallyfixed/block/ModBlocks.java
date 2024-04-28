package com.ncpbails.fundamentallyfixed.block;

import com.aetherteam.aether.block.AetherBlocks;
import com.google.common.collect.ImmutableBiMap;
import com.ncpbails.fundamentallyfixed.FundamentallyFixed;
import com.ncpbails.fundamentallyfixed.block.custom.*;
import com.ncpbails.fundamentallyfixed.block.custom.Copper.*;
import com.ncpbails.fundamentallyfixed.items.ModItems;
import com.ncpbails.fundamentallyfixed.world.feature.tree.OakTreeFixedGrower;
import com.ncpbails.modestmining.block.entity.custom.RockBlock;
import galena.oreganized.index.OBlocks;
import net.minecraft.core.BlockPos;
import net.minecraft.core.Direction;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.InteractionResult;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.item.*;
import net.minecraft.world.item.context.UseOnContext;
import net.minecraft.world.item.crafting.RecipeType;
import net.minecraft.world.level.BlockGetter;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.block.*;
import net.minecraft.world.level.block.state.BlockBehaviour;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.material.Material;
import net.minecraft.world.level.material.MaterialColor;
import net.minecraft.world.phys.BlockHitResult;
import net.minecraftforge.common.ToolAction;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.RegistryObject;
import org.infernalstudios.infernalexp.init.IEBlocks;

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

    public static final RegistryObject<Block> CHLOROPHITE_SHEET_BLOCK = registerBlock("chlorophite_sheet_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_CHLOROPHITE = registerBlock("carved_chlorophite",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_CHLOROPHITE = registerBlock("cut_chlorophite",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_CHLOROPHITE = registerBlock("cubed_chlorophite",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_CHLOROPHITE = registerBlock("lined_chlorophite",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_CHLOROPHITE_STAIRS = registerBlock("carved_chlorophite_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_CHLOROPHITE_STAIRS = registerBlock("cut_chlorophite_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_CHLOROPHITE_STAIRS = registerBlock("cubed_chlorophite_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_CHLOROPHITE_STAIRS = registerBlock("lined_chlorophite_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_CHLOROPHITE_SLAB = registerBlock("carved_chlorophite_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_CHLOROPHITE_SLAB = registerBlock("cut_chlorophite_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_CHLOROPHITE_SLAB = registerBlock("cubed_chlorophite_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_CHLOROPHITE_SLAB = registerBlock("lined_chlorophite_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_CHLOROPHITE_WALL = registerBlock("carved_chlorophite_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_CHLOROPHITE_WALL = registerBlock("cut_chlorophite_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_CHLOROPHITE_WALL = registerBlock("cubed_chlorophite_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_CHLOROPHITE_WALL = registerBlock("lined_chlorophite_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> PRISMARITE_SHEET_BLOCK = registerBlock("prismarite_sheet_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_PRISMARITE = registerBlock("carved_prismarite",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_PRISMARITE = registerBlock("cut_prismarite",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_PRISMARITE = registerBlock("cubed_prismarite",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_PRISMARITE = registerBlock("lined_prismarite",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_PRISMARITE_STAIRS = registerBlock("carved_prismarite_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_PRISMARITE_STAIRS = registerBlock("cut_prismarite_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_PRISMARITE_STAIRS = registerBlock("cubed_prismarite_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_PRISMARITE_STAIRS = registerBlock("lined_prismarite_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_PRISMARITE_SLAB = registerBlock("carved_prismarite_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_PRISMARITE_SLAB = registerBlock("cut_prismarite_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_PRISMARITE_SLAB = registerBlock("cubed_prismarite_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_PRISMARITE_SLAB = registerBlock("lined_prismarite_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_PRISMARITE_WALL = registerBlock("carved_prismarite_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_PRISMARITE_WALL = registerBlock("cut_prismarite_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_PRISMARITE_WALL = registerBlock("cubed_prismarite_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_PRISMARITE_WALL = registerBlock("lined_prismarite_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> NETHERITE_SHEET_BLOCK = registerBlock("netherite_sheet_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_NETHERITE = registerBlock("carved_netherite",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_NETHERITE = registerBlock("cut_netherite",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_NETHERITE = registerBlock("cubed_netherite",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_NETHERITE = registerBlock("lined_netherite",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_NETHERITE_STAIRS = registerBlock("carved_netherite_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_NETHERITE_STAIRS = registerBlock("cut_netherite_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_NETHERITE_STAIRS = registerBlock("cubed_netherite_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_NETHERITE_STAIRS = registerBlock("lined_netherite_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_NETHERITE_SLAB = registerBlock("carved_netherite_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_NETHERITE_SLAB = registerBlock("cut_netherite_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_NETHERITE_SLAB = registerBlock("cubed_netherite_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_NETHERITE_SLAB = registerBlock("lined_netherite_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_NETHERITE_WALL = registerBlock("carved_netherite_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_NETHERITE_WALL = registerBlock("cut_netherite_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_NETHERITE_WALL = registerBlock("cubed_netherite_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_NETHERITE_WALL = registerBlock("lined_netherite_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> ELECTRUM_SHEET_BLOCK = registerBlock("electrum_sheet_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_ELECTRUM = registerBlock("carved_electrum",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_ELECTRUM = registerBlock("cut_electrum",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_ELECTRUM = registerBlock("cubed_electrum",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_ELECTRUM = registerBlock("lined_electrum",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_ELECTRUM_STAIRS = registerBlock("carved_electrum_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_ELECTRUM_STAIRS = registerBlock("cut_electrum_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_ELECTRUM_STAIRS = registerBlock("cubed_electrum_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_ELECTRUM_STAIRS = registerBlock("lined_electrum_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_ELECTRUM_SLAB = registerBlock("carved_electrum_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_ELECTRUM_SLAB = registerBlock("cut_electrum_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_ELECTRUM_SLAB = registerBlock("cubed_electrum_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_ELECTRUM_SLAB = registerBlock("lined_electrum_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_ELECTRUM_WALL = registerBlock("carved_electrum_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_ELECTRUM_WALL = registerBlock("cut_electrum_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_ELECTRUM_WALL = registerBlock("cubed_electrum_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_ELECTRUM_WALL = registerBlock("lined_electrum_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> GRAVITITE_BLOCK = registerBlock("gravitite_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> GRAVITITE_SHEET_BLOCK = registerBlock("gravitite_sheet_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_GRAVITITE = registerBlock("carved_gravitite",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_GRAVITITE = registerBlock("cut_gravitite",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_GRAVITITE = registerBlock("cubed_gravitite",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_GRAVITITE = registerBlock("lined_gravitite",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_GRAVITITE_STAIRS = registerBlock("carved_gravitite_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_GRAVITITE_STAIRS = registerBlock("cut_gravitite_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_GRAVITITE_STAIRS = registerBlock("cubed_gravitite_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_GRAVITITE_STAIRS = registerBlock("lined_gravitite_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_GRAVITITE_SLAB = registerBlock("carved_gravitite_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_GRAVITITE_SLAB = registerBlock("cut_gravitite_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_GRAVITITE_SLAB = registerBlock("cubed_gravitite_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_GRAVITITE_SLAB = registerBlock("lined_gravitite_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_GRAVITITE_WALL = registerBlock("carved_gravitite_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_GRAVITITE_WALL = registerBlock("cut_gravitite_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_GRAVITITE_WALL = registerBlock("cubed_gravitite_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_GRAVITITE_WALL = registerBlock("lined_gravitite_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> STOLDUM_BLOCK = registerBlock("stoldum_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> STOLDUM_SHEET_BLOCK = registerBlock("stoldum_sheet_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_STOLDUM = registerBlock("carved_stoldum",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_STOLDUM = registerBlock("cut_stoldum",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_STOLDUM = registerBlock("cubed_stoldum",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_STOLDUM = registerBlock("lined_stoldum",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_STOLDUM_STAIRS = registerBlock("carved_stoldum_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_STOLDUM_STAIRS = registerBlock("cut_stoldum_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_STOLDUM_STAIRS = registerBlock("cubed_stoldum_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_STOLDUM_STAIRS = registerBlock("lined_stoldum_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_STOLDUM_SLAB = registerBlock("carved_stoldum_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_STOLDUM_SLAB = registerBlock("cut_stoldum_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_STOLDUM_SLAB = registerBlock("cubed_stoldum_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_STOLDUM_SLAB = registerBlock("lined_stoldum_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_STOLDUM_WALL = registerBlock("carved_stoldum_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_STOLDUM_WALL = registerBlock("cut_stoldum_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_STOLDUM_WALL = registerBlock("cubed_stoldum_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_STOLDUM_WALL = registerBlock("lined_stoldum_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> MYTHRIL_BLOCK = registerBlock("mythril_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> MYTHRIL_SHEET_BLOCK = registerBlock("mythril_sheet_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_MYTHRIL = registerBlock("carved_mythril",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_MYTHRIL = registerBlock("cut_mythril",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_MYTHRIL = registerBlock("cubed_mythril",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_MYTHRIL = registerBlock("lined_mythril",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_MYTHRIL_STAIRS = registerBlock("carved_mythril_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_MYTHRIL_STAIRS = registerBlock("cut_mythril_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_MYTHRIL_STAIRS = registerBlock("cubed_mythril_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_MYTHRIL_STAIRS = registerBlock("lined_mythril_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_MYTHRIL_SLAB = registerBlock("carved_mythril_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_MYTHRIL_SLAB = registerBlock("cut_mythril_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_MYTHRIL_SLAB = registerBlock("cubed_mythril_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_MYTHRIL_SLAB = registerBlock("lined_mythril_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_MYTHRIL_WALL = registerBlock("carved_mythril_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_MYTHRIL_WALL = registerBlock("cut_mythril_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_MYTHRIL_WALL = registerBlock("cubed_mythril_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_MYTHRIL_WALL = registerBlock("lined_mythril_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> HALLOWED_BLOCK = registerBlock("hallowed_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> HALLOWED_SHEET_BLOCK = registerBlock("hallowed_sheet_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_HALLOWED = registerBlock("carved_hallowed",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_HALLOWED = registerBlock("cut_hallowed",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_HALLOWED = registerBlock("cubed_hallowed",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_HALLOWED = registerBlock("lined_hallowed",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_HALLOWED_STAIRS = registerBlock("carved_hallowed_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_HALLOWED_STAIRS = registerBlock("cut_hallowed_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_HALLOWED_STAIRS = registerBlock("cubed_hallowed_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_HALLOWED_STAIRS = registerBlock("lined_hallowed_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_HALLOWED_SLAB = registerBlock("carved_hallowed_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_HALLOWED_SLAB = registerBlock("cut_hallowed_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_HALLOWED_SLAB = registerBlock("cubed_hallowed_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_HALLOWED_SLAB = registerBlock("lined_hallowed_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_HALLOWED_WALL = registerBlock("carved_hallowed_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_HALLOWED_WALL = registerBlock("cut_hallowed_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_HALLOWED_WALL = registerBlock("cubed_hallowed_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_HALLOWED_WALL = registerBlock("lined_hallowed_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> VOIDENDUM_BLOCK = registerBlock("voidendum_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> VOIDENDUM_SHEET_BLOCK = registerBlock("voidendum_sheet_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_VOIDENDUM = registerBlock("carved_voidendum",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_VOIDENDUM = registerBlock("cut_voidendum",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_VOIDENDUM = registerBlock("cubed_voidendum",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_VOIDENDUM = registerBlock("lined_voidendum",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_VOIDENDUM_STAIRS = registerBlock("carved_voidendum_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_VOIDENDUM_STAIRS = registerBlock("cut_voidendum_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_VOIDENDUM_STAIRS = registerBlock("cubed_voidendum_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_VOIDENDUM_STAIRS = registerBlock("lined_voidendum_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_VOIDENDUM_SLAB = registerBlock("carved_voidendum_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_VOIDENDUM_SLAB = registerBlock("cut_voidendum_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_VOIDENDUM_SLAB = registerBlock("cubed_voidendum_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_VOIDENDUM_SLAB = registerBlock("lined_voidendum_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_VOIDENDUM_WALL = registerBlock("carved_voidendum_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_VOIDENDUM_WALL = registerBlock("cut_voidendum_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_VOIDENDUM_WALL = registerBlock("cubed_voidendum_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_VOIDENDUM_WALL = registerBlock("lined_voidendum_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.NETHERITE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> ALUMINIUM_BLOCK = registerBlock("aluminium_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> ALUMINIUM_SHEET_BLOCK = registerBlock("aluminium_sheet_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_ALUMINIUM = registerBlock("carved_aluminium",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_ALUMINIUM = registerBlock("cut_aluminium",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_ALUMINIUM = registerBlock("cubed_aluminium",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_ALUMINIUM = registerBlock("lined_aluminium",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> RAW_ALUMINIUM_BLOCK = registerBlock("raw_aluminium_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.RAW_COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> ALUMINIUM_ORE = registerBlock("aluminium_ore",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.COPPER_ORE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> DEEPSLATE_ALUMINIUM_ORE = registerBlock("deepslate_aluminium_ore",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.DEEPSLATE_COPPER_ORE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_ALUMINIUM_STAIRS = registerBlock("carved_aluminium_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_ALUMINIUM_STAIRS = registerBlock("cut_aluminium_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_ALUMINIUM_STAIRS = registerBlock("cubed_aluminium_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_ALUMINIUM_STAIRS = registerBlock("lined_aluminium_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_ALUMINIUM_SLAB = registerBlock("carved_aluminium_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_ALUMINIUM_SLAB = registerBlock("cut_aluminium_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_ALUMINIUM_SLAB = registerBlock("cubed_aluminium_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_ALUMINIUM_SLAB = registerBlock("lined_aluminium_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_ALUMINIUM_WALL = registerBlock("carved_aluminium_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_ALUMINIUM_WALL = registerBlock("cut_aluminium_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_ALUMINIUM_WALL = registerBlock("cubed_aluminium_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_ALUMINIUM_WALL = registerBlock("lined_aluminium_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> IRON_SHEET_BLOCK = registerBlock("iron_sheet_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_IRON = registerBlock("carved_iron",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_IRON = registerBlock("cut_iron",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_IRON = registerBlock("cubed_iron",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_IRON_STAIRS = registerBlock("carved_iron_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_IRON_STAIRS = registerBlock("cut_iron_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_IRON_STAIRS = registerBlock("cubed_iron_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_IRON_SLAB = registerBlock("carved_iron_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_IRON_SLAB = registerBlock("cut_iron_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_IRON_SLAB = registerBlock("cubed_iron_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_IRON_WALL = registerBlock("carved_iron_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_IRON_WALL = registerBlock("cut_iron_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_IRON_WALL = registerBlock("cubed_iron_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_IRON_WALL = registerBlock("lined_iron_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_BRONZE = registerBlock("carved_bronze",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_BRONZE = registerBlock("cut_bronze",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_BRONZE = registerBlock("cubed_bronze",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_BRONZE = registerBlock("lined_bronze",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_BRONZE_STAIRS = registerBlock("carved_bronze_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_BRONZE_STAIRS = registerBlock("cut_bronze_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_BRONZE_STAIRS = registerBlock("cubed_bronze_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_BRONZESTAIRS = registerBlock("lined_bronze_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_BRONZE_SLAB = registerBlock("carved_bronze_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_BRONZE_SLAB = registerBlock("cut_bronze_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_BRONZE_SLAB = registerBlock("cubed_bronze_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_BRONZE_SLAB = registerBlock("lined_bronze_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_BRONZE_WALL = registerBlock("carved_bronze_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_BRONZE_WALL = registerBlock("cut_bronze_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_BRONZE_WALL = registerBlock("cubed_bronze_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_BRONZE_WALL = registerBlock("lined_bronze_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.COPPER_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LEAD_SHEET_BLOCK = registerBlock("lead_sheet_block",
            () -> new Block(BlockBehaviour.Properties.copy(OBlocks.LEAD_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_LEAD = registerBlock("carved_lead",
            () -> new Block(BlockBehaviour.Properties.copy(OBlocks.LEAD_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_LEAD = registerBlock("cut_lead",
            () -> new Block(BlockBehaviour.Properties.copy(OBlocks.LEAD_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_LEAD = registerBlock("cubed_lead",
            () -> new Block(BlockBehaviour.Properties.copy(OBlocks.LEAD_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_LEAD = registerBlock("lined_lead",
            () -> new Block(BlockBehaviour.Properties.copy(OBlocks.LEAD_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_LEAD_STAIRS = registerBlock("carved_lead_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(OBlocks.LEAD_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_LEAD_STAIRS = registerBlock("cut_lead_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(OBlocks.LEAD_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_LEAD_STAIRS = registerBlock("cubed_lead_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(OBlocks.LEAD_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_LEAD_STAIRS = registerBlock("lined_lead_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(OBlocks.LEAD_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_LEAD_SLAB = registerBlock("carved_lead_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(OBlocks.LEAD_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_LEAD_SLAB = registerBlock("cut_lead_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(OBlocks.LEAD_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_LEAD_SLAB = registerBlock("cubed_lead_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(OBlocks.LEAD_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_LEAD_SLAB = registerBlock("lined_lead_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(OBlocks.LEAD_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_LEAD_WALL = registerBlock("carved_lead_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(OBlocks.LEAD_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_LEAD_WALL = registerBlock("cut_lead_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(OBlocks.LEAD_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_LEAD_WALL = registerBlock("cubed_lead_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(OBlocks.LEAD_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_LEAD_WALL = registerBlock("lined_lead_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(OBlocks.LEAD_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_STEEL = registerBlock("cut_steel",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_STEEL = registerBlock("cubed_steel",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_STEEL = registerBlock("lined_steel",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_STEEL_STAIRS = registerBlock("cut_steel_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_STEEL_STAIRS = registerBlock("cubed_steel_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_STEEL_STAIRS = registerBlock("lined_steel_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_STEEL_SLAB = registerBlock("cut_steel_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_STEEL_SLAB = registerBlock("cubed_steel_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_STEEL_SLAB = registerBlock("lined_steel_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_STEEL_WALL = registerBlock("carved_steel_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_STEEL_WALL = registerBlock("cut_steel_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_STEEL_WALL = registerBlock("cubed_steel_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_STEEL_WALL = registerBlock("lined_steel_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.IRON_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> GOLD_SHEET_BLOCK = registerBlock("gold_sheet_block",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.GOLD_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_GOLD = registerBlock("carved_gold",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.GOLD_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_GOLD = registerBlock("cut_gold",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.GOLD_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_GOLD = registerBlock("cubed_gold",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.GOLD_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_GOLD = registerBlock("lined_gold",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.GOLD_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_GOLD_STAIRS = registerBlock("carved_gold_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.GOLD_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_GOLD_STAIRS = registerBlock("cut_gold_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.GOLD_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_GOLD_STAIRS = registerBlock("cubed_gold_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.GOLD_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_GOLD_STAIRS = registerBlock("lined_gold_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.GOLD_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_GOLD_SLAB = registerBlock("carved_gold_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.GOLD_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_GOLD_SLAB = registerBlock("cut_gold_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.GOLD_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_GOLD_SLAB = registerBlock("cubed_gold_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.GOLD_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_GOLD_SLAB = registerBlock("lined_gold_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(Blocks.GOLD_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_GOLD_WALL = registerBlock("carved_gold_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.GOLD_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_GOLD_WALL = registerBlock("cut_gold_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.GOLD_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_GOLD_WALL = registerBlock("cubed_gold_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.GOLD_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_GOLD_WALL = registerBlock("lined_gold_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(Blocks.GOLD_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> SILVER_SHEET_BLOCK = registerBlock("silver_sheet_block",
            () -> new Block(BlockBehaviour.Properties.copy(OBlocks.SILVER_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_SILVER = registerBlock("carved_silver",
            () -> new Block(BlockBehaviour.Properties.copy(OBlocks.SILVER_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_SILVER = registerBlock("cut_silver",
            () -> new Block(BlockBehaviour.Properties.copy(OBlocks.SILVER_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_SILVER = registerBlock("cubed_silver",
            () -> new Block(BlockBehaviour.Properties.copy(OBlocks.SILVER_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_SILVER = registerBlock("lined_silver",
            () -> new Block(BlockBehaviour.Properties.copy(OBlocks.SILVER_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_SILVER_STAIRS = registerBlock("carved_silver_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(OBlocks.SILVER_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_SILVER_STAIRS = registerBlock("cut_silver_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(OBlocks.SILVER_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_SILVER_STAIRS = registerBlock("cubed_silver_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(OBlocks.SILVER_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_SILVER_STAIRS = registerBlock("lined_silver_stairs",
            () -> new StairBlock(() -> Blocks.BLACKSTONE_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(OBlocks.SILVER_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_SILVER_SLAB = registerBlock("carved_silver_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(OBlocks.SILVER_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_SILVER_SLAB = registerBlock("cut_silver_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(OBlocks.SILVER_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_SILVER_SLAB = registerBlock("cubed_silver_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(OBlocks.SILVER_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_SILVER_SLAB = registerBlock("lined_silver_slab",
            () -> new SlabBlock(BlockBehaviour.Properties.copy(OBlocks.SILVER_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_SILVER_WALL = registerBlock("carved_silver_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(OBlocks.SILVER_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_SILVER_WALL = registerBlock("cut_silver_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(OBlocks.SILVER_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_SILVER_WALL = registerBlock("cubed_silver_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(OBlocks.SILVER_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_SILVER_WALL = registerBlock("lined_silver_wall",
            () -> new WallBlock(BlockBehaviour.Properties.copy(OBlocks.SILVER_BLOCK.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);



    public static final RegistryObject<Block> LINED_COPPER_WALL = registerBlock("lined_copper_wall",
            () -> new ModWeatheringCopperWallBlock(ModWeatheringCopper.WeatherState.UNAFFECTED,
                    BlockBehaviour.Properties.copy(Blocks.CUT_COPPER), false) { @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                    canAxe = false; waxedVersion = ModBlocks.WAXED_LINED_COPPER_WALL.get(); axedVersion = ModBlocks.LINED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_EXPOSED_COPPER_WALL = registerBlock("lined_exposed_copper_wall",
            () -> new ModWeatheringCopperWallBlock(ModWeatheringCopper.WeatherState.EXPOSED,
                    BlockBehaviour.Properties.copy(Blocks.EXPOSED_CUT_COPPER), true){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                waxedVersion = ModBlocks.WAXED_LINED_EXPOSED_COPPER_WALL.get(); axedVersion = ModBlocks.LINED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_WEATHERED_COPPER_WALL = registerBlock("lined_weathered_copper_wall",
            () -> new ModWeatheringCopperWallBlock(ModWeatheringCopper.WeatherState.WEATHERED,
                    BlockBehaviour.Properties.copy(Blocks.WEATHERED_CUT_COPPER), true){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                waxedVersion = ModBlocks.WAXED_LINED_WEATHERED_COPPER_WALL.get(); axedVersion = ModBlocks.LINED_EXPOSED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> LINED_OXIDIZED_COPPER_WALL = registerBlock("lined_oxidized_copper_wall",
            () -> new ModWeatheringCopperWallBlock(ModWeatheringCopper.WeatherState.OXIDIZED,
                    BlockBehaviour.Properties.copy(Blocks.OXIDIZED_CUT_COPPER), true){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                waxedVersion = ModBlocks.WAXED_LINED_OXIDIZED_COPPER_WALL.get(); axedVersion = ModBlocks.LINED_WEATHERED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);


    public static final RegistryObject<Block> CUBED_COPPER_WALL = registerBlock("cubed_copper_wall",
            () -> new ModWeatheringCopperWallBlock(ModWeatheringCopper.WeatherState.UNAFFECTED,
                    BlockBehaviour.Properties.copy(Blocks.CUT_COPPER), false){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                canAxe = false; waxedVersion = ModBlocks.WAXED_CUBED_COPPER_WALL.get(); axedVersion = ModBlocks.CUBED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_EXPOSED_COPPER_WALL = registerBlock("cubed_exposed_copper_wall",
            () -> new ModWeatheringCopperWallBlock(ModWeatheringCopper.WeatherState.EXPOSED,
                    BlockBehaviour.Properties.copy(Blocks.EXPOSED_CUT_COPPER), true){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                waxedVersion = ModBlocks.WAXED_CUBED_EXPOSED_COPPER_WALL.get(); axedVersion = ModBlocks.CUBED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_WEATHERED_COPPER_WALL = registerBlock("cubed_weathered_copper_wall",
            () -> new ModWeatheringCopperWallBlock(ModWeatheringCopper.WeatherState.WEATHERED,
                    BlockBehaviour.Properties.copy(Blocks.WEATHERED_CUT_COPPER), true){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                waxedVersion = ModBlocks.WAXED_CUBED_WEATHERED_COPPER_WALL.get(); axedVersion = ModBlocks.CUBED_EXPOSED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUBED_OXIDIZED_COPPER_WALL = registerBlock("cubed_oxidized_copper_wall",
            () -> new ModWeatheringCopperWallBlock(ModWeatheringCopper.WeatherState.OXIDIZED,
                    BlockBehaviour.Properties.copy(Blocks.OXIDIZED_CUT_COPPER), true){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                waxedVersion = ModBlocks.WAXED_CUBED_OXIDIZED_COPPER_WALL.get(); axedVersion = ModBlocks.CUBED_WEATHERED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);


    public static final RegistryObject<Block> CUT_COPPER_WALL = registerBlock("cut_copper_wall",
            () -> new ModWeatheringCopperWallBlock(ModWeatheringCopper.WeatherState.UNAFFECTED,
                    BlockBehaviour.Properties.copy(Blocks.CUT_COPPER), false){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                canAxe = false; waxedVersion = ModBlocks.WAXED_CUT_COPPER_WALL.get(); axedVersion = ModBlocks.CUT_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_EXPOSED_COPPER_WALL = registerBlock("cut_exposed_copper_wall",
            () -> new ModWeatheringCopperWallBlock(ModWeatheringCopper.WeatherState.EXPOSED,
                    BlockBehaviour.Properties.copy(Blocks.EXPOSED_CUT_COPPER), true){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                waxedVersion = ModBlocks.WAXED_CUT_EXPOSED_COPPER_WALL.get(); axedVersion = ModBlocks.CUT_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_WEATHERED_COPPER_WALL = registerBlock("cut_weathered_copper_wall",
            () -> new ModWeatheringCopperWallBlock(ModWeatheringCopper.WeatherState.WEATHERED,
                    BlockBehaviour.Properties.copy(Blocks.WEATHERED_CUT_COPPER), true){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                waxedVersion = ModBlocks.WAXED_CUT_WEATHERED_COPPER_WALL.get(); axedVersion = ModBlocks.CUT_EXPOSED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CUT_OXIDIZED_COPPER_WALL = registerBlock("cut_oxidized_copper_wall",
            () -> new ModWeatheringCopperWallBlock(ModWeatheringCopper.WeatherState.OXIDIZED,
                    BlockBehaviour.Properties.copy(Blocks.OXIDIZED_CUT_COPPER), true){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                waxedVersion = ModBlocks.WAXED_CUT_OXIDIZED_COPPER_WALL.get(); axedVersion = ModBlocks.CUT_WEATHERED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);


    public static final RegistryObject<Block> CARVED_COPPER_WALL = registerBlock("carved_copper_wall",
            () -> new ModWeatheringCopperWallBlock(ModWeatheringCopper.WeatherState.UNAFFECTED,
                    BlockBehaviour.Properties.copy(Blocks.CUT_COPPER), false){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                canAxe = false; waxedVersion = ModBlocks.WAXED_CARVED_COPPER_WALL.get(); axedVersion = ModBlocks.CARVED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_EXPOSED_COPPER_WALL = registerBlock("carved_exposed_copper_wall",
            () -> new ModWeatheringCopperWallBlock(ModWeatheringCopper.WeatherState.EXPOSED,
                    BlockBehaviour.Properties.copy(Blocks.EXPOSED_CUT_COPPER), true){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                waxedVersion = ModBlocks.WAXED_CARVED_EXPOSED_COPPER_WALL.get(); axedVersion = ModBlocks.CARVED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_WEATHERED_COPPER_WALL = registerBlock("carved_weathered_copper_wall",
            () -> new ModWeatheringCopperWallBlock(ModWeatheringCopper.WeatherState.WEATHERED,
                    BlockBehaviour.Properties.copy(Blocks.WEATHERED_CUT_COPPER), true){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                waxedVersion = ModBlocks.WAXED_CARVED_WEATHERED_COPPER_WALL.get(); axedVersion = ModBlocks.CARVED_EXPOSED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_OXIDIZED_COPPER_WALL = registerBlock("carved_oxidized_copper_wall",
            () -> new ModWeatheringCopperWallBlock(ModWeatheringCopper.WeatherState.OXIDIZED,
                    BlockBehaviour.Properties.copy(Blocks.OXIDIZED_CUT_COPPER), true){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                waxedVersion = ModBlocks.WAXED_CARVED_OXIDIZED_COPPER_WALL.get(); axedVersion = ModBlocks.CARVED_WEATHERED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);


    public static final RegistryObject<Block> CARVED_COPPER_STAIRS = registerBlock("carved_copper_stairs",
            () -> new ModWeatheringCopperStairBlock(ModWeatheringCopper.WeatherState.UNAFFECTED,
                    Blocks.CUT_COPPER_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.CUT_COPPER), false){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                canAxe = false; waxedVersion = ModBlocks.WAXED_CARVED_COPPER_STAIRS.get(); axedVersion = ModBlocks.CARVED_COPPER_STAIRS.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_EXPOSED_COPPER_STAIRS = registerBlock("carved_exposed_copper_stairs",
            () -> new ModWeatheringCopperStairBlock(ModWeatheringCopper.WeatherState.EXPOSED,
                    Blocks.EXPOSED_CUT_COPPER_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.EXPOSED_CUT_COPPER), true){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                waxedVersion = ModBlocks.WAXED_CARVED_EXPOSED_COPPER_STAIRS.get(); axedVersion = ModBlocks.CARVED_COPPER_STAIRS.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_WEATHERED_COPPER_STAIRS = registerBlock("carved_weathered_copper_stairs",
            () -> new ModWeatheringCopperStairBlock(ModWeatheringCopper.WeatherState.WEATHERED,
                    Blocks.WEATHERED_CUT_COPPER_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.WEATHERED_CUT_COPPER), true){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                waxedVersion = ModBlocks.WAXED_CARVED_WEATHERED_COPPER_STAIRS.get(); axedVersion = ModBlocks.CARVED_EXPOSED_COPPER_STAIRS.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_OXIDIZED_COPPER_STAIRS = registerBlock("carved_oxidized_copper_stairs",
            () -> new ModWeatheringCopperStairBlock(ModWeatheringCopper.WeatherState.OXIDIZED,
                    Blocks.OXIDIZED_CUT_COPPER_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.OXIDIZED_CUT_COPPER), true){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                waxedVersion = ModBlocks.WAXED_CARVED_OXIDIZED_COPPER_STAIRS.get(); axedVersion = ModBlocks.CARVED_WEATHERED_COPPER_STAIRS.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);


    public static final RegistryObject<Block> CARVED_COPPER_SLAB = registerBlock("carved_copper_slab",
            () -> new ModWeatheringCopperSlabBlock(ModWeatheringCopper.WeatherState.UNAFFECTED,
                    BlockBehaviour.Properties.copy(Blocks.CUT_COPPER), false){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                canAxe = false; waxedVersion = ModBlocks.WAXED_CARVED_COPPER_SLAB.get(); axedVersion = ModBlocks.CARVED_COPPER_SLAB.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_EXPOSED_COPPER_SLAB = registerBlock("carved_exposed_copper_slab",
            () -> new ModWeatheringCopperSlabBlock(ModWeatheringCopper.WeatherState.EXPOSED,
                    BlockBehaviour.Properties.copy(Blocks.EXPOSED_CUT_COPPER), true){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                waxedVersion = ModBlocks.WAXED_CARVED_EXPOSED_COPPER_SLAB.get(); axedVersion = ModBlocks.CARVED_COPPER_SLAB.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_WEATHERED_COPPER_SLAB = registerBlock("carved_weathered_copper_slab",
            () -> new ModWeatheringCopperSlabBlock(ModWeatheringCopper.WeatherState.WEATHERED,
                    BlockBehaviour.Properties.copy(Blocks.WEATHERED_CUT_COPPER), true){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                waxedVersion = ModBlocks.WAXED_CARVED_WEATHERED_COPPER_SLAB.get(); axedVersion = ModBlocks.CARVED_EXPOSED_COPPER_SLAB.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> CARVED_OXIDIZED_COPPER_SLAB = registerBlock("carved_oxidized_copper_slab",
            () -> new ModWeatheringCopperSlabBlock(ModWeatheringCopper.WeatherState.OXIDIZED,
                    BlockBehaviour.Properties.copy(Blocks.OXIDIZED_CUT_COPPER), true){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                waxedVersion = ModBlocks.WAXED_CARVED_OXIDIZED_COPPER_SLAB.get(); axedVersion = ModBlocks.CARVED_WEATHERED_COPPER_SLAB.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);




    public static final RegistryObject<Block> WAXED_LINED_COPPER_WALL = registerBlock("waxed_lined_copper_wall",
            () -> new ModCopperWallBlock(BlockBehaviour.Properties.copy(Blocks.CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.LINED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> WAXED_LINED_EXPOSED_COPPER_WALL = registerBlock("waxed_lined_exposed_copper_wall",
            () -> new ModCopperWallBlock(BlockBehaviour.Properties.copy(Blocks.EXPOSED_CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.LINED_EXPOSED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> WAXED_LINED_WEATHERED_COPPER_WALL = registerBlock("waxed_lined_weathered_copper_wall",
            () -> new ModCopperWallBlock(BlockBehaviour.Properties.copy(Blocks.WEATHERED_CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.LINED_WEATHERED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> WAXED_LINED_OXIDIZED_COPPER_WALL = registerBlock("waxed_lined_oxidized_copper_wall",
            () -> new ModCopperWallBlock(BlockBehaviour.Properties.copy(Blocks.OXIDIZED_CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.LINED_OXIDIZED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);


    public static final RegistryObject<Block> WAXED_CUBED_COPPER_WALL = registerBlock("waxed_cubed_copper_wall",
            () -> new ModCopperWallBlock(BlockBehaviour.Properties.copy(Blocks.CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.CUBED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> WAXED_CUBED_EXPOSED_COPPER_WALL = registerBlock("waxed_cubed_exposed_copper_wall",
            () -> new ModCopperWallBlock(BlockBehaviour.Properties.copy(Blocks.EXPOSED_CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.CUBED_EXPOSED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> WAXED_CUBED_WEATHERED_COPPER_WALL = registerBlock("waxed_cubed_weathered_copper_wall",
            () -> new ModCopperWallBlock(BlockBehaviour.Properties.copy(Blocks.WEATHERED_CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.CUBED_WEATHERED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> WAXED_CUBED_OXIDIZED_COPPER_WALL = registerBlock("waxed_cubed_oxidized_copper_wall",
            () -> new ModCopperWallBlock(BlockBehaviour.Properties.copy(Blocks.OXIDIZED_CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.CUBED_OXIDIZED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);


    public static final RegistryObject<Block> WAXED_CUT_COPPER_WALL = registerBlock("waxed_cut_copper_wall",
            () -> new ModCopperWallBlock(BlockBehaviour.Properties.copy(Blocks.CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.CUT_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> WAXED_CUT_EXPOSED_COPPER_WALL = registerBlock("waxed_cut_exposed_copper_wall",
            () -> new ModCopperWallBlock(BlockBehaviour.Properties.copy(Blocks.EXPOSED_CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.CUT_EXPOSED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> WAXED_CUT_WEATHERED_COPPER_WALL = registerBlock("waxed_cut_weathered_copper_wall",
            () -> new ModCopperWallBlock(BlockBehaviour.Properties.copy(Blocks.WEATHERED_CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.CUT_WEATHERED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> WAXED_CUT_OXIDIZED_COPPER_WALL = registerBlock("waxed_cut_oxidized_copper_wall",
            () -> new ModCopperWallBlock(BlockBehaviour.Properties.copy(Blocks.OXIDIZED_CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.CUT_OXIDIZED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);


    public static final RegistryObject<Block> WAXED_CARVED_COPPER_WALL = registerBlock("waxed_carved_copper_wall",
            () -> new ModCopperWallBlock(BlockBehaviour.Properties.copy(Blocks.CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.CARVED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> WAXED_CARVED_EXPOSED_COPPER_WALL = registerBlock("waxed_carved_exposed_copper_wall",
            () -> new ModCopperWallBlock(BlockBehaviour.Properties.copy(Blocks.EXPOSED_CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.CARVED_EXPOSED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> WAXED_CARVED_WEATHERED_COPPER_WALL = registerBlock("waxed_carved_weathered_copper_wall",
            () -> new ModCopperWallBlock(BlockBehaviour.Properties.copy(Blocks.WEATHERED_CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.CARVED_WEATHERED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> WAXED_CARVED_OXIDIZED_COPPER_WALL = registerBlock("waxed_carved_oxidized_copper_wall",
            () -> new ModCopperWallBlock(BlockBehaviour.Properties.copy(Blocks.OXIDIZED_CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.CARVED_OXIDIZED_COPPER_WALL.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);


    public static final RegistryObject<Block> WAXED_CARVED_COPPER_STAIRS = registerBlock("waxed_carved_copper_stairs",
            () -> new ModCopperStairBlock(Blocks.CUT_COPPER_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.CARVED_COPPER_STAIRS.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> WAXED_CARVED_EXPOSED_COPPER_STAIRS = registerBlock("waxed_carved_exposed_copper_stairs",
            () -> new ModCopperStairBlock(Blocks.EXPOSED_CUT_COPPER_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.EXPOSED_CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.CARVED_EXPOSED_COPPER_STAIRS.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> WAXED_CARVED_WEATHERED_COPPER_STAIRS = registerBlock("waxed_carved_weathered_copper_stairs",
            () -> new ModCopperStairBlock(Blocks.WEATHERED_CUT_COPPER_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.WEATHERED_CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.CARVED_WEATHERED_COPPER_STAIRS.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> WAXED_CARVED_OXIDIZED_COPPER_STAIRS = registerBlock("waxed_carved_oxidized_copper_stairs",
            () -> new ModCopperStairBlock(Blocks.OXIDIZED_CUT_COPPER_STAIRS.defaultBlockState(),
                    BlockBehaviour.Properties.copy(Blocks.OXIDIZED_CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.CARVED_OXIDIZED_COPPER_STAIRS.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);


    public static final RegistryObject<Block> WAXED_CARVED_COPPER_SLAB = registerBlock("waxed_carved_copper_slab",
            () -> new ModCopperSlabBlock(BlockBehaviour.Properties.copy(Blocks.CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.CARVED_COPPER_SLAB.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> WAXED_CARVED_EXPOSED_COPPER_SLAB = registerBlock("waxed_carved_exposed_copper_slab",
            () -> new ModCopperSlabBlock(BlockBehaviour.Properties.copy(Blocks.EXPOSED_CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.CARVED_EXPOSED_COPPER_SLAB.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> WAXED_CARVED_WEATHERED_COPPER_SLAB = registerBlock("waxed_carved_weathered_copper_slab",
            () -> new ModCopperSlabBlock(BlockBehaviour.Properties.copy(Blocks.WEATHERED_CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.CARVED_WEATHERED_COPPER_SLAB.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> WAXED_CARVED_OXIDIZED_COPPER_SLAB = registerBlock("waxed_carved_oxidized_copper_slab",
            () -> new ModCopperSlabBlock(BlockBehaviour.Properties.copy(Blocks.OXIDIZED_CUT_COPPER)){ @Override public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
                axedVersion = ModBlocks.CARVED_OXIDIZED_COPPER_SLAB.get(); useOnBlock(state, worldIn, pos, player, handIn, hit); return InteractionResult.PASS; }
            }, CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);







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


    public static final RegistryObject<Block> STURDY_DEEPSLATE = registerBlock("sturdy_deepslate",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.DEEPSLATE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> STURDY_DRIPSTONE = registerBlock("sturdy_dripstone",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.DRIPSTONE_BLOCK)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> STURDY_BLACKSTONE = registerBlock("sturdy_blackstone",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.BLACKSTONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> STURDY_ALTISITE = registerBlock("sturdy_altisite",
            () -> new Block(BlockBehaviour.Properties.copy(AetherBlocks.HOLYSTONE.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> STURDY_PRISMARINE = registerBlock("sturdy_prismarine",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.PRISMARINE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> STURDY_SOUL_STONE = registerBlock("sturdy_soul_stone",
            () -> new Block(BlockBehaviour.Properties.copy(IEBlocks.SOUL_STONE.get())), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> STURDY_SANDSTONE = registerBlock("sturdy_sandstone",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.SANDSTONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> STURDY_RED_SANDSTONE = registerBlock("sturdy_red_sandstone",
            () -> new Block(BlockBehaviour.Properties.copy(Blocks.RED_SANDSTONE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);


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
            () -> new RotatedPillarBlock(BlockBehaviour.Properties.copy(Blocks.DEEPSLATE)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

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


    //Buttons and Plates
    public static final RegistryObject<Block> PHYTON_BUTTON = registerBlock("phyton_button", () -> new
            StoneButtonBlock(BlockBehaviour.Properties.copy(Blocks.STONE_BUTTON)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> PHYTON_PRESSURE_PLATE = registerBlock("phyton_pressure_plate", () -> new
            PressurePlateBlock(PressurePlateBlock.Sensitivity.MOBS, BlockBehaviour.Properties.copy(Blocks.STONE_BUTTON)),
            CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> DRIPSTONE_BUTTON = registerBlock("dripstone_button", () -> new
            StoneButtonBlock(BlockBehaviour.Properties.copy(Blocks.STONE_BUTTON)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> DRIPSTONE_PRESSURE_PLATE = registerBlock("dripstone_pressure_plate", () -> new
                    PressurePlateBlock(PressurePlateBlock.Sensitivity.MOBS, BlockBehaviour.Properties.copy(Blocks.STONE_BUTTON)),
            CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> SANDSTONE_BUTTON = registerBlock("sandstone_button", () -> new
            StoneButtonBlock(BlockBehaviour.Properties.copy(Blocks.STONE_BUTTON)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> SANDSTONE_PRESSURE_PLATE = registerBlock("sandstone_pressure_plate", () -> new
                    PressurePlateBlock(PressurePlateBlock.Sensitivity.MOBS, BlockBehaviour.Properties.copy(Blocks.STONE_BUTTON)),
            CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> RED_SANDSTONE_BUTTON = registerBlock("red_sandstone_button", () -> new
            StoneButtonBlock(BlockBehaviour.Properties.copy(Blocks.STONE_BUTTON)), CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);

    public static final RegistryObject<Block> RED_SANDSTONE_PRESSURE_PLATE = registerBlock("red_sandstone_pressure_plate", () -> new
                    PressurePlateBlock(PressurePlateBlock.Sensitivity.MOBS, BlockBehaviour.Properties.copy(Blocks.STONE_BUTTON)),
            CreativeModeTab.TAB_BUILDING_BLOCKS, false, 0);


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
