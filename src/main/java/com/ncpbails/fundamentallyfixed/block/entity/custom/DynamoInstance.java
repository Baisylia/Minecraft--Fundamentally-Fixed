package com.ncpbails.fundamentallyfixed.block.entity.custom;

import com.jozufozu.flywheel.api.MaterialManager;
import com.jozufozu.flywheel.core.materials.FlatLit;
import com.simibubi.create.AllBlockPartials;
import com.simibubi.create.content.contraptions.base.KineticTileEntity;
import com.simibubi.create.content.contraptions.base.KineticTileInstance;
import com.simibubi.create.content.contraptions.base.flwdata.RotatingData;
import com.simibubi.create.foundation.render.AllMaterialSpecs;
import net.minecraft.core.BlockPos;
import net.minecraft.core.Direction;
import net.minecraft.util.Mth;
import net.minecraft.world.level.block.state.properties.BlockStateProperties;

public class DynamoInstance extends KineticTileInstance<RedstoneDynamoTileEntity> {
    protected final RotatingData shaft;
    final Direction direction;
    private final Direction opposite;

    public DynamoInstance(MaterialManager modelManager, RedstoneDynamoTileEntity tile) {
        super(modelManager, tile);
        this.direction = (Direction)this.blockState.getValue(BlockStateProperties.FACING);
        this.opposite = this.direction.getOpposite();
        this.shaft = (RotatingData)this.getRotatingMaterial().getModel(AllBlockPartials.SHAFT_HALF, this.blockState, this.opposite).createInstance();
        this.setup(this.shaft);
    }

    public void update() {
        this.updateRotation(this.shaft);
    }

    public void updateLight() {
        BlockPos behind = this.pos.relative(this.opposite);
        this.relight(behind, new FlatLit[]{this.shaft});
        BlockPos inFront = this.pos.relative(this.direction);
    }

    public void remove() {
        this.shaft.delete();
    }
}
