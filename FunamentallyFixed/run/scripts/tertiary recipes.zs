import crafttweaker.api.recipe.StoneCutterManager;
import crafttweaker.api.recipe.FurnaceRecipeManager;


val dirt = [["stonecut", "unpacked", "added"], ["minecraft", "dirt"], ["minecraft", "coarse_dirt"], ["quark", "dirt_bricks_stairs"], ["quark", "dirt_bricks_slab"],
["quark", "dirt_bricks_wall"], ["environmental", "dirt_bricks"], ["environmental", "dirt_brick_stairs"], ["environmental", "dirt_brick_slab"],
["environmental", "dirt_brick_wall"], ["quark", "dirt_bricks"], ["architects_palette", "cerebral_pillar"]] as string[][];

val mud = [["stonecut", "packed", "added"], ["minecraft", "packed_mud"], ["environmental", "smooth_mud"], ["quark", "polished_limestone_stairs"], ["environmental", "smooth_mud_slab"],
["create", "small_diorite_brick_wall"], ["minecraft", "mud_bricks"], ["minecraft", "mud_brick_stairs"], ["minecraft", "mud_brick_slab"],
["minecraft", "mud_brick_wall"], ["environmental", "chiseled_mud_bricks"], ["quark", "mud_pillar"]] as string[][];

val sand = [["stonecut", "packed", "added"], ["minecraft", "smooth_sandstone"], ["minecraft", "cut_sandstone"], ["create", "polished_cut_asurine_stairs"], ["minecraft", "cut_sandstone_slab"],
["create", "polished_cut_asurine_wall"], ["quark", "sandstone_bricks"], ["quark", "sandstone_bricks_stairs"], ["quark", "sandstone_bricks_slab"],
["quark", "sandstone_bricks_wall"], ["minecraft", "chiseled_sandstone"], ["fundamentallyfixed", "scoria_pillar"]] as string[][];

val red_sand = [["stonecut", "packed", "added"], ["minecraft", "smooth_red_sandstone"], ["minecraft", "cut_red_sandstone"], ["create", "cut_asurine_stairs"], ["minecraft", "cut_red_sandstone_slab"],
["create", "cut_asurine_wall"], ["quark", "red_sandstone_bricks"], ["quark", "red_sandstone_bricks_stairs"], ["quark", "red_sandstone_bricks_slab"],
["quark", "red_sandstone_bricks_wall"], ["minecraft", "chiseled_red_sandstone"], ["fundamentallyfixed", "scorchia_pillar"]] as string[][];

val gravel = [["stonecut", "unpacked", "added"], ["minecraft", "gravel"], ["quark", "diorite_bricks"], ["quark", "diorite_bricks_stairs"], ["quark", "diorite_bricks_slab"],
["quark", "diorite_bricks_wall"], ["twigs", "gravel_bricks"], ["twigs", "gravel_brick_stairs"], ["twigs", "gravel_brick_slab"],
["twigs", "gravel_brick_wall"], ["quark", "chiseled_shale_bricks"], ["quark", "tuff_pillar"]] as string[][];

val midori = [["stonecut", "packed", "added"], ["architects_palette", "chiseled_calcite"], ["create", "polished_cut_andesite"], ["create", "polished_cut_andesite_stairs"],
["create", "polished_cut_andesite_slab"], ["create", "cut_andesite_wall"], ["quark", "midori_block"], ["quark", "midori_block_stairs"],
["quark", "midori_block_slab"], ["create", "small_granite_brick_wall"], ["architects_palette", "chiseled_hadaline_bricks"], ["quark", "midori_pillar"]] as string[][];

val cement = [["stonecut", "packed", "added"], ["modestmining", "cement"], ["copperandtuffbackport", "polished_tuff"], ["copperandtuffbackport", "polished_tuff_stairs"],
["copperandtuffbackport", "polished_tuff_slab"], ["copperandtuffbackport", "polished_tuff_wall"], ["paletteblocks", "polished_tuff"], ["paletteblocks", "polished_tuff_stairs"],
["paletteblocks", "polished_tuff_slab"], ["paletteblocks", "polished_tuff_wall"], ["architects_palette", "chiseled_lapis_ore_bricks"], ["architects_palette", "tuff_pillar"]] as string[][];

val terracotta = [["stonecut", "packed", "added"], ["minecraft", "terracotta"], ["hnh", "terracotta_bricks"], ["hnh", "terracotta_brick_stairs"],
["hnh", "terracotta_brick_slab"], ["clayworks", "terracotta_brick_wall"], ["hnh", "shingles"], ["hnh", "shingle_stairs"],
["hnh", "shingle_slab"], ["clayworks", "terracotta_wall"], ["clayworks", "chiseled_terracotta_bricks"], ["fundamentallyfixed", "terracotta_pillar"]] as string[][];

val chalk = [["stonecut", "packed", "added"], ["atmospheric", "chiseled_arid_sandstone"], ["minecraft", "bricks"], ["minecraft", "brick_stairs"],
["minecraft", "brick_slab"], ["minecraft", "brick_wall"], ["modestmining", "adobe_bricks"], ["modestmining", "adobe_brick_stairs"],
["modestmining", "adobe_brick_slab"], ["modestmining", "adobe_brick_wall"], ["clayworks", "chiseled_bricks"], ["twigs", "chiseled_bricks"]] as string[][];

val ash = [["stonecut", "packed", "added"], ["atmospheric", "chiseled_red_arid_sandstone"], ["supplementaries", "ash_bricks"], ["supplementaries", "ash_bricks_stairs"],
["supplementaries", "ash_bricks_slab"], ["supplementaries", "ash_bricks_wall"], ["twigs", "silt_bricks"], ["twigs", "silt_brick_stairs"],
["twigs", "silt_brick_slab"], ["twigs", "silt_brick_wall"], ["architects_palette", "chiseled_algal_bricks"], ["twigs", "chiseled_silt_bricks"]] as string[][];

val white_terracotta = [["stonecut", "packed", "added"], ["minecraft", "white_terracotta"], ["hnh", "white_terracotta_bricks"], ["hnh", "white_terracotta_brick_stairs"],
["hnh", "white_terracotta_brick_slab"], ["clayworks", "white_terracotta_brick_wall"], ["hnh", "white_shingles"], ["hnh", "white_shingle_stairs"],
["hnh", "white_shingle_slab"], ["clayworks", "white_terracotta_wall"], ["clayworks", "chiseled_white_terracotta_bricks"],
["fundamentallyfixed", "white_terracotta_pillar"]] as string[][];

val light_gray_terracotta = [["stonecut", "packed", "added"], ["minecraft", "light_gray_terracotta"], ["hnh", "light_gray_terracotta_bricks"], ["hnh", "light_gray_terracotta_brick_stairs"],
["hnh", "light_gray_terracotta_brick_slab"], ["clayworks", "light_gray_terracotta_brick_wall"], ["hnh", "light_gray_shingles"], ["hnh", "light_gray_shingle_stairs"],
["hnh", "light_gray_shingle_slab"], ["clayworks", "light_gray_terracotta_wall"], ["clayworks", "chiseled_light_gray_terracotta_bricks"],
["fundamentallyfixed", "light_gray_terracotta_pillar"]] as string[][];

val gray_terracotta = [["stonecut", "packed", "added"], ["minecraft", "gray_terracotta"], ["hnh", "gray_terracotta_bricks"], ["hnh", "gray_terracotta_brick_stairs"],
["hnh", "gray_terracotta_brick_slab"], ["clayworks", "gray_terracotta_brick_wall"], ["hnh", "gray_shingles"], ["hnh", "gray_shingle_stairs"],
["hnh", "gray_shingle_slab"], ["clayworks", "gray_terracotta_wall"], ["clayworks", "chiseled_gray_terracotta_bricks"],
["fundamentallyfixed", "gray_terracotta_pillar"]] as string[][];

val black_terracotta = [["stonecut", "packed", "added"], ["minecraft", "black_terracotta"], ["hnh", "black_terracotta_bricks"], ["hnh", "black_terracotta_brick_stairs"],
["hnh", "black_terracotta_brick_slab"], ["clayworks", "black_terracotta_brick_wall"], ["hnh", "black_shingles"], ["hnh", "black_shingle_stairs"],
["hnh", "black_shingle_slab"], ["clayworks", "black_terracotta_wall"], ["clayworks", "chiseled_black_terracotta_bricks"],
["fundamentallyfixed", "black_terracotta_pillar"]] as string[][];

val brown_terracotta = [["stonecut", "packed", "added"], ["minecraft", "brown_terracotta"], ["hnh", "brown_terracotta_bricks"], ["hnh", "brown_terracotta_brick_stairs"],
["hnh", "brown_terracotta_brick_slab"], ["clayworks", "brown_terracotta_brick_wall"], ["hnh", "brown_shingles"], ["hnh", "brown_shingle_stairs"],
["hnh", "brown_shingle_slab"], ["clayworks", "brown_terracotta_wall"], ["clayworks", "chiseled_brown_terracotta_bricks"],
["fundamentallyfixed", "brown_terracotta_pillar"]] as string[][];

val red_terracotta = [["stonecut", "packed", "added"], ["minecraft", "red_terracotta"], ["hnh", "red_terracotta_bricks"], ["hnh", "red_terracotta_brick_stairs"],
["hnh", "red_terracotta_brick_slab"], ["clayworks", "red_terracotta_brick_wall"], ["hnh", "red_shingles"], ["hnh", "red_shingle_stairs"],
["hnh", "red_shingle_slab"], ["clayworks", "red_terracotta_wall"], ["clayworks", "chiseled_red_terracotta_bricks"],
["fundamentallyfixed", "red_terracotta_pillar"]] as string[][];

val orange_terracotta = [["stonecut", "packed", "added"], ["minecraft", "orange_terracotta"], ["hnh", "orange_terracotta_bricks"], ["hnh", "orange_terracotta_brick_stairs"],
["hnh", "orange_terracotta_brick_slab"], ["clayworks", "orange_terracotta_brick_wall"], ["hnh", "orange_shingles"], ["hnh", "orange_shingle_stairs"],
["hnh", "orange_shingle_slab"], ["clayworks", "orange_terracotta_wall"], ["clayworks", "chiseled_orange_terracotta_bricks"],
["fundamentallyfixed", "orange_terracotta_pillar"]] as string[][];

val yellow_terracotta = [["stonecut", "packed", "added"], ["minecraft", "yellow_terracotta"], ["hnh", "yellow_terracotta_bricks"], ["hnh", "yellow_terracotta_brick_stairs"],
["hnh", "yellow_terracotta_brick_slab"], ["clayworks", "yellow_terracotta_brick_wall"], ["hnh", "yellow_shingles"], ["hnh", "yellow_shingle_stairs"],
["hnh", "yellow_shingle_slab"], ["clayworks", "yellow_terracotta_wall"], ["clayworks", "chiseled_yellow_terracotta_bricks"],
["fundamentallyfixed", "yellow_terracotta_pillar"]] as string[][];

val lime_terracotta = [["stonecut", "packed", "added"], ["minecraft", "lime_terracotta"], ["hnh", "lime_terracotta_bricks"], ["hnh", "lime_terracotta_brick_stairs"],
["hnh", "lime_terracotta_brick_slab"], ["clayworks", "lime_terracotta_brick_wall"], ["hnh", "lime_shingles"], ["hnh", "lime_shingle_stairs"],
["hnh", "lime_shingle_slab"], ["clayworks", "lime_terracotta_wall"], ["clayworks", "chiseled_lime_terracotta_bricks"],
["fundamentallyfixed", "lime_terracotta_pillar"]] as string[][];

val green_terracotta = [["stonecut", "packed", "added"], ["minecraft", "green_terracotta"], ["hnh", "green_terracotta_bricks"], ["hnh", "green_terracotta_brick_stairs"],
["hnh", "green_terracotta_brick_slab"], ["clayworks", "green_terracotta_brick_wall"], ["hnh", "green_shingles"], ["hnh", "green_shingle_stairs"],
["hnh", "green_shingle_slab"], ["clayworks", "green_terracotta_wall"], ["clayworks", "chiseled_green_terracotta_bricks"],
["fundamentallyfixed", "green_terracotta_pillar"]] as string[][];

val cyan_terracotta = [["stonecut", "packed", "added"], ["minecraft", "cyan_terracotta"], ["hnh", "cyan_terracotta_bricks"], ["hnh", "cyan_terracotta_brick_stairs"],
["hnh", "cyan_terracotta_brick_slab"], ["clayworks", "cyan_terracotta_brick_wall"], ["hnh", "cyan_shingles"], ["hnh", "cyan_shingle_stairs"],
["hnh", "cyan_shingle_slab"], ["clayworks", "cyan_terracotta_wall"], ["clayworks", "chiseled_cyan_terracotta_bricks"],
["fundamentallyfixed", "cyan_terracotta_pillar"]] as string[][];

val light_blue_terracotta = [["stonecut", "packed", "added"], ["minecraft", "light_blue_terracotta"], ["hnh", "light_blue_terracotta_bricks"], ["hnh", "light_blue_terracotta_brick_stairs"],
["hnh", "light_blue_terracotta_brick_slab"], ["clayworks", "light_blue_terracotta_brick_wall"], ["hnh", "light_blue_shingles"], ["hnh", "light_blue_shingle_stairs"],
["hnh", "light_blue_shingle_slab"], ["clayworks", "light_blue_terracotta_wall"], ["clayworks", "chiseled_light_blue_terracotta_bricks"],
["fundamentallyfixed", "light_blue_terracotta_pillar"]] as string[][];

val blue_terracotta = [["stonecut", "packed", "added"], ["minecraft", "blue_terracotta"], ["hnh", "blue_terracotta_bricks"], ["hnh", "blue_terracotta_brick_stairs"],
["hnh", "blue_terracotta_brick_slab"], ["clayworks", "blue_terracotta_brick_wall"], ["hnh", "blue_shingles"], ["hnh", "blue_shingle_stairs"],
["hnh", "blue_shingle_slab"], ["clayworks", "blue_terracotta_wall"], ["clayworks", "chiseled_blue_terracotta_bricks"],
["fundamentallyfixed", "blue_terracotta_pillar"]] as string[][];

val purple_terracotta = [["stonecut", "packed", "added"], ["minecraft", "purple_terracotta"], ["hnh", "purple_terracotta_bricks"], ["hnh", "purple_terracotta_brick_stairs"],
["hnh", "purple_terracotta_brick_slab"], ["clayworks", "purple_terracotta_brick_wall"], ["hnh", "purple_shingles"], ["hnh", "purple_shingle_stairs"],
["hnh", "purple_shingle_slab"], ["clayworks", "purple_terracotta_wall"], ["clayworks", "chiseled_purple_terracotta_bricks"],
["fundamentallyfixed", "purple_terracotta_pillar"]] as string[][];

val magenta_terracotta = [["stonecut", "packed", "added"], ["minecraft", "magenta_terracotta"], ["hnh", "magenta_terracotta_bricks"], ["hnh", "magenta_terracotta_brick_stairs"],
["hnh", "magenta_terracotta_brick_slab"], ["clayworks", "magenta_terracotta_brick_wall"], ["hnh", "magenta_shingles"], ["hnh", "magenta_shingle_stairs"],
["hnh", "magenta_shingle_slab"], ["clayworks", "magenta_terracotta_wall"], ["clayworks", "chiseled_magenta_terracotta_bricks"],
["fundamentallyfixed", "magenta_terracotta_pillar"]] as string[][];

val pink_terracotta = [["stonecut", "packed", "added"], ["minecraft", "pink_terracotta"], ["hnh", "pink_terracotta_bricks"], ["hnh", "pink_terracotta_brick_stairs"],
["hnh", "pink_terracotta_brick_slab"], ["clayworks", "pink_terracotta_brick_wall"], ["hnh", "pink_shingles"], ["hnh", "pink_shingle_stairs"],
["hnh", "pink_shingle_slab"], ["clayworks", "pink_terracotta_wall"], ["clayworks", "chiseled_pink_terracotta_bricks"],
["fundamentallyfixed", "pink_terracotta_pillar"]] as string[][];

val nethercotta = [["stonecut", "packed", "added"], ["atmospheric", "polished_dolerite"], ["minecraft", "nether_bricks"], ["minecraft", "nether_brick_stairs"],
["minecraft", "nether_brick_slab"], ["minecraft", "nether_brick_wall"], ["upgrade_aquatic", "tongue_kelpy_cobblestone"], ["upgrade_aquatic", "tongue_kelpy_cobblestone_stairs"],
["upgrade_aquatic", "tongue_kelpy_cobblestone_slab"], ["upgrade_aquatic", "tongue_kelpy_cobblestone_wall"], ["minecraft", "chiseled_nether_bricks"],
["fundamentallyfixed", "nether_brick_pillar"]] as string[][];

val red_nethercotta = [["stonecut", "packed", "added"], ["atmospheric", "chiseled_saffron_travertine"], ["modestmining", "mossy_adobe_bricks"],
["modestmining", "mossy_adobe_brick_stairs"], ["modestmining", "mossy_adobe_brick_slab"], ["modestmining", "mossy_adobe_brick_wall"], ["quark", "mossy_cobblestone_bricks"],
["quark", "mossy_cobblestone_bricks_stairs"], ["quark", "mossy_cobblestone_bricks_slab"], ["quark", "mossy_cobblestone_bricks_wall"],
["architects_palette", "chiseled_coal_ore_bricks"], ["quark", "jasper_pillar"]] as string[][];

val brown_nethercotta = [["stonecut", "packed", "added"], ["atmospheric", "chiseled_ivory_travertine"], ["caverns_and_chasms", "mossy_cobblestone_bricks"],
["caverns_and_chasms", "mossy_cobblestone_brick_stairs"], ["caverns_and_chasms", "mossy_cobblestone_brick_slab"], ["caverns_and_chasms", "mossy_cobblestone_brick_wall"],
["paletteblocks", "mossy_cobblestone_bricks"], ["paletteblocks", "mossy_cobblestone_brick_stairs"], ["paletteblocks", "mossy_cobblestone_brick_slab"],
["paletteblocks", "mossy_cobblestone_brick_wall"], ["architects_palette", "chiseled_redstone_ore_bricks"], ["quark", "shale_pillar"]] as string[][];

val glow_nethercotta = [["stonecut", "packed", "added"], ["fundamentallyfixed", "glow_shroom_nethercotta"], ["fundamentallyfixed", "glow_shroom_nether_bricks"],
["fundamentallyfixed", "glow_shroom_nether_brick_stairs"], ["fundamentallyfixed", "glow_shroom_nether_brick_slab"], ["fundamentallyfixed", "glow_shroom_nether_brick_wall"],
["fundamentallyfixed", "glow_shroom_nether_shingles"], ["fundamentallyfixed", "glow_shroom_nether_shingle_stairs"], ["fundamentallyfixed", "glow_shroom_nether_shingle_slab"],
["fundamentallyfixed", "glow_shroom_nether_shingle_wall"], ["fundamentallyfixed", "chiseled_glow_shroom_nether_bricks"],
["fundamentallyfixed", "glow_shroom_nether_brick_pillar"]] as string[][];

val conk_nethercotta = [["stonecut", "packed", "added"], ["architects_palette", "chiseled_dripstone"], ["architects_palette", "calcite_bricks"],
["architects_palette", "calcite_brick_stairs"], ["architects_palette", "calcite_brick_slab"], ["architects_palette", "calcite_brick_wall"], ["twigs", "polished_calcite_bricks"],
["twigs", "polished_calcite_brick_stairs"], ["twigs", "polished_calcite_brick_slab"], ["twigs", "polished_calcite_brick_wall"], ["architects_palette", "chiseled_diamond_ore_bricks"],
["caverns_and_chasms", "spinel_pillar"]] as string[][];

val crimson_nethercotta = [["stonecut", "packed", "added"], ["atmospheric", "chiseled_persimmon_travertine"], ["minecraft", "red_nether_bricks"], ["minecraft", "red_nether_brick_stairs"],
["minecraft", "red_nether_brick_slab"], ["minecraft", "red_nether_brick_wall"], ["quark", "tuff_bricks"], ["quark", "tuff_bricks_stairs"], ["quark", "tuff_bricks_slab"],
["quark", "tuff_bricks_wall"], ["architects_palette", "chiseled_iron_ore_bricks"], ["fundamentallyfixed", "red_nether_brick_pillar"]] as string[][];

val warped_nethercotta = [["stonecut", "packed", "added"], ["atmospheric", "chiseled_peach_travertine"], ["quark", "blue_nether_bricks"], ["quark", "blue_nether_bricks_stairs"],
["quark", "blue_nether_bricks_slab"], ["quark", "blue_nether_bricks_wall"], ["quark", "polished_tuff"], ["quark", "polished_tuff_stairs"], ["quark", "polished_tuff_slab"],
["create", "polished_cut_granite_wall"], ["architects_palette", "chiseled_gold_ore_bricks"], ["fundamentallyfixed", "blue_nether_brick_pillar"]] as string[][];

val luminant_nethercotta = [["stonecut", "packed", "added"], ["fundamentallyfixed", "luminous_fungus_nethercotta"], ["fundamentallyfixed", "luminous_fungus_nether_bricks"],
["fundamentallyfixed", "luminous_fungus_nether_brick_stairs"],["fundamentallyfixed", "luminous_fungus_nether_brick_slab"], ["fundamentallyfixed", "luminous_fungus_nether_brick_wall"],
["fundamentallyfixed", "luminous_fungus_nether_shingles"], ["fundamentallyfixed", "luminous_fungus_nether_shingle_stairs"],
["fundamentallyfixed", "luminous_fungus_nether_shingle_slab"], ["fundamentallyfixed", "luminous_fungus_nether_shingle_wall"],
["fundamentallyfixed", "chiseled_luminous_fungus_nether_bricks"], ["fundamentallyfixed", "luminous_fungus_nether_brick_pillar"]] as string[][];

val withered_nethercotta = [["stonecut", "packed", "added"], ["architects_palette", "chiseled_basalt_tiles"], ["architects_palette", "tuff_bricks"],
["architects_palette", "tuff_brick_stairs"], ["architects_palette", "tuff_brick_slab"], ["architects_palette", "tuff_brick_wall"], ["twigs", "polished_tuff_bricks"],
["twigs", "polished_tuff_brick_stairs"], ["twigs", "polished_tuff_brick_slab"], ["twigs", "polished_tuff_brick_wall"], ["architects_palette", "chiseled_emerald_ore_bricks"],
["architects_palette", "olivestone_pillar"]] as string[][];

val salt = [["stonecut", "unpacked", "added"], ["spelunkery", "salt_block"], ["spelunkery", "rock_salt_block"], ["spelunkery", "rock_salt_stairs"], ["spelunkery", "rock_salt_slab"],
["spelunkery", "rock_salt_wall"], ["spelunkery", "polished_rock_salt"], ["spelunkery", "polished_rock_salt_stairs"], ["spelunkery", "polished_rock_salt_slab"],
["spelunkery", "polished_rock_salt_wall"], ["spelunkery", "rock_salt_bricks"], ["fundamentallyfixed", "rock_salt_pillar"]] as string[][];

val netherrack = [["stonecut", "packed", "added"], ["minecraft", "netherrack"], ["paletteblocks", "polished_netherrack"], ["paletteblocks", "polished_netherrack_stairs"],
["paletteblocks", "polished_netherrack_slab"], ["paletteblocks", "polished_netherrack_wall"], ["quark", "netherrack_bricks"], ["quark", "netherrack_bricks_stairs"],
["quark", "netherrack_bricks_slab"], ["quark", "netherrack_bricks_wall"], ["twigs", "cracked_polished_tuff_bricks"], ["quark", "diorite_pillar"]] as string[][];

val soulsand = [["stonecut", "packed", "added"], ["quark", "soul_sandstone"], ["infernalexp", "soul_slate"], ["infernalexp", "soul_slate_stairs"], ["infernalexp", "soul_slate_slab"],
["create", "small_crimsite_brick_wall"], ["infernalexp", "soul_stone_bricks"], ["infernalexp", "soul_stone_brick_stairs"], ["infernalexp", "soul_stone_brick_slab"],
["infernalexp", "soul_stone_brick_wall"], ["infernalexp", "chiseled_soul_stone_bricks"], ["fundamentallyfixed", "soul_slate_pillar"]] as string[][];

val basalt = [["stonecut", "unpacked", "added"], ["infernalexp", "silt"], ["minecraft", "basalt"], ["infernalexp", "basalt_stairs"], ["infernalexp", "basalt_slab"],
["infernalexp", "basalt_wall"], ["minecraft", "polished_basalt"], ["infernalexp", "basalt_brick_stairs"], ["infernalexp", "polished_basalt_slab"],
["infernalexp", "basalt_brick_wall"], ["twigs", "chiseled_smooth_basalt_bricks"], ["twigs", "polished_basalt_bricks"]] as string[][];

val dullstone = [["stonecut", "unpacked", "added"], ["infernalexp", "glowdust_stone"], ["infernalexp", "dullstone"], ["infernalexp", "dullstone_brick_stairs"],
["infernalexp", "dullstone_brick_slab"], ["infernalexp", "dullstone_brick_wall"], ["infernalexp", "smooth_dullstone"], ["infernalexp", "smooth_dullstone_stairs"],
["infernalexp", "smooth_dullstone_slab"], ["twigs", "mossy_cobblestone_brick_wall"], ["infernalexp", "chiseled_dullstone_bricks"], ["fundamentallyfixed", "dullstone_pillar"]] as string[][];

val dimstone = [["stonecut", "unpacked", "added"], ["infernalexp", "trapped_glowdust_sand"], ["infernalexp", "dimstone"], ["infernalexp", "dimstone_brick_stairs"],
["infernalexp", "dimstone_brick_slab"], ["infernalexp", "dimstone_brick_wall"], ["infernalexp", "smooth_dimstone"], ["infernalexp", "smooth_dimstone_stairs"],
["infernalexp", "smooth_dimstone_slab"], ["fundamentallyfixed", "dimstone_wall"], ["infernalexp", "chiseled_dimstone_bricks"], ["fundamentallyfixed", "dimstone_pillar"]] as string[][];

val glowstone = [["stonecut", "unpacked", "added"], ["infernalexp", "glowdust_sand"], ["minecraft", "glowstone"], ["infernalexp", "glowstone_brick_stairs"],
["infernalexp", "glowstone_brick_slab"], ["infernalexp", "glowstone_brick_wall"], ["infernalexp", "smooth_glowstone"], ["infernalexp", "smooth_glowstone_stairs"],
["infernalexp", "smooth_glowstone_slab"], ["fundamentallyfixed", "glowstone_wall"], ["infernalexp", "chiseled_glowstone_bricks"], ["fundamentallyfixed", "glowstone_pillar"]] as string[][];

val florarock = [["stonecut", "unpacked", "added"], ["aether", "aether_dirt"], ["fundamentallyfixed", "coarse_florarock"], ["fundamentallyfixed", "florarock_brick_stairs"],
["fundamentallyfixed", "florarock_brick_slab"], ["fundamentallyfixed", "florarock_brick_wall"], ["environmental", "dirt_tiles"], ["environmental", "dirt_tile_stairs"],
["environmental", "dirt_tile_slab"], ["environmental", "dirt_tile_wall"], ["fundamentallyfixed", "florarock_bricks"], ["architects_palette", "flint_pillar"]] as string[][];

val flomud = [["stonecut", "packed", "added"], ["architects_palette", "chiseled_moonshale"], ["upgrade_aquatic", "ochre_kelpy_cobblestone"],
["upgrade_aquatic", "ochre_kelpy_cobblestone_stairs"], ["upgrade_aquatic", "ochre_kelpy_cobblestone_slab"], ["upgrade_aquatic", "ochre_kelpy_cobblestone_wall"],
["upgrade_aquatic", "polar_kelpy_cobblestone"], ["upgrade_aquatic", "polar_kelpy_cobblestone_stairs"], ["upgrade_aquatic", "polar_kelpy_cobblestone_slab"],
["upgrade_aquatic", "polar_kelpy_cobblestone_wall"], ["quark", "carved_mud_bricks"], ["quark", "limestone_pillar"]] as string[][];

val quicksoil = [["stonecut", "packed", "added"], ["quark", "smooth_soul_sandstone"], ["atmospheric", "red_arid_sandstone_bricks"],
["atmospheric", "red_arid_sandstone_brick_stairs"], ["atmospheric", "red_arid_sandstone_brick_slab"], ["atmospheric", "red_arid_sandstone_brick_wall"],
["atmospheric", "red_arid_sandstone"], ["atmospheric", "red_arid_sandstone_stairs"], ["atmospheric", "red_arid_sandstone_slab"], ["atmospheric", "red_arid_sandstone_wall"],
["minecraft", "polished_granite"], ["architects_palette", "dripstone_pillar"]] as string[][];

val gravisand = [["stonecut", "packed", "added"], ["quark", "chiseled_tuff_bricks"], ["minecraft", "mossy_stone_bricks"], ["minecraft", "mossy_stone_brick_stairs"],
["minecraft", "mossy_stone_brick_slab"], ["minecraft", "mossy_stone_brick_wall"], ["minecraft", "mossy_cobblestone"], ["minecraft", "mossy_cobblestone_stairs"],
["minecraft", "mossy_cobblestone_slab"], ["minecraft", "mossy_cobblestone_wall"], ["twigs", "cracked_polished_rhyolite_bricks"],
["architects_palette", "calcite_pillar"]] as string[][];

val permafrost = [["stonecut", "unpacked", "added"], ["fundamentallyfixed", "permafrost_gravel"], ["quark", "permafrost"], ["quark", "permafrost_stairs"],
["quark", "permafrost_slab"], ["quark", "permafrost_wall"], ["quark", "permafrost_bricks"], ["quark", "permafrost_bricks_stairs"], ["quark", "permafrost_bricks_slab"],
["quark", "permafrost_bricks_wall"], ["atmospheric", "dolerite"], ["fundamentallyfixed", "permafrost_pillar"]] as string[][];

val purpur = [["stonecut", "packed", "added"], ["caverns_and_chasms", "chiseled_dripstone_shingles"], ["create", "polished_cut_diorite"], ["create", "polished_cut_diorite_stairs"],
["create", "polished_cut_diorite_slab"], ["create", "polished_cut_diorite_wall"], ["minecraft", "purpur_block"], ["minecraft", "purpur_stairs"], ["minecraft", "purpur_slab"],
["minecraft", "diorite_wall"], ["quark", "chiseled_limestone_bricks"], ["minecraft", "purpur_pillar"]] as string[][];

val packedice = [["stonecut", "packed", "added"], ["minecraft", "packed_ice"], ["architects_palette", "polished_packed_ice"], ["architects_palette", "polished_packed_ice_stairs"],
["architects_palette", "polished_packed_ice_slab"], ["architects_palette", "polished_packed_ice_wall"], ["windswept", "packed_ice_bricks"], ["windswept", "packed_ice_brick_stairs"],
["windswept", "packed_ice_brick_slab"], ["windswept", "packed_ice_brick_wall"], ["windswept", "chiseled_packed_ice_bricks"], ["fundamentallyfixed", "packed_ice_pillar"]] as string[][];

val blueice = [["stonecut", "packed", "added"], ["minecraft", "blue_ice"], ["ecologics", "ice_bricks"], ["ecologics", "ice_brick_stairs"], ["ecologics", "ice_brick_slab"],
["ecologics", "ice_brick_wall"], ["windswept", "blue_ice_bricks"], ["windswept", "blue_ice_brick_stairs"], ["windswept", "blue_ice_brick_slab"], ["windswept", "blue_ice_brick_wall"],
["windswept", "chiseled_blue_ice_bricks"], ["fundamentallyfixed", "blue_ice_pillar"]] as string[][];

val snow = [["nothing", "unpacked", "added"], ["minecraft", "snow"], ["minecraft", "snow_block"], ["ecologics", "snow_brick_stairs"], ["ecologics", "snow_brick_slab"],
["ecologics", "snow_brick_wall"], ["windswept", "snow_bricks"], ["windswept", "snow_brick_stairs"], ["windswept", "snow_brick_slab"], ["windswept", "snow_brick_wall"],
["ecologics", "snow_bricks"], ["fundamentallyfixed", "snow_pillar"]] as string[][];

val chocolate = [["stonecut", "unpacked", "added"], ["neapolitan", "chocolate_block"], ["neapolitan", "chocolate_bricks"], ["neapolitan", "chocolate_brick_stairs"],
["neapolitan", "chocolate_brick_slab"], ["neapolitan", "chocolate_brick_wall"], ["neapolitan", "chocolate_tiles"], ["neapolitan", "chocolate_tile_stairs"],
["neapolitan", "chocolate_tile_slab"], ["neapolitan", "chocolate_tile_wall"], ["neapolitan", "chiseled_chocolate_bricks"], ["quark", "granite_pillar"]] as string[][];

val shell = [["stonecut", "packed", "added"], ["ecologics", "seashell_block"], ["autumnity", "snail_shell_bricks"], ["autumnity", "snail_shell_brick_stairs"],
["autumnity", "snail_shell_brick_slab"], ["autumnity", "snail_shell_brick_wall"], ["ecologics", "seashell_tiles"], ["ecologics", "seashell_tile_stairs"],
["ecologics", "seashell_tile_slab"], ["ecologics", "seashell_tile_wall"], ["autumnity", "chiseled_snail_shell_bricks"], ["architects_palette", "onyx_pillar"]] as string[][];

val bone = [["stonecut", "packed", "added"], ["minecraft", "bone_block"], ["upgrade_aquatic", "tooth_tiles"], ["upgrade_aquatic", "tooth_stairs"], ["upgrade_aquatic", "tooth_slab"],
["upgrade_aquatic", "tooth_wall"], ["architects_palette", "osseous_bricks"], ["architects_palette", "osseous_brick_stairs"], ["architects_palette", "osseous_brick_slab"],
["architects_palette", "osseous_brick_wall"], ["architects_palette", "osseous_skull"], ["architects_palette", "osseous_pillar"]] as string[][];

val withered = [["stonecut", "packed", "added"], ["architects_palette", "withered_bone_block"], ["alexsabnormalities", "shark_tooth_tiles"],
["alexsabnormalities", "shark_tooth_tile_stairs"], ["alexsabnormalities", "shark_tooth_tile_slab"], ["alexsabnormalities", "shark_tooth_tile_wall"],
["architects_palette", "withered_osseous_bricks"], ["architects_palette", "withered_osseous_brick_stairs"],  ["architects_palette", "withered_osseous_brick_slab"],
["architects_palette", "withered_osseous_brick_wall"], ["architects_palette", "withered_osseous_skull"], ["architects_palette", "withered_osseous_pillar"]] as string[][];

val bloodstone = [["stonecut", "packed", "added"], ["twigs", "bloodstone"], ["twigs", "polished_bloodstone"], ["twigs", "polished_bloodstone_stairs"],
["twigs", "polished_bloodstone_slab"], ["twigs", "bloodstone_wall"], ["twigs", "polished_bloodstone_bricks"], ["twigs", "polished_bloodstone_brick_stairs"],
["twigs", "polished_bloodstone_brick_slab"], ["twigs", "polished_bloodstone_brick_wall"], ["twigs", "cracked_polished_bloodstone_bricks"], ["architects_palette", "esoterrack_pillar"]
] as string[][];

val glance = [["stonecut", "packed", "added"], ["oreganized", "glance"], ["oreganized", "polished_glance"], ["oreganized", "polished_glance_stairs"],
["oreganized", "polished_glance_slab"], ["oreganized", "glance_wall"], ["oreganized", "glance_bricks"], ["oreganized", "glance_brick_stairs"], ["oreganized", "glance_brick_slab"],
["oreganized", "glance_brick_wall"], ["oreganized", "chiseled_glance"], ["fundamentallyfixed", "glance_pillar"] ] as string[][];

val eumus = [["stonecut", "unpacked", "added"], ["endergetic", "eumus"], ["infernalexp", "basalt_bricks"], ["upgrade_aquatic", "polar_kelpy_stone_brick_stairs"],
["upgrade_aquatic", "polar_kelpy_stone_brick_slab"], ["upgrade_aquatic", "polar_kelpy_stone_brick_wall"], ["endergetic", "eumus_bricks"], ["endergetic", "eumus_brick_stairs"],
["endergetic", "eumus_brick_slab"], ["endergetic", "eumus_brick_wall"], ["endergetic", "cracked_eumus_bricks"], ["architects_palette", "entwine_pillar"]] as string[][];

val verditen = [["stonecut", "packed", "added"], ["architects_palette", "chiseled_olivestone"], ["upgrade_aquatic", "tongue_kelpy_stone_bricks"],
["upgrade_aquatic", "tongue_kelpy_stone_brick_stairs"], ["upgrade_aquatic", "tongue_kelpy_stone_brick_slab"], ["upgrade_aquatic", "tongue_kelpy_stone_brick_wall"],
["upgrade_aquatic", "kelpy_stone_bricks"], ["upgrade_aquatic", "kelpy_stone_brick_stairs"], ["upgrade_aquatic", "kelpy_stone_brick_slab"],
["upgrade_aquatic", "kelpy_stone_brick_wall"], ["atmospheric", "chiseled_carmine_shingles"], ["architects_palette", "sunmetal_pillar"]] as string[][];


var tertiarySets = [dirt, mud, sand, red_sand, gravel, midori, cement, terracotta, chalk, ash, white_terracotta, light_gray_terracotta, gray_terracotta, black_terracotta,
brown_terracotta, red_terracotta, orange_terracotta, yellow_terracotta, lime_terracotta, green_terracotta, cyan_terracotta, light_blue_terracotta, blue_terracotta,
purple_terracotta, magenta_terracotta, pink_terracotta, nethercotta, red_nethercotta, brown_nethercotta, glow_nethercotta, conk_nethercotta, crimson_nethercotta,
warped_nethercotta, luminant_nethercotta, withered_nethercotta, salt, netherrack, soulsand, basalt, dullstone, dimstone, glowstone, florarock, flomud, quicksoil, gravisand,
permafrost, purpur, packedice, blueice, snow, chocolate, shell, bone, withered, bloodstone, glance, eumus, verditen] as string[][][];

for tertiarySet in tertiarySets {
  val info = tertiarySet[0];
  val cutType = info[0];
  val packType = info[1];
  val secondType = info[2];
  val baseBlock = tertiarySet[1];
  val baseBlockID = baseBlock[0] + ":" + baseBlock[1];
  val baseBlockName = baseBlock[0] + "_" + baseBlock[1];
  val firstBlock = tertiarySet[2];
  val firstBlockID = firstBlock[0] + ":" + firstBlock[1];
  val firstBlockName = firstBlock[0] + "_" + firstBlock[1];
  val firstStair = tertiarySet[3];
  val firstStairID = firstStair[0] + ":" + firstStair[1];
  val firstStairName = firstStair[0] + "_" + firstStair[1];
  val firstSlab = tertiarySet[4];
  val firstSlabID = firstSlab[0] + ":" + firstSlab[1];
  val firstSlabName = firstSlab[0] + "_" + firstSlab[1];
  val firstWall = tertiarySet[5];
  val firstWallID = firstWall[0] + ":" + firstWall[1];
  val firstWallName = firstWall[0] + "_" + firstWall[1];
  val secondBlock = tertiarySet[6];
  val secondBlockID = secondBlock[0] + ":" + secondBlock[1];
  val secondBlockName = secondBlock[0] + "_" + secondBlock[1];
  val secondStair = tertiarySet[7];
  val secondStairID = secondStair[0] + ":" + secondStair[1];
  val secondStairName = secondStair[0] + "_" + secondStair[1];
  val secondSlab = tertiarySet[8];
  val secondSlabID = secondSlab[0] + ":" + secondSlab[1];
  val secondSlabName = secondSlab[0] + "_" + secondSlab[1];
  val secondWall = tertiarySet[9];
  val secondWallID = secondWall[0] + ":" + secondWall[1];
  val secondWallName = secondWall[0] + "_" + secondWall[1];
  val chiseledBlock = tertiarySet[10];
  val chiseledBlockID = chiseledBlock[0] + ":" + chiseledBlock[1];
  val chiseledBlockName = chiseledBlock[0] + "_" + chiseledBlock[1];
  val pillarBlock = tertiarySet[11];
  val pillarBlockID = pillarBlock[0] + ":" + pillarBlock[1];
  val pillarBlockName = pillarBlock[0] + "_" + pillarBlock[1];

  // Base Block to First Block -----------------------------------
  if (packType == "packed") {
    craftingTable.addShaped(firstBlockName + "_to_" + baseBlockName, <item: ${firstBlockID}> * 4, [
    [<item: ${baseBlockID}>, <item:${baseBlockID}>],
    [<item: ${baseBlockID}>, <item:${baseBlockID}>]
    ]);

    if (cutType == "stonecut") {
      stoneCutter.addRecipe(firstBlockName + "_cut_" + baseBlockName, <item:${firstBlockID}>, <item:${baseBlockID}>);

      stoneCutter.addRecipe(baseBlockName + "_cut_" + firstStairName, <item:${firstStairID}>, <item:${baseBlockID}>);
      stoneCutter.addRecipe(baseBlockName + "_cut_" + firstSlabName, <item:${firstSlabID}>, <item:${baseBlockID}>);
      stoneCutter.addRecipe(baseBlockName + "_cut_" + firstWallName, <item:${firstWallID}>, <item:${baseBlockID}>);

      if (secondType == "added") {
        stoneCutter.addRecipe(baseBlockName + "_cut_" + secondStairName, <item:${secondStairID}>, <item:${baseBlockID}>);
        stoneCutter.addRecipe(baseBlockName + "_cut_" + secondSlabName, <item:${secondSlabID}>, <item:${baseBlockID}>);
        stoneCutter.addRecipe(baseBlockName + "_cut_" + secondWallName, <item:${secondWallID}>, <item:${baseBlockID}>);
        stoneCutter.addRecipe(baseBlockName + "_cut_" + secondBlockName, <item:${secondBlockID}>, <item:${baseBlockID}>);
      }
    }
  }

  // First Block Crafts -----------------------------------
  craftingTable.addShaped(firstBlockName + "_to_" + firstStairName, <item:${firstStairID}> * 4, [
  [<item:${firstBlockID}>, <item:minecraft:air>],
  [<item:${firstBlockID}>, <item:${firstBlockID}>]
  ]);

  craftingTable.addShaped(firstBlockName + "_to_" + firstSlabName, <item:${firstSlabID}> * 4, [
  [<item:${firstBlockID}>, <item:${firstBlockID}>]
  ]);

  craftingTable.addShaped(firstBlockName + "_to_" + firstWallName, <item:${firstWallID}> * 3, [
  [<item:${firstBlockID}>, <item:${firstBlockID}>, <item:${firstBlockID}>]
  ]);

  if (cutType == "stonecut") {
    stoneCutter.addRecipe(firstBlockName + "_cut_" + firstStairName, <item:${firstWallID}>, <item:${firstBlockID}>);
    stoneCutter.addRecipe(firstBlockName + "_cut_" + firstSlabName, <item:${firstSlabID}>, <item:${firstBlockID}>);
    stoneCutter.addRecipe(firstBlockName + "_cut_" + firstWallName, <item:${firstWallID}>, <item:${firstBlockID}>);

    if (secondType == "added") {
      stoneCutter.addRecipe(firstBlockName + "_cut_" + secondStairName, <item:${secondStairID}>, <item:${firstBlockID}>);
      stoneCutter.addRecipe(firstBlockName + "_cut_" + secondSlabName, <item:${secondSlabID}>, <item:${firstBlockID}>);
      stoneCutter.addRecipe(firstBlockName + "_cut_" + secondWallName, <item:${secondWallID}>, <item:${firstBlockID}>);
    }
  }

  // Second Block Crafts -----------------------------------
  if (secondType == "added") {
    craftingTable.addShaped(secondBlockName + "_to_" + firstBlockName, <item: ${secondBlockID}> * 4, [
    [<item: ${firstBlockID}>, <item:${firstBlockID}>],
    [<item: ${firstBlockID}>, <item:${firstBlockID}>]
    ]);
  }

  craftingTable.addShaped(secondBlockName + "_to_" + secondStairName, <item:${secondStairID}> * 4, [
  [<item:${secondBlockID}>, <item:minecraft:air>],
  [<item:${secondBlockID}>, <item:${secondBlockID}>]
  ]);

  craftingTable.addShaped(secondBlockName + "_to_" + secondSlabName, <item:${secondSlabID}> * 4, [
  [<item:${secondBlockID}>, <item:${secondBlockID}>]
  ]);

  craftingTable.addShaped(secondBlockName + "_to_" + secondWallName, <item:${secondWallID}> * 3, [
  [<item:${secondBlockID}>, <item:${secondBlockID}>, <item:${secondBlockID}>]
  ]);

  if (cutType == "stonecut") {
    stoneCutter.addRecipe(secondBlockName + "_cut_" + secondStairName, <item:${secondWallID}>, <item:${secondBlockID}>);
    stoneCutter.addRecipe(secondBlockName + "_cut_" + secondSlabName, <item:${secondSlabID}>, <item:${secondBlockID}>);
    stoneCutter.addRecipe(secondBlockName + "_cut_" + secondWallName, <item:${secondWallID}>, <item:${secondBlockID}>);

    if (secondType == "added") {
      stoneCutter.addRecipe(firstBlockName + "_cut_" + secondBlockName, <item:${secondBlockID}>, <item:${firstBlockID}>);
    }
  }

  // Extra Block Crafts -----------------------------------
  craftingTable.addShaped(firstBlockName + "_to_" + chiseledBlockName, <item:${chiseledBlockID}> * 2, [
  [<item:${firstBlockID}>],
  [<item:${firstBlockID}>]
  ]);

  craftingTable.addShaped(firstBlockName + "_to_" + pillarBlockName, <item:${pillarBlockID}> * 2, [
  [<item:${secondBlockID}>],
  [<item:${secondBlockID}>]
  ]);

  if (cutType == "stonecut") {
    stoneCutter.addRecipe(firstBlockName + "_cut_" + chiseledBlockName, <item: ${chiseledBlockID}>, <item: ${firstBlockID}>);
    stoneCutter.addRecipe(firstBlockName + "_cut_" + pillarBlockName, <item: ${pillarBlockID}>, <item: ${firstBlockID}>);

    if (packType == "packed") {
    stoneCutter.addRecipe(baseBlockName + "_cut_" + chiseledBlockName, <item: ${chiseledBlockID}>, <item: ${baseBlockID}>);
    stoneCutter.addRecipe(baseBlockName + "_cut_" + pillarBlockName, <item: ${pillarBlockID}>, <item: ${baseBlockID}>);
    }

    if (secondType == "added") {
      stoneCutter.addRecipe(secondBlockName + "_cut_" + chiseledBlockName, <item: ${chiseledBlockID}>, <item: ${secondBlockID}>);
      stoneCutter.addRecipe(secondBlockName + "_cut_" + pillarBlockName, <item: ${pillarBlockID}>, <item: ${secondBlockID}>);
    }
  }
}