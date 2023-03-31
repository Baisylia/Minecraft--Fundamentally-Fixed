package com.ncpbails.fundamentallyfixed.block.entity.custom;

import com.ncpbails.fundamentallyfixed.block.ModCBlocks;
import com.ncpbails.fundamentallyfixed.item.ModItems;
import com.simibubi.create.content.contraptions.base.KineticTileEntity;
import com.simibubi.create.content.contraptions.components.fan.AirCurrent;
import com.simibubi.create.content.contraptions.components.fan.EncasedFanBlock;
import com.simibubi.create.content.contraptions.components.fan.IAirCurrentSource;
import com.simibubi.create.content.logistics.block.chute.ChuteTileEntity;
import com.simibubi.create.foundation.advancement.AllAdvancements;
import com.simibubi.create.foundation.advancement.CreateAdvancement;
import com.simibubi.create.foundation.config.AllConfigs;
import com.simibubi.create.foundation.tileEntity.TileEntityBehaviour;
import net.minecraft.MethodsReturnNonnullByDefault;
import net.minecraft.core.BlockPos;
import net.minecraft.core.Direction;
import net.minecraft.nbt.CompoundTag;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.block.Blocks;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.world.level.block.entity.BlockEntityType;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.block.state.properties.BlockStateProperties;
import net.minecraft.world.level.gameevent.GameEvent;

import javax.annotation.Nullable;
import java.util.List;

import static com.ncpbails.fundamentallyfixed.block.custom.RedstoneDynamoBlock.POWERED;
import static net.minecraft.world.level.block.Block.popResource;
import static net.minecraft.world.level.block.Block.stateById;

@MethodsReturnNonnullByDefault
public class RedstoneDynamoTileEntity extends KineticTileEntity {

    public RedstoneDynamoTileEntity(BlockEntityType<?> type, BlockPos pos, BlockState state) {
        super(type, pos, state);
    }

    public void addBehaviours(List<TileEntityBehaviour> behaviours) {
        super.addBehaviours(behaviours);
    }

    protected void read(CompoundTag compound, boolean clientPacket) {
        super.read(compound, clientPacket);
    }

    public void write(CompoundTag compound, boolean clientPacket) {
        super.write(compound, clientPacket);
    }


    public void remove() {
        super.remove();
        this.updateChute();
    }

    public boolean isSourceRemoved() {
        return this.remove;
    }

    public void onSpeedChanged(float prevSpeed) {
        super.onSpeedChanged(prevSpeed);
        this.updateChute();
    }

    public void updateChute() {
        Direction direction = (Direction)this.getBlockState().getValue(EncasedFanBlock.FACING);
        if (direction.getAxis().isVertical()) {
            BlockEntity poweredChute = this.level.getBlockEntity(this.worldPosition.relative(direction));
            if (poweredChute instanceof ChuteTileEntity) {
                ChuteTileEntity chuteTE = (ChuteTileEntity)poweredChute;
                if (direction == Direction.DOWN) {
                    chuteTE.updatePull();
                } else {
                    chuteTE.updatePush(1);
                }

            }
        }
    }

    public void tick() {
        super.tick();
        if(level.isClientSide())
            return;
        if(Math.abs(getSpeed()) > 0 && isSpeedRequirementFulfilled()){
            level.setBlock(this.getBlockPos(), this.getBlockState().setValue(POWERED, true), 2);
            level.gameEvent(GameEvent.BLOCK_CHANGE, this.getBlockPos(), GameEvent.Context.of(this.getBlockState()));
            level.updateNeighborsAt(this.getBlockPos(), ModCBlocks.REDSTONE_DYNAMO.get());
            //popResource(level, this.getBlockPos(), new ItemStack(ModItems.GRASS_SEEDS.get()));
        }
        else {
            level.setBlock(this.getBlockPos(), this.getBlockState().setValue(POWERED, false), 2);
            level.gameEvent(GameEvent.BLOCK_CHANGE, this.getBlockPos(), GameEvent.Context.of(this.getBlockState()));
            level.updateNeighborsAt(this.getBlockPos(), ModCBlocks.REDSTONE_DYNAMO.get());
        }
    }
}
