package com.ncpbails.fundamentallyfixed.block.custom;

import net.minecraft.core.BlockPos;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.util.RandomSource;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.block.state.StateDefinition;
import net.minecraft.world.level.block.state.properties.BlockStateProperties;
import net.minecraft.world.level.block.state.properties.BooleanProperty;
import net.minecraft.world.level.gameevent.GameEvent;
import net.minecraft.world.phys.BlockHitResult;

import java.util.Random;

public class DualCropBlock extends FixedCropBlock {
    public static final BooleanProperty DOMESTIC = BlockStateProperties.LIT;

    public DualCropBlock(Properties properties) {
        super(properties);
        this.registerDefaultState(this.stateDefinition.any().setValue(AGE, Integer.valueOf(0)).setValue(DOMESTIC, Boolean.valueOf(false)));
    }

    public BooleanProperty getDomesticProperty() {
        return DOMESTIC;
    }

    @Override
    public void onTicked(BlockState state, ServerLevel level, BlockPos pos, RandomSource source, int i) {
        BlockState blockstate = state.setValue(AGE, Integer.valueOf(i + 1));
        level.setBlock(pos, blockstate, 2);
        level.gameEvent(GameEvent.BLOCK_CHANGE, pos, GameEvent.Context.of(blockstate));
        net.minecraftforge.common.ForgeHooks.onCropsGrowPost(level, pos, state);
        if (i == 3) {
            int rand = new Random().nextInt(9);
            if (rand == 1) {
                BlockState domState = state.setValue(DOMESTIC, Boolean.valueOf(true));
                level.setBlock(pos, domState, 2);
            }
        }
    }

    @Override
    public BlockState onUsed(BlockState state, Level level, BlockPos pos, Player player, InteractionHand hand, BlockHitResult result) {
        BlockState blockstate = state.setValue(AGE, Integer.valueOf(0)).setValue(DOMESTIC, Boolean.valueOf(false));
        return blockstate;
    }

    @Override
    protected void createBlockStateDefinition(StateDefinition.Builder<Block, BlockState> state) {
        state.add(AGE);
        state.add(DOMESTIC);
    }
}