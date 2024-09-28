package com.ncpbails.fundamentallyfixed.block.custom;

import com.ncpbails.fundamentallyfixed.entity.ModEntityTypes;
import com.ncpbails.fundamentallyfixed.entity.custom.SweptGravisand;
import net.minecraft.core.BlockPos;
import net.minecraft.core.Direction;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.util.RandomSource;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.LevelReader;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.Blocks;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.material.Material;

import javax.annotation.Nonnull;

public class SweptGravisandBlock extends Block{

    public SweptGravisandBlock(Properties properties) {
        super(properties);
    }

    public void onPlace(@Nonnull BlockState state, @Nonnull Level world, @Nonnull BlockPos pos, @Nonnull BlockState oldState, boolean isMoving) {
        this.checkRedstone(world, pos);
    }

    public void neighborChanged(@Nonnull BlockState state, @Nonnull Level worldIn, @Nonnull BlockPos pos, @Nonnull Block blockIn, @Nonnull BlockPos fromPos, boolean isMoving) {
        this.checkRedstone(worldIn, pos);
    }

    private void checkRedstone(Level worldIn, BlockPos pos) {
        boolean powered = worldIn.hasNeighborSignal(pos);
        if (powered) {
            worldIn.scheduleTick(pos, this, 2);
        }

    }

    public boolean hasAnalogOutputSignal(@Nonnull BlockState state) {
        return true;
    }

    public int getAnalogOutputSignal(@Nonnull BlockState blockState, @Nonnull Level worldIn, @Nonnull BlockPos pos) {
        return 15;
    }

    public void tick(@Nonnull BlockState state, ServerLevel worldIn, @Nonnull BlockPos pos, @Nonnull RandomSource rand) {
        if (!worldIn.isClientSide && this.checkFallable(state, worldIn, pos)) {
            Direction[] var5 = Direction.values();
            int var6 = var5.length;

            for(int var7 = 0; var7 < var6; ++var7) {
                Direction face = var5[var7];
                BlockPos offPos = pos.relative(face);
                BlockState offState = worldIn.getBlockState(offPos);
                if (offState.getBlock() == this) {
                    worldIn.scheduleTick(offPos, this, 2);
                }
            }
        }

    }

    private boolean checkFallable(BlockState state, Level worldIn, BlockPos pos) {
        if (!worldIn.isClientSide) {
            return this.tryFall(state, worldIn, pos, Direction.DOWN) ? true : this.tryFall(state, worldIn, pos, Direction.UP);
        } else {
            return false;
        }
    }

    private boolean tryFall(BlockState state, Level worldIn, BlockPos pos, Direction facing) {
        BlockPos target = pos.relative(facing);
        if ((worldIn.isEmptyBlock(target) || canFallThrough(worldIn, pos, worldIn.getBlockState(target))) && worldIn.isInWorldBounds(pos)) {
            SweptGravisand entity = new SweptGravisand(ModEntityTypes.SWEPT_GRAVISAND.get(), worldIn);
            worldIn.setBlock(pos, state.getFluidState().createLegacyBlock(), 3);
            worldIn.addFreshEntity(entity);
            return true;
        } else {
            return false;
        }
    }

    public static boolean canFallThrough(LevelReader world, BlockPos pos, BlockState state) {
        Block block = state.getBlock();
        Material material = state.getMaterial();
        return state.isAir() || block == Blocks.FIRE || material.isLiquid() || material.isReplaceable();
    }
}
