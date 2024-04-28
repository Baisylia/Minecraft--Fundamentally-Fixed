package com.ncpbails.fundamentallyfixed.block.custom.Copper;

import com.ncpbails.fundamentallyfixed.block.ModBlocks;
import net.minecraft.core.BlockPos;
import net.minecraft.core.particles.ParticleTypes;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundSource;
import net.minecraft.util.RandomSource;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.InteractionResult;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.item.AxeItem;
import net.minecraft.world.item.HoneycombItem;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.StairBlock;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.phys.BlockHitResult;


public class ModWeatheringCopperStairBlock extends StairBlock implements ModWeatheringCopper {

    private final WeatherState weatherState;
    public Block waxedVersion;
    public Block axedVersion;
    public boolean canAxe;

    public ModWeatheringCopperStairBlock(WeatherState weather, BlockState state, Properties properties, boolean canAxe) {
        super(state, properties);
        this.weatherState = weather;
        this.canAxe = canAxe;
    }


    public void randomTick(BlockState state, ServerLevel level, BlockPos pos, RandomSource source) {
        this.onRandomTick(state, level, pos, source);
    }

    public boolean isRandomlyTicking(BlockState state) {
        return ModWeatheringCopper.getNext(state.getBlock()).isPresent();
    }

    public WeatherState getAge() {
        return this.weatherState;
    }

    @Override
    public InteractionResult use(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
        useOnBlock(state, worldIn, pos, player, handIn, hit);
        return InteractionResult.PASS;
    }

    public void useOnBlock(BlockState state, Level worldIn, BlockPos pos, Player player, InteractionHand handIn, BlockHitResult hit) {
        ItemStack heldStack = player.getItemInHand(handIn);
        ItemStack offhandStack = player.getOffhandItem();
        if (!worldIn.isClientSide()) {
            if (canAxe) {
                if (handIn.equals(InteractionHand.MAIN_HAND) && heldStack.getItem() instanceof AxeItem) {
                    worldIn.setBlock(pos, axedVersion.defaultBlockState().setValue(FACING, state.getValue(FACING)).setValue(HALF, state.getValue(HALF)).setValue(SHAPE, state.getValue(SHAPE)).setValue(WATERLOGGED, state.getValue(WATERLOGGED)), 1);
                    worldIn.playSound((Player)null, pos, SoundEvents.AXE_WAX_OFF, SoundSource.BLOCKS, 25F, 1F);
                    if (!player.isCreative()) {
                        heldStack.setDamageValue(heldStack.getDamageValue() + 1);
                        if (heldStack.getDamageValue() >= heldStack.getMaxDamage()) {
                            heldStack.shrink(1);
                        }
                    }
                }
                else if (handIn.equals(InteractionHand.OFF_HAND) && offhandStack.getItem() instanceof AxeItem) {
                    worldIn.setBlock(pos, axedVersion.defaultBlockState().setValue(FACING, state.getValue(FACING)).setValue(HALF, state.getValue(HALF)).setValue(SHAPE, state.getValue(SHAPE)).setValue(WATERLOGGED, state.getValue(WATERLOGGED)), 1);
                    worldIn.playSound((Player) null, pos, SoundEvents.AXE_WAX_OFF, SoundSource.BLOCKS, 2F, 1F);
                    if (!player.isCreative()) {
                        heldStack.setDamageValue(heldStack.getDamageValue() + 1);
                        if (heldStack.getDamageValue() >= heldStack.getMaxDamage()) {
                            heldStack.shrink(1);
                        }
                    }
                }
            }

            if (handIn.equals(InteractionHand.MAIN_HAND) && heldStack.getItem() instanceof HoneycombItem) {
                worldIn.setBlock(pos, waxedVersion.defaultBlockState().setValue(FACING, state.getValue(FACING)).setValue(HALF, state.getValue(HALF)).setValue(SHAPE, state.getValue(SHAPE)).setValue(WATERLOGGED, state.getValue(WATERLOGGED)), 1);
                worldIn.playSound((Player) null, pos, SoundEvents.HONEYCOMB_WAX_ON, SoundSource.BLOCKS, 2F, 1F);
                if (!player.isCreative()) {
                        if (heldStack.getDamageValue() >= heldStack.getMaxDamage()) {
                            heldStack.shrink(1);
                        }
                    }
            } else if (handIn.equals(InteractionHand.OFF_HAND) && offhandStack.getItem() instanceof HoneycombItem) {
                worldIn.setBlock(pos, waxedVersion.defaultBlockState().setValue(FACING, state.getValue(FACING)).setValue(HALF, state.getValue(HALF)).setValue(SHAPE, state.getValue(SHAPE)).setValue(WATERLOGGED, state.getValue(WATERLOGGED)), 1);
                worldIn.playSound((Player) null, pos, SoundEvents.HONEYCOMB_WAX_ON, SoundSource.BLOCKS, 2F, 1F);
                if (!player.isCreative()) {
                        if (heldStack.getDamageValue() >= heldStack.getMaxDamage()) {
                            heldStack.shrink(1);
                        }
                    }
            }

        }
        else {
            if (canAxe) {
                if ((handIn.equals(InteractionHand.MAIN_HAND) && heldStack.getItem() instanceof AxeItem) || handIn.equals(InteractionHand.OFF_HAND) && offhandStack.getItem() instanceof AxeItem) {
                    player.swing(handIn);
                    for (int i = 0; i < 20; i++) { // Spawn 20 particles
                        double offsetX = worldIn.random.nextGaussian() * 0.25D; // Random X offset
                        double offsetY = worldIn.random.nextGaussian() * 0.25D; // Random Y offset
                        double offsetZ = worldIn.random.nextGaussian() * 0.25D; // Random Z offset
                        worldIn.addParticle(ParticleTypes.SCRAPE, // Particle type
                                pos.getX() + 0.5D + offsetX, // X position (centered on the block)
                                pos.getY() + 0.5D + offsetY, // Y position (centered on the block)
                                pos.getZ() + 0.5D + offsetZ, // Z position (centered on the block)
                                0.0D, 0.0D, 0.0D); // Velocity (no initial velocity)
                    }
                }
            }
            if ((handIn.equals(InteractionHand.MAIN_HAND) && heldStack.getItem() instanceof HoneycombItem) || (handIn.equals(InteractionHand.OFF_HAND) && offhandStack.getItem() instanceof HoneycombItem)) {
                player.swing(handIn);
                for (int i = 0; i < 20; i++) { // Spawn 20 particles
                    double offsetX = worldIn.random.nextGaussian() * 0.25D; // Random X offset
                    double offsetY = worldIn.random.nextGaussian() * 0.25D; // Random Y offset
                    double offsetZ = worldIn.random.nextGaussian() * 0.25D; // Random Z offset
                    worldIn.addParticle(ParticleTypes.WAX_ON, // Particle type
                            pos.getX() + 0.5D + offsetX, // X position (centered on the block)
                            pos.getY() + 0.5D + offsetY, // Y position (centered on the block)
                            pos.getZ() + 0.5D + offsetZ, // Z position (centered on the block)
                            0.0D, 0.0D, 0.0D); // Velocity (no initial velocity)
                }
            }
        }
    }
}