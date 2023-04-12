package com.ncpbails.fundamentallyfixed.block.entity;

import com.ncpbails.fundamentallyfixed.block.ModCBlocks;
import com.ncpbails.fundamentallyfixed.block.entity.animation.DynamoBearingInstance;
import com.ncpbails.fundamentallyfixed.block.entity.animation.DynamoBearingRenderer;
import com.ncpbails.fundamentallyfixed.block.entity.animation.DynamoInstance;
import com.ncpbails.fundamentallyfixed.block.entity.animation.DynamoRenderer;
import com.ncpbails.fundamentallyfixed.block.entity.custom.RedstoneDynamoTileEntity;
import com.tterrag.registrate.util.entry.BlockEntityEntry;

import static com.simibubi.create.Create.REGISTRATE;

public class ModCBlockEntities {
    //public static final DeferredRegister<BlockEntityType<?>> BLOCK_ENTITIES =
            //DeferredRegister.create(ForgeRegistries.BLOCK_ENTITY_TYPES, FundamentallyFixed.MOD_ID);

    //public static final RegistryObject<BlockEntityType<KineticTileEntity>> REDSTONE_DYNAMO = BLOCK_ENTITIES.register("redstone_dynamo", () ->
    //                BlockEntityType.Builder.of(KineticTileEntity::new, ModBlocks.REDSTONE_DYNAMO.get()).build(null));

    //public static final BlockEntityEntry<RedstoneDynamoTileEntity> REDSTONE_DYNAMO = FundamentallyFixed.registrate()
    //        .tileEntity("redstone_dynamo_entity", RedstoneDynamoTileEntity::new)
    //        .instance(() ->  DynamoInstance::new)
            //.validBlocks(ModBlocks.REDSTONE_DYNAMO)
    //        .validBlocks((NonNullSupplier<? extends Block>) ModCBlocks.REDSTONE_DYNAMO.get())
    //        .renderer(() -> DynamoRenderer::new)
    //        .register();

    public static final BlockEntityEntry<RedstoneDynamoTileEntity> REDSTONE_DYNAMO = REGISTRATE
            .tileEntity("redstone_dynamo", RedstoneDynamoTileEntity::new)
            .instance(() -> DynamoInstance::new, false)
            .validBlocks(ModCBlocks.REDSTONE_DYNAMO)
            .renderer(() -> DynamoRenderer::new)
            .register();

    public static final BlockEntityEntry<RedstoneDynamoTileEntity> DYNAMO_BEARING = REGISTRATE
            .tileEntity("dynamo_bearing", RedstoneDynamoTileEntity::new)
            .instance(() -> DynamoBearingInstance::new, false)
            .validBlocks(ModCBlocks.DYNAMO_BEARING)
            .renderer(() -> DynamoBearingRenderer::new)
            .register();

    public static void register(//IEventBus eventBus
    ) {
        //BLOCK_ENTITIES.register(eventBus);
    }
}
