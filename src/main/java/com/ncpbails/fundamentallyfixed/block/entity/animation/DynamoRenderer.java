package com.ncpbails.fundamentallyfixed.block.entity.animation;

import com.jozufozu.flywheel.backend.Backend;
import com.mojang.blaze3d.vertex.PoseStack;
import com.mojang.blaze3d.vertex.VertexConsumer;
import com.simibubi.create.AllBlockPartials;
import com.simibubi.create.content.contraptions.base.KineticTileEntity;
import com.simibubi.create.content.contraptions.base.KineticTileEntityRenderer;
import com.simibubi.create.foundation.render.CachedBufferer;
import com.simibubi.create.foundation.render.SuperByteBuffer;
import com.simibubi.create.foundation.utility.AnimationTickHolder;
import net.minecraft.client.renderer.LevelRenderer;
import net.minecraft.client.renderer.MultiBufferSource;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.blockentity.BlockEntityRendererProvider;
import net.minecraft.core.Direction;
import net.minecraft.util.Mth;
import net.minecraft.world.level.block.state.properties.BlockStateProperties;

public class DynamoRenderer extends KineticTileEntityRenderer {
    public DynamoRenderer(BlockEntityRendererProvider.Context context) {
        super(context);
    }

    protected void renderSafe(KineticTileEntity te, float partialTicks, PoseStack ms, MultiBufferSource buffer, int light, int overlay) {
        if (!Backend.canUseInstancing(te.getLevel())) {
            Direction direction = (Direction)te.getBlockState().getValue(BlockStateProperties.FACING);
            VertexConsumer vb = buffer.getBuffer(RenderType.cutoutMipped());
            int lightBehind = LevelRenderer.getLightColor(te.getLevel(), te.getBlockPos().relative(direction.getOpposite()));
            int lightInFront = LevelRenderer.getLightColor(te.getLevel(), te.getBlockPos().relative(direction));
            SuperByteBuffer shaftHalf = CachedBufferer.partialFacing(AllBlockPartials.SHAFT_HALF, te.getBlockState(), direction.getOpposite());
            float time = AnimationTickHolder.getRenderTime(te.getLevel());
            float speed = te.getSpeed() * 5.0F;
            if (speed > 0.0F) {
                speed = Mth.clamp(speed, 80.0F, 1280.0F);
            }

            if (speed < 0.0F) {
                speed = Mth.clamp(speed, -1280.0F, -80.0F);
            }

            float angle = time * speed * 3.0F / 10.0F % 360.0F;
            angle = angle / 180.0F * 3.1415927F;
            standardKineticRotationTransform(shaftHalf, te, lightBehind).renderInto(ms, vb);
        }
    }
}
