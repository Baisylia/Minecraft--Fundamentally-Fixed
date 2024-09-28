package com.ncpbails.fundamentallyfixed.entity.custom;

import javax.annotation.Nonnull;

import com.ncpbails.fundamentallyfixed.block.ModBlocks;
import com.ncpbails.fundamentallyfixed.entity.ModEntityTypes;
import net.minecraft.core.BlockPos;
import net.minecraft.core.Direction;
import net.minecraft.nbt.CompoundTag;
import net.minecraft.network.protocol.Packet;
import net.minecraft.network.protocol.game.ClientboundBlockUpdatePacket;
import net.minecraft.network.syncher.EntityDataAccessor;
import net.minecraft.network.syncher.EntityDataSerializers;
import net.minecraft.network.syncher.SynchedEntityData;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.sounds.SoundEvent;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.world.damagesource.DamageSource;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.MoverType;
import net.minecraft.world.entity.ai.attributes.AttributeSupplier;
import net.minecraft.world.entity.ai.attributes.Attributes;
import net.minecraft.world.entity.ai.goal.target.HurtByTargetGoal;
import net.minecraft.world.entity.animal.WaterAnimal;
import net.minecraft.world.entity.item.FallingBlockEntity;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.context.DirectionalPlaceContext;
import net.minecraft.world.level.GameRules;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.FallingBlock;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.block.state.properties.BlockStateProperties;
import net.minecraft.world.phys.Vec3;
import net.minecraftforge.network.NetworkHooks;
import software.bernie.geckolib3.core.IAnimatable;
import software.bernie.geckolib3.core.PlayState;
import software.bernie.geckolib3.core.builder.AnimationBuilder;
import software.bernie.geckolib3.core.controller.AnimationController;
import software.bernie.geckolib3.core.event.predicate.AnimationEvent;
import software.bernie.geckolib3.core.manager.AnimationData;
import software.bernie.geckolib3.core.manager.AnimationFactory;
import vazkii.quark.content.automation.entity.Gravisand;
import vazkii.quark.content.automation.module.GravisandModule;

public class SweptGravisand extends FallingBlockEntity {
    private static final EntityDataAccessor<Float> DIRECTION;
    private static final String TAG_DIRECTION = "fallDirection";

    public SweptGravisand(EntityType<? extends SweptGravisand> type, Level world) {
        super(type, world);
    }

    //public SweptGravisand(Level world, double x, double y, double z, float direction) {
    //    this(ModEntityTypes.SWEPT_GRAVISAND.get(), world);
    //    this.blocksBuilding = true;
    //    this.setPos(x, y + (double)((1.0F - this.getBbHeight()) / 2.0F), z);
    //    this.setDeltaMovement(Vec3.ZERO);
    //    this.xo = x;
    //    this.yo = y;
    //    this.zo = z;
    //    this.setStartPos(new BlockPos(this.blockPosition()));
    //    this.entityData.set(DIRECTION, direction);
    //}

    public void tick() {
        super.tick();
        BlockPos blockpos1 = this.blockPosition();
        boolean aboveHasCollision = !this.level.getBlockState(blockpos1.above()).getCollisionShape(this.level, blockpos1.above()).isEmpty();
        if (!this.level.isClientSide && this.getFallDirection() > 0.0F && !this.isRemoved() && aboveHasCollision) {
            Block block = this.getBlockState().getBlock();
            BlockState blockstate = this.level.getBlockState(blockpos1);
            this.setDeltaMovement(this.getDeltaMovement().multiply(0.7, 0.5, 0.7));
            boolean flag2 = blockstate.canBeReplaced(new DirectionalPlaceContext(this.level, blockpos1, Direction.UP, ItemStack.EMPTY, Direction.DOWN));
            boolean flag3 = FallingBlock.isFree(this.level.getBlockState(blockpos1.above()));
            boolean flag4 = this.getBlockState().canSurvive(this.level, blockpos1) && !flag3;
            if (flag2 && flag4) {
                if (this.level.setBlock(blockpos1, this.getBlockState(), 3)) {
                    ((ServerLevel)this.level).getChunkSource().chunkMap.broadcast(this, new ClientboundBlockUpdatePacket(blockpos1, this.level.getBlockState(blockpos1)));
                    this.discard();
                } else if (this.dropItem && this.level.getGameRules().getBoolean(GameRules.RULE_DOENTITYDROPS)) {
                    this.discard();
                    this.callOnBrokenAfterFall(block, blockpos1);
                    this.spawnAtLocation(block);
                }
            } else {
                this.discard();
                if (this.dropItem && this.level.getGameRules().getBoolean(GameRules.RULE_DOENTITYDROPS)) {
                    this.callOnBrokenAfterFall(block, blockpos1);
                    this.spawnAtLocation(block);
                }
            }
        }

    }

    protected void defineSynchedData() {
        super.defineSynchedData();
        this.entityData.define(DIRECTION, 0.0F);
    }

    public void move(@Nonnull MoverType type, @Nonnull Vec3 vec) {
        if (type == MoverType.SELF) {
            super.move(type, vec.scale((double)(this.getFallDirection() * -1.0F)));
        } else {
            super.move(type, vec);
        }

    }

    public boolean causeFallDamage(float distance, float damageMultiplier, @Nonnull DamageSource source) {
        return false;
    }

    private float getFallDirection() {
        return (Float)this.entityData.get(DIRECTION);
    }

    protected void addAdditionalSaveData(@Nonnull CompoundTag compound) {
        super.addAdditionalSaveData(compound);
        compound.putFloat("fallDirection", this.getFallDirection());
    }

    protected void readAdditionalSaveData(@Nonnull CompoundTag compound) {
        super.readAdditionalSaveData(compound);
        this.entityData.set(DIRECTION, compound.getFloat("fallDirection"));
    }

    @Nonnull
    public Packet<?> getAddEntityPacket() {
        return NetworkHooks.getEntitySpawningPacket(this);
    }

    static {
        DIRECTION = SynchedEntityData.defineId(SweptGravisand.class, EntityDataSerializers.FLOAT);
    }
}
