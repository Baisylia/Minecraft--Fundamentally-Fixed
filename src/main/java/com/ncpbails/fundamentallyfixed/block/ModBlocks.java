package com.ncpbails.fundamentallyfixed.block;

import com.ncpbails.fundamentallyfixed.FundamentallyFixed;
import com.ncpbails.fundamentallyfixed.block.custom.*;
//import com.ncpbails.fundamentallyfixed.block.custom.RedstoneDynamoBlock;
import com.ncpbails.fundamentallyfixed.item.ModItems;
import com.ncpbails.fundamentallyfixed.world.feature.tree.OakTreeFixedGrower;
import com.simibubi.create.AllBlocks;
import com.simibubi.create.content.contraptions.components.fan.EncasedFanBlock;
import net.minecraft.core.BlockPos;
import net.minecraft.core.Direction;
import net.minecraft.world.item.*;
import net.minecraft.world.item.context.UseOnContext;
import net.minecraft.world.item.crafting.RecipeType;
import net.minecraft.world.level.BlockGetter;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.Blocks;
import net.minecraft.world.level.block.RotatedPillarBlock;
import net.minecraft.world.level.block.state.BlockBehaviour;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraftforge.common.ToolAction;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.RegistryObject;
import org.jetbrains.annotations.Nullable;

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

    public static final RegistryObject<Block> AETHER_PORTAL = registerBlockWithoutBlockItem("aether_portal",
            AetherPortalBlock::new);

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
