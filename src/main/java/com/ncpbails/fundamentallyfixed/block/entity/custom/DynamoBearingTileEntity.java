package com.ncpbails.fundamentallyfixed.block.entity.custom;

import com.simibubi.create.AllSoundEvents;
import com.simibubi.create.content.contraptions.base.GeneratingKineticTileEntity;
import com.simibubi.create.content.contraptions.components.structureMovement.*;
import com.simibubi.create.content.contraptions.components.structureMovement.bearing.BearingBlock;
import com.simibubi.create.content.contraptions.components.structureMovement.bearing.BearingContraption;
import com.simibubi.create.content.contraptions.components.structureMovement.bearing.IBearingTileEntity;
import com.simibubi.create.foundation.advancement.AllAdvancements;
import com.simibubi.create.foundation.advancement.CreateAdvancement;
import com.simibubi.create.foundation.item.TooltipHelper;
import com.simibubi.create.foundation.tileEntity.TileEntityBehaviour;
import com.simibubi.create.foundation.tileEntity.behaviour.scrollvalue.ScrollOptionBehaviour;
import com.simibubi.create.foundation.utility.AngleHelper;
import com.simibubi.create.foundation.utility.Lang;
import com.simibubi.create.foundation.utility.ServerSpeedProvider;
import net.minecraft.core.BlockPos;
import net.minecraft.core.Direction;
import net.minecraft.nbt.CompoundTag;
import net.minecraft.network.chat.Component;
import net.minecraft.util.Mth;
import net.minecraft.world.level.block.entity.BlockEntityType;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.block.state.properties.BlockStateProperties;

import java.util.List;

public class DynamoBearingTileEntity extends GeneratingKineticTileEntity implements IBearingTileEntity, IDisplayAssemblyExceptions {
    protected ScrollOptionBehaviour<RotationMode> movementMode;
    protected ControlledContraptionEntity movedContraption;
    protected float angle;
    public boolean running;
    public boolean assembleNextTick;
    protected float clientAngleDiff;
    protected AssemblyException lastException;
    private float prevAngle;

    public DynamoBearingTileEntity(BlockEntityType<?> type, BlockPos pos, BlockState state) {
        super(type, pos, state);
        this.setLazyTickRate(3);
    }

    public boolean isWoodenTop() {
        return false;
    }

    public void addBehaviours(List<TileEntityBehaviour> behaviours) {
        super.addBehaviours(behaviours);
        this.movementMode = new ScrollOptionBehaviour(IControlContraption.RotationMode.class, Lang.translateDirect("contraptions.movement_mode", new Object[0]), this, this.getMovementModeSlot());
        this.movementMode.requiresWrench();
        behaviours.add(this.movementMode);
        this.registerAwardables(behaviours, new CreateAdvancement[]{AllAdvancements.CONTRAPTION_ACTORS});
    }

    public void remove() {
        if (!this.level.isClientSide) {
            this.disassemble();
        }

        super.remove();
    }

    public void write(CompoundTag compound, boolean clientPacket) {
        compound.putBoolean("Running", this.running);
        compound.putFloat("Angle", this.angle);
        AssemblyException.write(compound, this.lastException);
        super.write(compound, clientPacket);
    }

    protected void read(CompoundTag compound, boolean clientPacket) {
        if (this.wasMoved) {
            super.read(compound, clientPacket);
        } else {
            float angleBefore = this.angle;
            this.running = compound.getBoolean("Running");
            this.angle = compound.getFloat("Angle");
            this.lastException = AssemblyException.read(compound);
            super.read(compound, clientPacket);
            if (clientPacket) {
                if (this.running) {
                    if (this.movedContraption == null || !this.movedContraption.isStalled()) {
                        this.clientAngleDiff = AngleHelper.getShortestAngleDiff((double)angleBefore, (double)this.angle);
                        this.angle = angleBefore;
                    }
                } else {
                    this.movedContraption = null;
                }

            }
        }
    }

    public float getInterpolatedAngle(float partialTicks) {
        if (this.isVirtual()) {
            return Mth.lerp(partialTicks + 0.5F, this.prevAngle, this.angle);
        } else {
            if (this.movedContraption == null || this.movedContraption.isStalled() || !this.running) {
                partialTicks = 0.0F;
            }

            return Mth.lerp(partialTicks, this.angle, this.angle + this.getAngularSpeed());
        }
    }

    public void onSpeedChanged(float prevSpeed) {
        super.onSpeedChanged(prevSpeed);
        this.assembleNextTick = true;
        if (this.movedContraption != null && Math.signum(prevSpeed) != Math.signum(this.getSpeed()) && prevSpeed != 0.0F) {
            this.movedContraption.getContraption().stop(this.level);
        }

    }

    public float getAngularSpeed() {
        float speed = convertToAngular(this.isWindmill() ? this.getGeneratedSpeed() : this.getSpeed());
        if (this.getSpeed() == 0.0F) {
            speed = 0.0F;
        }

        if (this.level.isClientSide) {
            speed *= ServerSpeedProvider.get();
            speed += this.clientAngleDiff / 3.0F;
        }

        return speed;
    }

    public AssemblyException getLastAssemblyException() {
        return this.lastException;
    }

    protected boolean isWindmill() {
        return false;
    }

    public BlockPos getBlockPosition() {
        return this.worldPosition;
    }

    public void assemble() {
        if (this.level.getBlockState(this.worldPosition).getBlock() instanceof BearingBlock) {
            Direction direction = (Direction)this.getBlockState().getValue(BearingBlock.FACING);
            BearingContraption contraption = new BearingContraption(this.isWindmill(), direction);

            try {
                if (!contraption.assemble(this.level, this.worldPosition)) {
                    return;
                }

                this.lastException = null;
            } catch (AssemblyException var4) {
                this.lastException = var4;
                this.sendData();
                return;
            }

            if (this.isWindmill()) {
                this.award(AllAdvancements.WINDMILL);
            }

            if (contraption.getSailBlocks() >= 128) {
                this.award(AllAdvancements.WINDMILL_MAXED);
            }

            contraption.removeBlocksFromWorld(this.level, BlockPos.ZERO);
            this.movedContraption = ControlledContraptionEntity.create(this.level, this, contraption);
            BlockPos anchor = this.worldPosition.relative(direction);
            this.movedContraption.setPos((double)anchor.getX(), (double)anchor.getY(), (double)anchor.getZ());
            this.movedContraption.setRotationAxis(direction.getAxis());
            this.level.addFreshEntity(this.movedContraption);
            AllSoundEvents.CONTRAPTION_ASSEMBLE.playOnServer(this.level, this.worldPosition);
            if (contraption.containsBlockBreakers()) {
                this.award(AllAdvancements.CONTRAPTION_ACTORS);
            }

            this.running = true;
            this.angle = 0.0F;
            this.sendData();
            this.updateGeneratedRotation();
        }
    }

    public void disassemble() {
        if (this.running || this.movedContraption != null) {
            this.angle = 0.0F;
            if (this.isWindmill()) {
                this.applyRotation();
            }

            if (this.movedContraption != null) {
                this.movedContraption.disassemble();
                AllSoundEvents.CONTRAPTION_DISASSEMBLE.playOnServer(this.level, this.worldPosition);
            }

            this.movedContraption = null;
            this.running = false;
            this.updateGeneratedRotation();
            this.assembleNextTick = false;
            this.sendData();
        }
    }

    public void tick() {
        super.tick();
        this.prevAngle = this.angle;
        if (this.level.isClientSide) {
            this.clientAngleDiff /= 2.0F;
        }

        if (!this.level.isClientSide && this.assembleNextTick) {
            this.assembleNextTick = false;
            if (!this.running) {
                if (this.speed == 0.0F && !this.isWindmill()) {
                    return;
                }

                this.assemble();
            } else {
                boolean canDisassemble = this.movementMode.get() == RotationMode.ROTATE_PLACE || this.isNearInitialAngle() && this.movementMode.get() == RotationMode.ROTATE_PLACE_RETURNED;
                if (this.speed == 0.0F && (canDisassemble || this.movedContraption == null || this.movedContraption.getContraption().getBlocks().isEmpty())) {
                    if (this.movedContraption != null) {
                        this.movedContraption.getContraption().stop(this.level);
                    }

                    this.disassemble();
                    return;
                }
            }
        }

        if (this.running) {
            if (this.movedContraption == null || !this.movedContraption.isStalled()) {
                float angularSpeed = this.getAngularSpeed();
                float newAngle = this.angle + angularSpeed;
                this.angle = newAngle % 360.0F;
            }

            this.applyRotation();
        }
    }

    public boolean isNearInitialAngle() {
        return Math.abs(this.angle) < 45.0F || Math.abs(this.angle) > 315.0F;
    }

    public void lazyTick() {
        super.lazyTick();
        if (this.movedContraption != null && !this.level.isClientSide) {
            this.sendData();
        }

    }

    protected void applyRotation() {
        if (this.movedContraption != null) {
            this.movedContraption.setAngle(this.angle);
            BlockState blockState = this.getBlockState();
            if (blockState.hasProperty(BlockStateProperties.FACING)) {
                this.movedContraption.setRotationAxis(((Direction)blockState.getValue(BlockStateProperties.FACING)).getAxis());
            }

        }
    }

    public void attach(ControlledContraptionEntity contraption) {
        BlockState blockState = this.getBlockState();
        if (contraption.getContraption() instanceof BearingContraption) {
            if (blockState.hasProperty(BearingBlock.FACING)) {
                this.movedContraption = contraption;
                this.setChanged();
                BlockPos anchor = this.worldPosition.relative((Direction)blockState.getValue(BearingBlock.FACING));
                this.movedContraption.setPos((double)anchor.getX(), (double)anchor.getY(), (double)anchor.getZ());
                if (!this.level.isClientSide) {
                    this.running = true;
                    this.sendData();
                }

            }
        }
    }

    public void onStall() {
        if (!this.level.isClientSide) {
            this.sendData();
        }

    }

    public boolean isValid() {
        return !this.isRemoved();
    }

    public boolean isAttachedTo(AbstractContraptionEntity contraption) {
        return this.movedContraption == contraption;
    }

    public boolean isRunning() {
        return this.running;
    }

    public boolean addToTooltip(List<Component> tooltip, boolean isPlayerSneaking) {
        if (super.addToTooltip(tooltip, isPlayerSneaking)) {
            return true;
        } else if (isPlayerSneaking) {
            return false;
        } else if (!this.isWindmill() && this.getSpeed() == 0.0F) {
            return false;
        } else if (this.running) {
            return false;
        } else {
            BlockState state = this.getBlockState();
            if (!(state.getBlock() instanceof BearingBlock)) {
                return false;
            } else {
                BlockState attachedState = this.level.getBlockState(this.worldPosition.relative((Direction)state.getValue(BearingBlock.FACING)));
                if (attachedState.getMaterial().isReplaceable()) {
                    return false;
                } else {
                    TooltipHelper.addHint(tooltip, "hint.empty_bearing", new Object[0]);
                    return true;
                }
            }
        }
    }

    public void setAngle(float forcedAngle) {
        this.angle = forcedAngle;
    }
}
