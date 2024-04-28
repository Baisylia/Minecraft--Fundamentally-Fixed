package com.ncpbails.fundamentallyfixed.block.custom.Copper;

import com.google.common.base.Suppliers;
import com.google.common.collect.BiMap;
import com.google.common.collect.ImmutableBiMap;
import com.ncpbails.fundamentallyfixed.block.ModBlocks;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.Blocks;
import net.minecraft.world.level.block.ChangeOverTimeBlock;
import net.minecraft.world.level.block.state.BlockState;

import java.util.Optional;
import java.util.function.Supplier;

public interface ModWeatheringCopper extends ChangeOverTimeBlock<ModWeatheringCopper.WeatherState> {
    Supplier<BiMap<Block, Block>> NEXT_BY_BLOCK = Suppliers.memoize(() -> {
        return ImmutableBiMap.<Block, Block>builder()
                .put(ModBlocks.CUBED_COPPER_WALL.get(), ModBlocks.CUBED_EXPOSED_COPPER_WALL.get())
                .put(ModBlocks.CUBED_EXPOSED_COPPER_WALL.get(), ModBlocks.CUBED_WEATHERED_COPPER_WALL.get())
                .put(ModBlocks.CUBED_WEATHERED_COPPER_WALL.get(), ModBlocks.CUBED_OXIDIZED_COPPER_WALL.get())
                .put(ModBlocks.CUT_COPPER_WALL.get(), ModBlocks.CUT_EXPOSED_COPPER_WALL.get())
                .put(ModBlocks.CUT_EXPOSED_COPPER_WALL.get(), ModBlocks.CUT_WEATHERED_COPPER_WALL.get())
                .put(ModBlocks.CUT_WEATHERED_COPPER_WALL.get(), ModBlocks.CUT_OXIDIZED_COPPER_WALL.get())
                .put(ModBlocks.LINED_COPPER_WALL.get(), ModBlocks.LINED_EXPOSED_COPPER_WALL.get())
                .put(ModBlocks.LINED_EXPOSED_COPPER_WALL.get(), ModBlocks.LINED_WEATHERED_COPPER_WALL.get())
                .put(ModBlocks.LINED_WEATHERED_COPPER_WALL.get(), ModBlocks.LINED_OXIDIZED_COPPER_WALL.get())
                .put(ModBlocks.CARVED_COPPER_WALL.get(), ModBlocks.CARVED_EXPOSED_COPPER_WALL.get())
                .put(ModBlocks.CARVED_EXPOSED_COPPER_WALL.get(), ModBlocks.CARVED_WEATHERED_COPPER_WALL.get())
                .put(ModBlocks.CARVED_WEATHERED_COPPER_WALL.get(), ModBlocks.CARVED_OXIDIZED_COPPER_WALL.get())
                .put(ModBlocks.CARVED_COPPER_STAIRS.get(), ModBlocks.CARVED_EXPOSED_COPPER_STAIRS.get())
                .put(ModBlocks.CARVED_EXPOSED_COPPER_STAIRS.get(), ModBlocks.CARVED_WEATHERED_COPPER_STAIRS.get())
                .put(ModBlocks.CARVED_WEATHERED_COPPER_STAIRS.get(), ModBlocks.CARVED_OXIDIZED_COPPER_STAIRS.get())
                .put(ModBlocks.CARVED_COPPER_SLAB.get(), ModBlocks.CARVED_EXPOSED_COPPER_SLAB.get())
                .put(ModBlocks.CARVED_EXPOSED_COPPER_SLAB.get(), ModBlocks.CARVED_WEATHERED_COPPER_SLAB.get())
                .put(ModBlocks.CARVED_WEATHERED_COPPER_SLAB.get(), ModBlocks.CARVED_OXIDIZED_COPPER_SLAB.get())
                .put(Blocks.WEATHERED_CUT_COPPER_STAIRS, Blocks.OXIDIZED_CUT_COPPER_STAIRS).build();
    });
    Supplier<BiMap<Block, Block>> PREVIOUS_BY_BLOCK = Suppliers.memoize(() -> {
        return NEXT_BY_BLOCK.get().inverse();
    });

    static Optional<Block> getPrevious(Block p_154891_) {
        return Optional.ofNullable(PREVIOUS_BY_BLOCK.get().get(p_154891_));
    }

    static Block getFirst(Block p_154898_) {
        Block block = p_154898_;

        for(Block block1 = PREVIOUS_BY_BLOCK.get().get(p_154898_); block1 != null; block1 = PREVIOUS_BY_BLOCK.get().get(block1)) {
            block = block1;
        }

        return block;
    }

    static Optional<BlockState> getPrevious(BlockState p_154900_) {
        return getPrevious(p_154900_.getBlock()).map((p_154903_) -> {
            return p_154903_.withPropertiesOf(p_154900_);
        });
    }

    static Optional<Block> getNext(Block p_154905_) {
        return Optional.ofNullable(NEXT_BY_BLOCK.get().get(p_154905_));
    }

    static BlockState getFirst(BlockState p_154907_) {
        return getFirst(p_154907_.getBlock()).withPropertiesOf(p_154907_);
    }

    default Optional<BlockState> getNext(BlockState p_154893_) {
        return getNext(p_154893_.getBlock()).map((p_154896_) -> {
            return p_154896_.withPropertiesOf(p_154893_);
        });
    }

    default float getChanceModifier() {
        return this.getAge() == ModWeatheringCopper.WeatherState.UNAFFECTED ? 0.75F : 1.0F;
    }

    public static enum WeatherState {
        UNAFFECTED,
        EXPOSED,
        WEATHERED,
        OXIDIZED;
    }
}
