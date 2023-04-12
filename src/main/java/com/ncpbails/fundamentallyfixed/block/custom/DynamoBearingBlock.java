package com.ncpbails.fundamentallyfixed.block.custom;

import com.ncpbails.fundamentallyfixed.block.entity.ModCBlockEntities;
import com.ncpbails.fundamentallyfixed.block.entity.custom.DynamoBearingTileEntity;
import com.ncpbails.fundamentallyfixed.item.ModItems;
import com.simibubi.create.AllTileEntities;
import com.simibubi.create.content.contraptions.components.structureMovement.bearing.BearingBlock;
import com.simibubi.create.content.contraptions.components.structureMovement.bearing.MechanicalBearingTileEntity;
import com.simibubi.create.foundation.block.ITE;
import net.minecraft.core.BlockPos;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.InteractionResult;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.block.entity.BlockEntityType;
import net.minecraft.world.level.block.state.BlockBehaviour;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.phys.BlockHitResult;

public class DynamoBearingBlock extends BearingBlock implements ITE<DynamoBearingTileEntity> {
    public DynamoBearingBlock(BlockBehaviour.Properties properties) {
        super(properties);
    }

    @Override
    public SpeedLevel getMinimumRequiredSpeedLevel() {
        return SpeedLevel.MEDIUM;
    }

    public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
        if (!player.mayBuild()) {
            return InteractionResult.FAIL;
        } else if (player.isShiftKeyDown()) {
            return InteractionResult.FAIL;
        } else if (player.getItemInHand(handIn).isEmpty()) {
            if (worldIn.isClientSide) {
                return InteractionResult.SUCCESS;
            } else {
                this.withTileEntityDo(worldIn, pos, (te) -> {
                    if (te.running) {
                        te.disassemble();
                    } else {
                        te.assembleNextTick = true;
                    }
                });
                return InteractionResult.SUCCESS;

            }
        } else {
            return InteractionResult.PASS;

        }
    }

    public Class<DynamoBearingTileEntity> getTileEntityClass() {
        return DynamoBearingTileEntity.class;
    }

    public BlockEntityType<? extends DynamoBearingTileEntity> getTileEntityType() {
        return (BlockEntityType) ModCBlockEntities.DYNAMO_BEARING.get();
    }
}
