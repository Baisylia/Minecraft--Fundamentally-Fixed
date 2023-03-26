package com.ncpbails.fundamentallyfixed.block.custom;

import com.ncpbails.fundamentallyfixed.item.ModItems;

import java.awt.*;
import java.util.Random;

import net.minecraft.client.color.block.BlockColors;
import net.minecraft.core.BlockPos;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundSource;
import net.minecraft.util.RandomSource;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.InteractionResult;
import net.minecraft.world.damagesource.DamageSource;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.Items;
import net.minecraft.world.level.BlockGetter;
import net.minecraft.world.level.ItemLike;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.BonemealableBlock;
import net.minecraft.world.level.block.BushBlock;
import net.minecraft.world.level.block.state.BlockBehaviour;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.block.state.StateDefinition;
import net.minecraft.world.level.block.state.properties.BlockStateProperties;
import net.minecraft.world.level.block.state.properties.BooleanProperty;
import net.minecraft.world.level.block.state.properties.IntegerProperty;
import net.minecraft.world.level.gameevent.GameEvent;
import net.minecraft.world.phys.BlockHitResult;
import net.minecraft.world.phys.Vec3;
import net.minecraft.world.phys.shapes.CollisionContext;
import net.minecraft.world.phys.shapes.VoxelShape;
import net.minecraftforge.eventbus.api.SubscribeEvent;

public class FixedCropBlock extends BushBlock implements BonemealableBlock {
    private static final float HURT_SPEED_THRESHOLD = 0.003F;
    public static final boolean ShouldHurt = false;
    public static final int MAX_AGE = 7;

    public static final BooleanProperty DOMESTIC = BlockStateProperties.LIT;
    public static final IntegerProperty AGE = BlockStateProperties.AGE_7;
    private static final VoxelShape[] SHAPE_BY_AGE = new VoxelShape[]{
            Block.box(0.0D, 0.0D, 0.0D, 16.0D, 2.0D, 16.0D),
            Block.box(0.0D, 0.0D, 0.0D, 16.0D, 4.0D, 16.0D),
            Block.box(0.0D, 0.0D, 0.0D, 16.0D, 6.0D, 16.0D),
            Block.box(0.0D, 0.0D, 0.0D, 16.0D, 8.0D, 16.0D),
            Block.box(0.0D, 0.0D, 0.0D, 16.0D, 10.0D, 16.0D),
            Block.box(0.0D, 0.0D, 0.0D, 16.0D, 12.0D, 16.0D),
            Block.box(0.0D, 0.0D, 0.0D, 16.0D, 14.0D, 16.0D),
            Block.box(0.0D, 0.0D, 0.0D, 16.0D, 16.0D, 16.0D)};

    public FixedCropBlock(BlockBehaviour.Properties properties) {
        super(properties);
        this.registerDefaultState(this.stateDefinition.any().setValue(AGE, Integer.valueOf(0)).setValue(DOMESTIC, Boolean.valueOf(false)));
    }

    public ItemStack getCloneItemStack(BlockGetter getter, BlockPos pos, BlockState state) {
        return new ItemStack(Items.DIRT);
    }
    public IntegerProperty getAgeProperty() {
        return AGE;
    }

    public BooleanProperty getDomesticProperty() {
        return DOMESTIC;
    }

    public VoxelShape getShape(BlockState state, BlockGetter worldIn, BlockPos pos, CollisionContext context) {
        return SHAPE_BY_AGE[state.getValue(this.getAgeProperty())];
    }

    public boolean isRandomlyTicking(BlockState state) {
        return state.getValue(AGE) < MAX_AGE;
    }

    public void randomTick(BlockState state, ServerLevel level, BlockPos pos, RandomSource source) {
        int i = state.getValue(AGE);
        if (i < MAX_AGE && level.getRawBrightness(pos.above(), 0) >= 9 && net.minecraftforge.common.ForgeHooks.onCropsGrowPre(level, pos, state, source.nextInt(5) == 0)) {
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
    }

    public void entityInside(BlockState state, Level level, BlockPos pos, Entity entity) {
        if(ShouldHurt){
            if (entity instanceof LivingEntity && entity.getType() != EntityType.FOX && entity.getType() != EntityType.BEE) {
                entity.makeStuckInBlock(state, new Vec3((double)0.8F, 0.75D, (double)0.8F));
                if (!level.isClientSide && state.getValue(AGE) > 0 && (entity.xOld != entity.getX() || entity.zOld != entity.getZ())) {
                    double d0 = Math.abs(entity.getX() - entity.xOld);
                    double d1 = Math.abs(entity.getZ() - entity.zOld);
                    if (d0 >= (double)HURT_SPEED_THRESHOLD || d1 >= (double)HURT_SPEED_THRESHOLD) {
                        entity.hurt(DamageSource.SWEET_BERRY_BUSH, 1.0F);
                    }
                }
            }
        }
    }

    public InteractionResult use(BlockState state, Level level, BlockPos pos, Player player, InteractionHand hand, BlockHitResult result) {
        int i = state.getValue(AGE);
        boolean flag = i == MAX_AGE;
        if (!flag && player.getItemInHand(hand).is(Items.BONE_MEAL)) {
            return InteractionResult.PASS;
        } else if (flag) {
            int j = 1 + level.random.nextInt(6);
            dropResources(state, level, pos);
            //popResource(level, pos, new ItemStack(ModItems.GRASS_SEEDS.get(), j + (flag ? 1 : 0)));
            level.playSound((Player)null, pos, SoundEvents.SWEET_BERRY_BUSH_PICK_BERRIES, SoundSource.BLOCKS, 1.0F, 0.8F + level.random.nextFloat() * 0.4F);
            BlockState blockstate = state.setValue(AGE, Integer.valueOf(0));
            level.setBlock(pos, blockstate, 0);
            level.gameEvent(GameEvent.BLOCK_CHANGE, pos, GameEvent.Context.of(player, blockstate));
            return InteractionResult.sidedSuccess(level.isClientSide);
        } else {
            return super.use(state, level, pos, player, hand, result);
        }
    }

    protected void createBlockStateDefinition(StateDefinition.Builder<Block, BlockState> state) {
        state.add(AGE);
        state.add(DOMESTIC);
    }

    public boolean isValidBonemealTarget(BlockGetter getter, BlockPos pos, BlockState state, boolean bool) {
        return state.getValue(AGE) < MAX_AGE;
    }

    public boolean isBonemealSuccess(Level level, RandomSource source, BlockPos pos, BlockState state) {
        return true;
    }

    public void performBonemeal(ServerLevel level, RandomSource source, BlockPos pos, BlockState state) {
        int i = Math.min(7, state.getValue(AGE) + 1);
        level.setBlock(pos, state.setValue(AGE, Integer.valueOf(i)), 2);
    }
}
