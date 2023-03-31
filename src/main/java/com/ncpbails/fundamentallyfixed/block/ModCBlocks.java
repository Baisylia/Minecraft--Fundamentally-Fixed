package com.ncpbails.fundamentallyfixed.block;

import com.ncpbails.fundamentallyfixed.FundamentallyFixed;
import com.ncpbails.fundamentallyfixed.block.custom.RedstoneDynamoBlock;
import com.simibubi.create.AllTags;
import com.simibubi.create.foundation.block.BlockStressDefaults;
import com.simibubi.create.foundation.data.BlockStateGen;
import com.simibubi.create.foundation.data.CreateRegistrate;
import com.simibubi.create.foundation.data.SharedProperties;
import com.simibubi.create.foundation.data.TagGen;
import com.tterrag.registrate.util.entry.BlockEntry;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.world.item.CreativeModeTab;
import net.minecraft.world.level.material.MaterialColor;

import static com.simibubi.create.foundation.data.ModelGen.customItemModel;

public class ModCBlocks {
    private static final CreateRegistrate REGISTRATE = FundamentallyFixed.registrate()
            .creativeModeTab(() -> CreativeModeTab.TAB_BUILDING_BLOCKS);

    public static final BlockEntry<RedstoneDynamoBlock> REDSTONE_DYNAMO = REGISTRATE.block("redstone_dynamo", RedstoneDynamoBlock::new)
            .initialProperties(SharedProperties::stone)
            .properties(p -> p.color(MaterialColor.PODZOL))
            .blockstate(BlockStateGen.directionalBlockProvider(true))
            .addLayer(() -> RenderType::cutoutMipped)
            .transform(TagGen.axeOrPickaxe())
            .transform(BlockStressDefaults.setImpact(2.0))
            .item()
            .transform(customItemModel())
            .register();

    public static void register() {
    }
}
