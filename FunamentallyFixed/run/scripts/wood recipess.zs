import mods.farmersdelight.CookingPot;
import crafttweaker.api.recipe.StoneCutterManager;
//import mods.clayworks.Kiln;

val oak = [["minecraft", "oak_log"], ["minecraft", "oak_wood"], ["minecraft", "stripped_oak_log"], ["minecraft", "stripped_oak_wood"], ["fundamentallyfixed", "oak_logs"],
["quark", "hollow_oak_log"], ["minecraft", "oak_planks"], ["minecraft", "oak_stairs"], ["minecraft", "oak_slab"], ["minecraft", "oak_fence"], ["minecraft", "oak_fence_gate"],
["modestmining", "carved_oak_planks"], ["modestmining", "chiseled_oak_planks"], ["modestmining", "oak_boards"], ["modestmining", "oak_tiles"], ["modestmining", "oak_pillar"],
["woodworks", "oak_boards"], ["modestmining", "oak_board_stairs"], ["modestmining", "oak_board_slab"], ["modestmining", "oak_board_wall"], ["modestmining", "oak_tile_stairs"],
["modestmining", "oak_tile_slab"], ["modestmining", "oak_tile_wall"], ["modestmining", "oak_carved_plank_stairs"], ["modestmining", "oak_carved_plank_slab"],
["modestmining", "oak_carved_plank_wall"], ["create", "oak_window"], ["create", "oak_window_pane"], ["minecraft", "ladder"], ["minecraft", "oak_door"],
["minecraft", "oak_trapdoor"], ["minecraft", "oak_sign"], ["supplementaries", "hanging_sign_oak"], ["supplementaries", "sign_post_oak"], ["minecraft", "bookshelf"],
["woodworks", "oak_chest"], ["woodworks", "oak_trapped_chest"], ["minecraft", "oak_boat"], ["boatload", "large_oak_boat"], ["minecraft", "oak_chest_boat"],
["boatload", "oak_furnace_boat"], ["minecraft", "beehive"], ["farmersdelight", "oak_cabinet"], ["another_furniture", "oak_drawer"], ["another_furniture", "oak_shutter"],
["another_furniture", "oak_planter_box"], ["another_furniture", "oak_shelf"], ["another_furniture", "oak_table"], ["another_furniture", "oak_chair"],
["quark", "oak_post"], ["quark", "stripped_oak_post"]] as string[][];

val wisteria = [["environmental", "wisteria_log"], ["environmental", "wisteria_wood"], ["environmental", "stripped_wisteria_log"], ["environmental", "stripped_wisteria_wood"],
["fundamentallyfixed", "wisteria_logs"], ["everycomp", "q/environmental/hollow_wisteria_log"], ["environmental", "wisteria_planks"], ["environmental", "wisteria_stairs"],
["environmental", "wisteria_slab"], ["environmental", "wisteria_fence"], ["environmental", "wisteria_fence_gate"], ["abnormalmining", "carved_wisteria_planks"],
["abnormalmining", "chiseled_wisteria_planks"], ["abnormalmining", "wisteria_boards"], ["abnormalmining", "wisteria_tiles"], ["abnormalmining", "wisteria_pillar"],
["environmental", "wisteria_boards"], ["abnormalmining", "wisteria_board_stairs"], ["abnormalmining", "wisteria_board_slab"], ["abnormalmining", "wisteria_board_wall"],
["abnormalmining", "wisteria_tile_stairs"], ["abnormalmining", "wisteria_tile_slab"], ["abnormalmining", "wisteria_tile_wall"], ["abnormalmining", "wisteria_carved_plank_stairs"],
["abnormalmining", "wisteria_carved_plank_slab"], ["abnormalmining", "wisteria_carved_plank_wall"], ["everycomp", "c/environmental/wisteria_window"],
["everycomp", "c/environmental/wisteria_window_pane"], ["environmental", "wisteria_ladder"], ["environmental", "wisteria_door"], ["environmental", "wisteria_trapdoor"],
["environmental", "wisteria_sign"], ["supplementaries", "environmental/hanging_sign_wisteria"], ["supplementaries", "environmental/sign_post_wisteria"],
["environmental", "wisteria_bookshelf"], ["environmental", "wisteria_chest"], ["environmental", "wisteria_trapped_chest"], ["environmental", "wisteria_boat"],
["environmental", "large_wisteria_boat"], ["environmental", "wisteria_chest_boat"], ["environmental", "wisteria_furnace_boat"], ["environmental", "wisteria_beehive"],
["abnormals_delight", "wisteria_cabinet"], ["everycomp", "af/environmental/wisteria_drawer"], ["everycomp", "af/environmental/wisteria_shutter"],
["everycomp", "af/environmental/wisteria_planter_box"], ["everycomp", "af/environmental/wisteria_shelf"], ["everycomp", "af/environmental/wisteria_table"],
["everycomp", "af/environmental/wisteria_chair"], ["environmental", "wisteria_post"], ["environmental", "stripped_wisteria_post"]] as string[][];

val driftwood = [["upgrade_aquatic", "driftwood_log"], ["upgrade_aquatic", "driftwood"], ["upgrade_aquatic", "stripped_driftwood_log"], ["upgrade_aquatic", "stripped_driftwood"],
["fundamentallyfixed", "driftwood_logs"], ["everycomp", "q/upgrade_aquatic/hollow_driftwood_log"], ["upgrade_aquatic", "driftwood_planks"], ["upgrade_aquatic", "driftwood_stairs"],
["upgrade_aquatic", "driftwood_slab"], ["upgrade_aquatic", "driftwood_fence"], ["upgrade_aquatic", "driftwood_fence_gate"], ["abnormalmining", "carved_driftwood_planks"],
["abnormalmining", "chiseled_driftwood_planks"], ["abnormalmining", "driftwood_boards"], ["abnormalmining", "driftwood_tiles"], ["abnormalmining", "driftwood_pillar"],
["upgrade_aquatic", "driftwood_boards"], ["abnormalmining", "driftwood_board_stairs"], ["abnormalmining", "driftwood_board_slab"], ["abnormalmining", "driftwood_board_wall"],
["abnormalmining", "driftwood_tile_stairs"], ["abnormalmining", "driftwood_tile_slab"], ["abnormalmining", "driftwood_tile_wall"], ["abnormalmining", "driftwood_carved_plank_stairs"],
["abnormalmining", "driftwood_carved_plank_slab"], ["abnormalmining", "driftwood_carved_plank_wall"], ["everycomp", "c/upgrade_aquatic/driftwood_window"],
["everycomp", "c/upgrade_aquatic/driftwood_window_pane"], ["upgrade_aquatic", "driftwood_ladder"], ["upgrade_aquatic", "driftwood_door"], ["upgrade_aquatic", "driftwood_trapdoor"],
["upgrade_aquatic", "driftwood_sign"], ["supplementaries", "upgrade_aquatic/hanging_sign_driftwood"], ["supplementaries", "upgrade_aquatic/sign_post_driftwood"],
["upgrade_aquatic", "driftwood_bookshelf"], ["upgrade_aquatic", "driftwood_chest"], ["upgrade_aquatic", "driftwood_trapped_chest"], ["upgrade_aquatic", "driftwood_boat"],
["upgrade_aquatic", "large_driftwood_boat"], ["upgrade_aquatic", "driftwood_chest_boat"], ["upgrade_aquatic", "driftwood_furnace_boat"], ["upgrade_aquatic", "driftwood_beehive"],
["abnormals_delight", "driftwood_cabinet"], ["everycomp", "af/upgrade_aquatic/driftwood_drawer"], ["everycomp", "af/upgrade_aquatic/driftwood_shutter"],
["everycomp", "af/upgrade_aquatic/driftwood_planter_box"], ["everycomp", "af/upgrade_aquatic/driftwood_shelf"], ["everycomp", "af/upgrade_aquatic/driftwood_table"],
["everycomp", "af/upgrade_aquatic/driftwood_chair"], ["upgrade_aquatic", "driftwood_post"], ["upgrade_aquatic", "stripped_driftwood_post"]] as string[][];

val grimwood = [["atmospheric", "grimwood_log"], ["atmospheric", "grimwood"], ["atmospheric", "stripped_grimwood_log"], ["atmospheric", "stripped_grimwood"],
["fundamentallyfixed", "grimwood_logs"], ["everycomp", "q/atmospheric/hollow_grimwood_log"], ["atmospheric", "grimwood_planks"], ["atmospheric", "grimwood_stairs"],
["atmospheric", "grimwood_slab"], ["atmospheric", "grimwood_fence"], ["atmospheric", "grimwood_fence_gate"], ["abnormalmining", "carved_grimwood_planks"],
["abnormalmining", "chiseled_grimwood_planks"], ["abnormalmining", "grimwood_boards"], ["abnormalmining", "grimwood_tiles"], ["abnormalmining", "grimwood_pillar"],
["atmospheric", "grimwood_boards"], ["abnormalmining", "grimwood_board_stairs"], ["abnormalmining", "grimwood_board_slab"], ["abnormalmining", "grimwood_board_wall"],
["abnormalmining", "grimwood_tile_stairs"], ["abnormalmining", "grimwood_tile_slab"], ["abnormalmining", "grimwood_tile_wall"], ["abnormalmining", "grimwood_carved_plank_stairs"],
["abnormalmining", "grimwood_carved_plank_slab"], ["abnormalmining", "grimwood_carved_plank_wall"], ["everycomp", "c/atmospheric/grimwood_window"],
["everycomp", "c/atmospheric/grimwood_window_pane"], ["atmospheric", "grimwood_ladder"], ["atmospheric", "grimwood_door"], ["atmospheric", "grimwood_trapdoor"],
["atmospheric", "grimwood_sign"], ["supplementaries", "atmospheric/hanging_sign_grimwood"], ["supplementaries", "atmospheric/sign_post_grimwood"],
["atmospheric", "grimwood_bookshelf"], ["atmospheric", "grimwood_chest"], ["atmospheric", "grimwood_trapped_chest"], ["atmospheric", "grimwood_boat"],
["atmospheric", "large_grimwood_boat"], ["atmospheric", "grimwood_chest_boat"], ["atmospheric", "grimwood_furnace_boat"], ["atmospheric", "grimwood_beehive"],
["abnormals_delight", "grimwood_cabinet"], ["everycomp", "af/atmospheric/grimwood_drawer"], ["everycomp", "af/atmospheric/grimwood_shutter"],
["everycomp", "af/atmospheric/grimwood_planter_box"], ["everycomp", "af/atmospheric/grimwood_shelf"], ["everycomp", "af/atmospheric/grimwood_table"],
["everycomp", "af/atmospheric/grimwood_chair"], ["atmospheric", "grimwood_post"], ["atmospheric", "stripped_grimwood_post"]] as string[][];

val birch = [["minecraft", "birch_log"], ["minecraft", "birch_wood"], ["minecraft", "stripped_birch_log"], ["minecraft", "stripped_birch_wood"], ["fundamentallyfixed", "birch_logs"],
["quark", "hollow_birch_log"], ["minecraft", "birch_planks"], ["minecraft", "birch_stairs"], ["minecraft", "birch_slab"], ["minecraft", "birch_fence"], ["minecraft", "birch_fence_gate"],
["modestmining", "carved_birch_planks"], ["modestmining", "chiseled_birch_planks"], ["modestmining", "birch_boards"], ["modestmining", "birch_tiles"], ["modestmining", "birch_pillar"],
["woodworks", "birch_boards"], ["modestmining", "birch_board_stairs"], ["modestmining", "birch_board_slab"], ["modestmining", "birch_board_wall"], ["modestmining", "birch_tile_stairs"],
["modestmining", "birch_tile_slab"], ["modestmining", "birch_tile_wall"], ["modestmining", "birch_carved_plank_stairs"], ["modestmining", "birch_carved_plank_slab"],
["modestmining", "birch_carved_plank_wall"], ["create", "birch_window"], ["create", "birch_window_pane"], ["woodworks", "birch_ladder"], ["minecraft", "birch_door"],
["minecraft", "birch_trapdoor"], ["minecraft", "birch_sign"], ["supplementaries", "hanging_sign_birch"], ["supplementaries", "sign_post_birch"], ["woodworks", "birch_bookshelf"],
["woodworks", "birch_chest"], ["woodworks", "birch_trapped_chest"], ["minecraft", "birch_boat"], ["boatload", "large_birch_boat"], ["minecraft", "birch_chest_boat"],
["boatload", "birch_furnace_boat"], ["woodworks", "birch_beehive"], ["farmersdelight", "birch_cabinet"], ["another_furniture", "birch_drawer"], ["another_furniture", "birch_shutter"],
["another_furniture", "birch_planter_box"], ["another_furniture", "birch_shelf"], ["another_furniture", "birch_table"], ["another_furniture", "birch_chair"],
["quark", "birch_post"], ["quark", "stripped_birch_post"]] as string[][];

val spruce = [["minecraft", "spruce_log"], ["minecraft", "spruce_wood"], ["minecraft", "stripped_spruce_log"], ["minecraft", "stripped_spruce_wood"], ["fundamentallyfixed", "spruce_logs"],
["quark", "hollow_spruce_log"], ["minecraft", "spruce_planks"], ["minecraft", "spruce_stairs"], ["minecraft", "spruce_slab"], ["minecraft", "spruce_fence"], ["minecraft", "spruce_fence_gate"],
["modestmining", "carved_spruce_planks"], ["modestmining", "chiseled_spruce_planks"], ["modestmining", "spruce_boards"], ["modestmining", "spruce_tiles"], ["modestmining", "spruce_pillar"],
["woodworks", "spruce_boards"], ["modestmining", "spruce_board_stairs"], ["modestmining", "spruce_board_slab"], ["modestmining", "spruce_board_wall"], ["modestmining", "spruce_tile_stairs"],
["modestmining", "spruce_tile_slab"], ["modestmining", "spruce_tile_wall"], ["modestmining", "spruce_carved_plank_stairs"], ["modestmining", "spruce_carved_plank_slab"],
["modestmining", "spruce_carved_plank_wall"], ["create", "spruce_window"], ["create", "spruce_window_pane"], ["woodworks", "spruce_ladder"], ["minecraft", "spruce_door"],
["minecraft", "spruce_trapdoor"], ["minecraft", "spruce_sign"], ["supplementaries", "hanging_sign_spruce"], ["supplementaries", "sign_post_spruce"], ["woodworks", "spruce_bookshelf"],
["woodworks", "spruce_chest"], ["woodworks", "spruce_trapped_chest"], ["minecraft", "spruce_boat"], ["boatload", "large_spruce_boat"], ["minecraft", "spruce_chest_boat"],
["boatload", "spruce_furnace_boat"], ["woodworks", "spruce_beehive"], ["farmersdelight", "spruce_cabinet"], ["another_furniture", "spruce_drawer"], ["another_furniture", "spruce_shutter"],
["another_furniture", "spruce_planter_box"], ["another_furniture", "spruce_shelf"], ["another_furniture", "spruce_table"], ["another_furniture", "spruce_chair"],
["quark", "spruce_post"], ["quark", "stripped_spruce_post"]] as string[][];

val mangrove = [["minecraft", "mangrove_log"], ["minecraft", "mangrove_wood"], ["minecraft", "stripped_mangrove_log"], ["minecraft", "stripped_mangrove_wood"], ["fundamentallyfixed", "mangrove_logs"],
["quark", "hollow_mangrove_log"], ["minecraft", "mangrove_planks"], ["minecraft", "mangrove_stairs"], ["minecraft", "mangrove_slab"], ["minecraft", "mangrove_fence"], ["minecraft", "mangrove_fence_gate"],
["modestmining", "carved_mangrove_planks"], ["modestmining", "chiseled_mangrove_planks"], ["modestmining", "mangrove_boards"], ["modestmining", "mangrove_tiles"], ["modestmining", "mangrove_pillar"],
["woodworks", "mangrove_boards"], ["modestmining", "mangrove_board_stairs"], ["modestmining", "mangrove_board_slab"], ["modestmining", "mangrove_board_wall"], ["modestmining", "mangrove_tile_stairs"],
["modestmining", "mangrove_tile_slab"], ["modestmining", "mangrove_tile_wall"], ["modestmining", "mangrove_carved_plank_stairs"], ["modestmining", "mangrove_carved_plank_slab"],
["modestmining", "mangrove_carved_plank_wall"], ["create", "mangrove_window"], ["create", "mangrove_window_pane"], ["woodworks", "mangrove_ladder"], ["minecraft", "mangrove_door"],
["minecraft", "mangrove_trapdoor"], ["minecraft", "mangrove_sign"], ["supplementaries", "hanging_sign_mangrove"], ["supplementaries", "sign_post_mangrove"], ["woodworks", "mangrove_bookshelf"],
["woodworks", "mangrove_chest"], ["woodworks", "mangrove_trapped_chest"], ["minecraft", "mangrove_boat"], ["boatload", "large_mangrove_boat"], ["minecraft", "mangrove_chest_boat"],
["boatload", "mangrove_furnace_boat"], ["woodworks", "mangrove_beehive"], ["farmersdelight", "mangrove_cabinet"], ["another_furniture", "mangrove_drawer"], ["another_furniture", "mangrove_shutter"],
["another_furniture", "mangrove_planter_box"], ["another_furniture", "mangrove_shelf"], ["another_furniture", "mangrove_table"], ["another_furniture", "mangrove_chair"],
["quark", "mangrove_post"], ["quark", "stripped_mangrove_post"]] as string[][];

val maple = [["autumnity", "maple_log"], ["autumnity", "maple_wood"], ["autumnity", "stripped_maple_log"], ["autumnity", "stripped_maple_wood"],
["fundamentallyfixed", "maple_logs"], ["everycomp", "q/autumnity/hollow_maple_log"], ["autumnity", "maple_planks"], ["autumnity", "maple_stairs"],
["autumnity", "maple_slab"], ["autumnity", "maple_fence"], ["autumnity", "maple_fence_gate"], ["abnormalmining", "carved_maple_planks"],
["abnormalmining", "chiseled_maple_planks"], ["abnormalmining", "maple_boards"], ["abnormalmining", "maple_tiles"], ["abnormalmining", "maple_pillar"],
["autumnity", "maple_boards"], ["abnormalmining", "maple_board_stairs"], ["abnormalmining", "maple_board_slab"], ["abnormalmining", "maple_board_wall"],
["abnormalmining", "maple_tile_stairs"], ["abnormalmining", "maple_tile_slab"], ["abnormalmining", "maple_tile_wall"], ["abnormalmining", "maple_carved_plank_stairs"],
["abnormalmining", "maple_carved_plank_slab"], ["abnormalmining", "maple_carved_plank_wall"], ["everycomp", "c/autumnity/maple_window"],
["everycomp", "c/autumnity/maple_window_pane"], ["autumnity", "maple_ladder"], ["autumnity", "maple_door"], ["autumnity", "maple_trapdoor"],
["autumnity", "maple_sign"], ["supplementaries", "autumnity/hanging_sign_maple"], ["supplementaries", "autumnity/sign_post_maple"],
["autumnity", "maple_bookshelf"], ["autumnity", "maple_chest"], ["autumnity", "maple_trapped_chest"], ["autumnity", "maple_boat"],
["autumnity", "large_maple_boat"], ["autumnity", "maple_chest_boat"], ["autumnity", "maple_furnace_boat"], ["autumnity", "maple_beehive"],
["abnormals_delight", "maple_cabinet"], ["everycomp", "af/autumnity/maple_drawer"], ["everycomp", "af/autumnity/maple_shutter"],
["everycomp", "af/autumnity/maple_planter_box"], ["everycomp", "af/autumnity/maple_shelf"], ["everycomp", "af/autumnity/maple_table"],
["everycomp", "af/autumnity/maple_chair"], ["autumnity", "maple_post"], ["autumnity", "stripped_maple_post"]] as string[][];

val aspen = [["atmospheric", "aspen_log"], ["atmospheric", "aspen_wood"], ["atmospheric", "stripped_aspen_log"], ["atmospheric", "stripped_aspen_wood"],
["fundamentallyfixed", "aspen_logs"], ["everycomp", "q/atmospheric/hollow_aspen_log"], ["atmospheric", "aspen_planks"], ["atmospheric", "aspen_stairs"],
["atmospheric", "aspen_slab"], ["atmospheric", "aspen_fence"], ["atmospheric", "aspen_fence_gate"], ["abnormalmining", "carved_aspen_planks"],
["abnormalmining", "chiseled_aspen_planks"], ["abnormalmining", "aspen_boards"], ["abnormalmining", "aspen_tiles"], ["abnormalmining", "aspen_pillar"],
["atmospheric", "aspen_boards"], ["abnormalmining", "aspen_board_stairs"], ["abnormalmining", "aspen_board_slab"], ["abnormalmining", "aspen_board_wall"],
["abnormalmining", "aspen_tile_stairs"], ["abnormalmining", "aspen_tile_slab"], ["abnormalmining", "aspen_tile_wall"], ["abnormalmining", "aspen_carved_plank_stairs"],
["abnormalmining", "aspen_carved_plank_slab"], ["abnormalmining", "aspen_carved_plank_wall"], ["everycomp", "c/atmospheric/aspen_window"],
["everycomp", "c/atmospheric/aspen_window_pane"], ["atmospheric", "aspen_ladder"], ["atmospheric", "aspen_door"], ["atmospheric", "aspen_trapdoor"],
["atmospheric", "aspen_sign"], ["supplementaries", "atmospheric/hanging_sign_aspen"], ["supplementaries", "atmospheric/sign_post_aspen"],
["atmospheric", "aspen_bookshelf"], ["atmospheric", "aspen_chest"], ["atmospheric", "aspen_trapped_chest"], ["atmospheric", "aspen_boat"],
["atmospheric", "large_aspen_boat"], ["atmospheric", "aspen_chest_boat"], ["atmospheric", "aspen_furnace_boat"], ["atmospheric", "aspen_beehive"],
["abnormals_delight", "aspen_cabinet"], ["everycomp", "af/atmospheric/aspen_drawer"], ["everycomp", "af/atmospheric/aspen_shutter"],
["everycomp", "af/atmospheric/aspen_planter_box"], ["everycomp", "af/atmospheric/aspen_shelf"], ["everycomp", "af/atmospheric/aspen_table"],
["everycomp", "af/atmospheric/aspen_chair"], ["atmospheric", "aspen_post"], ["atmospheric", "stripped_aspen_post"]] as string[][];

val azalea = [["quark", "azalea_log"], ["quark", "azalea_wood"], ["quark", "stripped_azalea_log"], ["quark", "stripped_azalea_wood"], ["fundamentallyfixed", "azalea_logs"],
["quark", "hollow_azalea_log"], ["quark", "azalea_planks"], ["quark", "azalea_planks_stairs"], ["quark", "azalea_planks_slab"], ["quark", "azalea_fence"], ["quark", "azalea_fence_gate"],
["modestmining", "carved_acacia_planks"], ["modestmining", "chiseled_acacia_planks"], ["modestmining", "acacia_boards"], ["modestmining", "acacia_tiles"], ["modestmining", "acacia_pillar"],
["everycomp", "abnww/quark/azalea_boards"], ["modestmining", "acacia_board_stairs"], ["modestmining", "acacia_board_slab"], ["modestmining", "acacia_board_wall"], ["modestmining", "acacia_tile_stairs"],
["modestmining", "acacia_tile_slab"], ["modestmining", "acacia_tile_wall"], ["modestmining", "acacia_carved_plank_stairs"], ["modestmining", "acacia_carved_plank_slab"],
["modestmining", "acacia_carved_plank_wall"], ["everycomp", "c/quark/azalea_window"], ["everycomp", "c/quark/azalea_window_pane"], ["quark", "azalea_ladder"], ["quark", "azalea_door"],
["quark", "azalea_trapdoor"], ["quark", "azalea_sign"], ["supplementaries", "quark/hanging_sign_azalea"], ["supplementaries", "quark/sign_post_azalea"], ["quark", "azalea_bookshelf"],
["quark", "azalea_chest"], ["quark", "azalea_trapped_chest"], ["windswept", "holly_boat"], ["windswept", "large_holly_boat"], ["windswept", "holly_chest_boat"],
["windswept", "holly_furnace_boat"], ["everycomp", "abnww/quark/azalea_beehive"], ["everycomp", "fd/quark/azalea_cabinet"], ["everycomp", "af/quark/azalea_drawer"], ["everycomp", "af/quark/azalea_shutter"],
["everycomp", "af/quark/azalea_planter_box"], ["everycomp", "af/quark/azalea_shelf"], ["everycomp", "af/quark/azalea_table"], ["everycomp", "af/quark/azalea_chair"],
["quark", "azalea_post"], ["quark", "stripped_azalea_post"]] as string[][];

val willow = [["environmental", "willow_log"], ["environmental", "willow_wood"], ["environmental", "stripped_willow_log"], ["environmental", "stripped_willow_wood"],
["fundamentallyfixed", "willow_logs"], ["everycomp", "q/environmental/hollow_willow_log"], ["environmental", "willow_planks"], ["environmental", "willow_stairs"],
["environmental", "willow_slab"], ["environmental", "willow_fence"], ["environmental", "willow_fence_gate"], ["abnormalmining", "carved_willow_planks"],
["abnormalmining", "chiseled_willow_planks"], ["abnormalmining", "willow_boards"], ["abnormalmining", "willow_tiles"], ["abnormalmining", "willow_pillar"],
["environmental", "willow_boards"], ["abnormalmining", "willow_board_stairs"], ["abnormalmining", "willow_board_slab"], ["abnormalmining", "willow_board_wall"],
["abnormalmining", "willow_tile_stairs"], ["abnormalmining", "willow_tile_slab"], ["abnormalmining", "willow_tile_wall"], ["abnormalmining", "willow_carved_plank_stairs"],
["abnormalmining", "willow_carved_plank_slab"], ["abnormalmining", "willow_carved_plank_wall"], ["everycomp", "c/environmental/willow_window"],
["everycomp", "c/environmental/willow_window_pane"], ["environmental", "willow_ladder"], ["environmental", "willow_door"], ["environmental", "willow_trapdoor"],
["environmental", "willow_sign"], ["supplementaries", "environmental/hanging_sign_willow"], ["supplementaries", "environmental/sign_post_willow"],
["environmental", "willow_bookshelf"], ["environmental", "willow_chest"], ["environmental", "willow_trapped_chest"], ["environmental", "willow_boat"],
["environmental", "large_willow_boat"], ["environmental", "willow_chest_boat"], ["environmental", "willow_furnace_boat"], ["environmental", "willow_beehive"],
["abnormals_delight", "willow_cabinet"], ["everycomp", "af/environmental/willow_drawer"], ["everycomp", "af/environmental/willow_shutter"],
["everycomp", "af/environmental/willow_planter_box"], ["everycomp", "af/environmental/willow_shelf"], ["everycomp", "af/environmental/willow_table"],
["everycomp", "af/environmental/willow_chair"], ["environmental", "willow_post"], ["environmental", "stripped_willow_post"]] as string[][];

val warped = [["minecraft", "warped_stem"], ["minecraft", "warped_hyphae"], ["minecraft", "stripped_warped_stem"], ["minecraft", "stripped_warped_hyphae"], ["fundamentallyfixed", "warped_logs"],
["quark", "hollow_warped_stem"], ["minecraft", "warped_planks"], ["minecraft", "warped_stairs"], ["minecraft", "warped_slab"], ["minecraft", "warped_fence"], ["minecraft", "warped_fence_gate"],
["modestmining", "carved_warped_planks"], ["modestmining", "chiseled_warped_planks"], ["modestmining", "warped_boards"], ["modestmining", "warped_tiles"], ["modestmining", "warped_pillar"],
["woodworks", "warped_boards"], ["modestmining", "warped_board_stairs"], ["modestmining", "warped_board_slab"], ["modestmining", "warped_board_wall"], ["modestmining", "warped_tile_stairs"],
["modestmining", "warped_tile_slab"], ["modestmining", "warped_tile_wall"], ["modestmining", "warped_carved_plank_stairs"], ["modestmining", "warped_carved_plank_slab"],
["modestmining", "warped_carved_plank_wall"], ["create", "warped_window"], ["create", "warped_window_pane"], ["woodworks", "warped_ladder"], ["minecraft", "warped_door"],
["minecraft", "warped_trapdoor"], ["minecraft", "warped_sign"], ["supplementaries", "hanging_sign_warped"], ["supplementaries", "sign_post_warped"], ["woodworks", "warped_bookshelf"],
["woodworks", "warped_chest"], ["woodworks", "warped_trapped_chest"], ["boatload", "warped_boat"], ["boatload", "large_warped_boat"], ["boatload", "warped_chest_boat"],
["boatload", "warped_furnace_boat"], ["woodworks", "warped_beehive"], ["farmersdelight", "warped_cabinet"], ["another_furniture", "warped_drawer"], ["another_furniture", "warped_shutter"],
["another_furniture", "warped_planter_box"], ["another_furniture", "warped_shelf"], ["another_furniture", "warped_table"], ["another_furniture", "warped_chair"],
["quark", "warped_post"], ["quark", "stripped_warped_post"]] as string[][];

val kousa = [["atmospheric", "kousa_log"], ["atmospheric", "kousa_wood"], ["atmospheric", "stripped_kousa_log"], ["atmospheric", "stripped_kousa_wood"],
["fundamentallyfixed", "kousa_logs"], ["everycomp", "q/atmospheric/hollow_kousa_log"], ["atmospheric", "kousa_planks"], ["atmospheric", "kousa_stairs"],
["atmospheric", "kousa_slab"], ["atmospheric", "kousa_fence"], ["atmospheric", "kousa_fence_gate"], ["abnormalmining", "carved_kousa_planks"],
["abnormalmining", "chiseled_kousa_planks"], ["abnormalmining", "kousa_boards"], ["abnormalmining", "kousa_tiles"], ["abnormalmining", "kousa_pillar"],
["atmospheric", "kousa_boards"], ["abnormalmining", "kousa_board_stairs"], ["abnormalmining", "kousa_board_slab"], ["abnormalmining", "kousa_board_wall"],
["abnormalmining", "kousa_tile_stairs"], ["abnormalmining", "kousa_tile_slab"], ["abnormalmining", "kousa_tile_wall"], ["abnormalmining", "kousa_carved_plank_stairs"],
["abnormalmining", "kousa_carved_plank_slab"], ["abnormalmining", "kousa_carved_plank_wall"], ["everycomp", "c/atmospheric/kousa_window"],
["everycomp", "c/atmospheric/kousa_window_pane"], ["atmospheric", "kousa_ladder"], ["atmospheric", "kousa_door"], ["atmospheric", "kousa_trapdoor"],
["atmospheric", "kousa_sign"], ["supplementaries", "atmospheric/hanging_sign_kousa"], ["supplementaries", "atmospheric/sign_post_kousa"],
["atmospheric", "kousa_bookshelf"], ["atmospheric", "kousa_chest"], ["atmospheric", "kousa_trapped_chest"], ["atmospheric", "kousa_boat"],
["atmospheric", "large_kousa_boat"], ["atmospheric", "kousa_chest_boat"], ["atmospheric", "kousa_furnace_boat"], ["atmospheric", "kousa_beehive"],
["abnormals_delight", "kousa_cabinet"], ["everycomp", "af/atmospheric/kousa_drawer"], ["everycomp", "af/atmospheric/kousa_shutter"],
["everycomp", "af/atmospheric/kousa_planter_box"], ["everycomp", "af/atmospheric/kousa_shelf"], ["everycomp", "af/atmospheric/kousa_table"],
["everycomp", "af/atmospheric/kousa_chair"], ["atmospheric", "kousa_post"], ["atmospheric", "stripped_kousa_post"]] as string[][];

val morado = [["atmospheric", "morado_log"], ["atmospheric", "morado_wood"], ["atmospheric", "stripped_morado_log"], ["atmospheric", "stripped_morado_wood"],
["fundamentallyfixed", "morado_logs"], ["everycomp", "q/atmospheric/hollow_morado_log"], ["atmospheric", "morado_planks"], ["atmospheric", "morado_stairs"],
["atmospheric", "morado_slab"], ["atmospheric", "morado_fence"], ["atmospheric", "morado_fence_gate"], ["abnormalmining", "carved_morado_planks"],
["abnormalmining", "chiseled_morado_planks"], ["abnormalmining", "morado_boards"], ["abnormalmining", "morado_tiles"], ["abnormalmining", "morado_pillar"],
["atmospheric", "morado_boards"], ["abnormalmining", "morado_board_stairs"], ["abnormalmining", "morado_board_slab"], ["abnormalmining", "morado_board_wall"],
["abnormalmining", "morado_tile_stairs"], ["abnormalmining", "morado_tile_slab"], ["abnormalmining", "morado_tile_wall"], ["abnormalmining", "morado_carved_plank_stairs"],
["abnormalmining", "morado_carved_plank_slab"], ["abnormalmining", "morado_carved_plank_wall"], ["everycomp", "c/atmospheric/morado_window"],
["everycomp", "c/atmospheric/morado_window_pane"], ["atmospheric", "morado_ladder"], ["atmospheric", "morado_door"], ["atmospheric", "morado_trapdoor"],
["atmospheric", "morado_sign"], ["supplementaries", "atmospheric/hanging_sign_morado"], ["supplementaries", "atmospheric/sign_post_morado"],
["atmospheric", "morado_bookshelf"], ["atmospheric", "morado_chest"], ["atmospheric", "morado_trapped_chest"], ["atmospheric", "morado_boat"],
["atmospheric", "large_morado_boat"], ["atmospheric", "morado_chest_boat"], ["atmospheric", "morado_furnace_boat"], ["atmospheric", "morado_beehive"],
["abnormals_delight", "morado_cabinet"], ["everycomp", "af/atmospheric/morado_drawer"], ["everycomp", "af/atmospheric/morado_shutter"],
["everycomp", "af/atmospheric/morado_planter_box"], ["everycomp", "af/atmospheric/morado_shelf"], ["everycomp", "af/atmospheric/morado_table"],
["everycomp", "af/atmospheric/morado_chair"], ["atmospheric", "morado_post"], ["atmospheric", "stripped_morado_post"]] as string[][];

val rosewood = [["atmospheric", "rosewood_log"], ["atmospheric", "rosewood"], ["atmospheric", "stripped_rosewood_log"], ["atmospheric", "stripped_rosewood"],
["fundamentallyfixed", "rosewood_logs"], ["everycomp", "q/atmospheric/hollow_rosewood_log"], ["atmospheric", "rosewood_planks"], ["atmospheric", "rosewood_stairs"],
["atmospheric", "rosewood_slab"], ["atmospheric", "rosewood_fence"], ["atmospheric", "rosewood_fence_gate"], ["abnormalmining", "carved_rosewood_planks"],
["abnormalmining", "chiseled_rosewood_planks"], ["abnormalmining", "rosewood_boards"], ["abnormalmining", "rosewood_tiles"], ["abnormalmining", "rosewood_pillar"],
["atmospheric", "rosewood_boards"], ["abnormalmining", "rosewood_board_stairs"], ["abnormalmining", "rosewood_board_slab"], ["abnormalmining", "rosewood_board_wall"],
["abnormalmining", "rosewood_tile_stairs"], ["abnormalmining", "rosewood_tile_slab"], ["abnormalmining", "rosewood_tile_wall"], ["abnormalmining", "rosewood_carved_plank_stairs"],
["abnormalmining", "rosewood_carved_plank_slab"], ["abnormalmining", "rosewood_carved_plank_wall"], ["everycomp", "c/atmospheric/rosewood_window"],
["everycomp", "c/atmospheric/rosewood_window_pane"], ["atmospheric", "rosewood_ladder"], ["atmospheric", "rosewood_door"], ["atmospheric", "rosewood_trapdoor"],
["atmospheric", "rosewood_sign"], ["supplementaries", "atmospheric/hanging_sign_rosewood"], ["supplementaries", "atmospheric/sign_post_rosewood"],
["atmospheric", "rosewood_bookshelf"], ["atmospheric", "rosewood_chest"], ["atmospheric", "rosewood_trapped_chest"], ["atmospheric", "rosewood_boat"],
["atmospheric", "large_rosewood_boat"], ["atmospheric", "rosewood_chest_boat"], ["atmospheric", "rosewood_furnace_boat"], ["atmospheric", "rosewood_beehive"],
["abnormals_delight", "rosewood_cabinet"], ["everycomp", "af/atmospheric/rosewood_drawer"], ["everycomp", "af/atmospheric/rosewood_shutter"],
["everycomp", "af/atmospheric/rosewood_planter_box"], ["everycomp", "af/atmospheric/rosewood_shelf"], ["everycomp", "af/atmospheric/rosewood_table"],
["everycomp", "af/atmospheric/rosewood_chair"], ["atmospheric", "rosewood_post"], ["atmospheric", "stripped_rosewood_post"]] as string[][];

val crimson = [["minecraft", "crimson_stem"], ["minecraft", "crimson_hyphae"], ["minecraft", "stripped_crimson_stem"], ["minecraft", "stripped_crimson_hyphae"], ["fundamentallyfixed", "crimson_logs"],
["quark", "hollow_crimson_stem"], ["minecraft", "crimson_planks"], ["minecraft", "crimson_stairs"], ["minecraft", "crimson_slab"], ["minecraft", "crimson_fence"], ["minecraft", "crimson_fence_gate"],
["modestmining", "carved_crimson_planks"], ["modestmining", "chiseled_crimson_planks"], ["modestmining", "crimson_boards"], ["modestmining", "crimson_tiles"], ["modestmining", "crimson_pillar"],
["woodworks", "crimson_boards"], ["modestmining", "crimson_board_stairs"], ["modestmining", "crimson_board_slab"], ["modestmining", "crimson_board_wall"], ["modestmining", "crimson_tile_stairs"],
["modestmining", "crimson_tile_slab"], ["modestmining", "crimson_tile_wall"], ["modestmining", "crimson_carved_plank_stairs"], ["modestmining", "crimson_carved_plank_slab"],
["modestmining", "crimson_carved_plank_wall"], ["create", "crimson_window"], ["create", "crimson_window_pane"], ["woodworks", "crimson_ladder"], ["minecraft", "crimson_door"],
["minecraft", "crimson_trapdoor"], ["minecraft", "crimson_sign"], ["supplementaries", "hanging_sign_crimson"], ["supplementaries", "sign_post_crimson"], ["woodworks", "crimson_bookshelf"],
["woodworks", "crimson_chest"], ["woodworks", "crimson_trapped_chest"], ["boatload", "crimson_boat"], ["boatload", "large_crimson_boat"], ["boatload", "crimson_chest_boat"],
["boatload", "crimson_furnace_boat"], ["woodworks", "crimson_beehive"], ["farmersdelight", "crimson_cabinet"], ["another_furniture", "crimson_drawer"], ["another_furniture", "crimson_shutter"],
["another_furniture", "crimson_planter_box"], ["another_furniture", "crimson_shelf"], ["another_furniture", "crimson_table"], ["another_furniture", "crimson_chair"],
["quark", "crimson_post"], ["quark", "stripped_crimson_post"]] as string[][];

val cherry = [["environmental", "cherry_log"], ["environmental", "cherry_wood"], ["environmental", "stripped_cherry_log"], ["environmental", "stripped_cherry_wood"],
["fundamentallyfixed", "cherry_logs"], ["everycomp", "q/environmental/hollow_cherry_log"], ["environmental", "cherry_planks"], ["environmental", "cherry_stairs"],
["environmental", "cherry_slab"], ["environmental", "cherry_fence"], ["environmental", "cherry_fence_gate"], ["abnormalmining", "carved_cherry_planks"],
["abnormalmining", "chiseled_cherry_planks"], ["abnormalmining", "cherry_boards"], ["abnormalmining", "cherry_tiles"], ["abnormalmining", "cherry_pillar"],
["environmental", "cherry_boards"], ["abnormalmining", "cherry_board_stairs"], ["abnormalmining", "cherry_board_slab"], ["abnormalmining", "cherry_board_wall"],
["abnormalmining", "cherry_tile_stairs"], ["abnormalmining", "cherry_tile_slab"], ["abnormalmining", "cherry_tile_wall"], ["abnormalmining", "cherry_carved_plank_stairs"],
["abnormalmining", "cherry_carved_plank_slab"], ["abnormalmining", "cherry_carved_plank_wall"], ["everycomp", "c/environmental/cherry_window"],
["everycomp", "c/environmental/cherry_window_pane"], ["environmental", "cherry_ladder"], ["environmental", "cherry_door"], ["environmental", "cherry_trapdoor"],
["environmental", "cherry_sign"], ["supplementaries", "environmental/hanging_sign_cherry"], ["supplementaries", "environmental/sign_post_cherry"],
["environmental", "cherry_bookshelf"], ["environmental", "cherry_chest"], ["environmental", "cherry_trapped_chest"], ["environmental", "cherry_boat"],
["environmental", "large_cherry_boat"], ["environmental", "cherry_chest_boat"], ["environmental", "cherry_furnace_boat"], ["environmental", "cherry_beehive"],
["abnormals_delight", "cherry_cabinet"], ["everycomp", "af/environmental/cherry_drawer"], ["everycomp", "af/environmental/cherry_shutter"],
["everycomp", "af/environmental/cherry_planter_box"], ["everycomp", "af/environmental/cherry_shelf"], ["everycomp", "af/environmental/cherry_table"],
["everycomp", "af/environmental/cherry_chair"], ["environmental", "cherry_post"], ["environmental", "stripped_cherry_post"]] as string[][];

val yucca = [["atmospheric", "yucca_log"], ["atmospheric", "yucca_wood"], ["atmospheric", "stripped_yucca_log"], ["atmospheric", "stripped_yucca_wood"],
["fundamentallyfixed", "yucca_logs"], ["everycomp", "q/atmospheric/hollow_yucca_log"], ["atmospheric", "yucca_planks"], ["atmospheric", "yucca_stairs"],
["atmospheric", "yucca_slab"], ["atmospheric", "yucca_fence"], ["atmospheric", "yucca_fence_gate"], ["abnormalmining", "carved_yucca_planks"],
["abnormalmining", "chiseled_yucca_planks"], ["abnormalmining", "yucca_boards"], ["abnormalmining", "yucca_tiles"], ["abnormalmining", "yucca_pillar"],
["atmospheric", "yucca_boards"], ["abnormalmining", "yucca_board_stairs"], ["abnormalmining", "yucca_board_slab"], ["abnormalmining", "yucca_board_wall"],
["abnormalmining", "yucca_tile_stairs"], ["abnormalmining", "yucca_tile_slab"], ["abnormalmining", "yucca_tile_wall"], ["abnormalmining", "yucca_carved_plank_stairs"],
["abnormalmining", "yucca_carved_plank_slab"], ["abnormalmining", "yucca_carved_plank_wall"], ["everycomp", "c/atmospheric/yucca_window"],
["everycomp", "c/atmospheric/yucca_window_pane"], ["atmospheric", "yucca_ladder"], ["atmospheric", "yucca_door"], ["atmospheric", "yucca_trapdoor"],
["atmospheric", "yucca_sign"], ["supplementaries", "atmospheric/hanging_sign_yucca"], ["supplementaries", "atmospheric/sign_post_yucca"],
["atmospheric", "yucca_bookshelf"], ["atmospheric", "yucca_chest"], ["atmospheric", "yucca_trapped_chest"], ["atmospheric", "yucca_boat"],
["atmospheric", "large_yucca_boat"], ["atmospheric", "yucca_chest_boat"], ["atmospheric", "yucca_furnace_boat"], ["atmospheric", "yucca_beehive"],
["abnormals_delight", "yucca_cabinet"], ["everycomp", "af/atmospheric/yucca_drawer"], ["everycomp", "af/atmospheric/yucca_shutter"],
["everycomp", "af/atmospheric/yucca_planter_box"], ["everycomp", "af/atmospheric/yucca_shelf"], ["everycomp", "af/atmospheric/yucca_table"],
["everycomp", "af/atmospheric/yucca_chair"], ["atmospheric", "yucca_post"], ["atmospheric", "stripped_yucca_post"]] as string[][];

val jungle = [["minecraft", "jungle_log"], ["minecraft", "jungle_wood"], ["minecraft", "stripped_jungle_log"], ["minecraft", "stripped_jungle_wood"], ["fundamentallyfixed", "jungle_logs"],
["quark", "hollow_jungle_log"], ["minecraft", "jungle_planks"], ["minecraft", "jungle_stairs"], ["minecraft", "jungle_slab"], ["minecraft", "jungle_fence"], ["minecraft", "jungle_fence_gate"],
["modestmining", "carved_jungle_planks"], ["modestmining", "chiseled_jungle_planks"], ["modestmining", "jungle_boards"], ["modestmining", "jungle_tiles"], ["modestmining", "jungle_pillar"],
["woodworks", "jungle_boards"], ["modestmining", "jungle_board_stairs"], ["modestmining", "jungle_board_slab"], ["modestmining", "jungle_board_wall"], ["modestmining", "jungle_tile_stairs"],
["modestmining", "jungle_tile_slab"], ["modestmining", "jungle_tile_wall"], ["modestmining", "jungle_carved_plank_stairs"], ["modestmining", "jungle_carved_plank_slab"],
["modestmining", "jungle_carved_plank_wall"], ["create", "jungle_window"], ["create", "jungle_window_pane"], ["woodworks", "jungle_ladder"], ["minecraft", "jungle_door"],
["minecraft", "jungle_trapdoor"], ["minecraft", "jungle_sign"], ["supplementaries", "hanging_sign_jungle"], ["supplementaries", "sign_post_jungle"], ["woodworks", "jungle_bookshelf"],
["woodworks", "jungle_chest"], ["woodworks", "jungle_trapped_chest"], ["minecraft", "jungle_boat"], ["boatload", "large_jungle_boat"], ["minecraft", "jungle_chest_boat"],
["boatload", "jungle_furnace_boat"], ["woodworks", "jungle_beehive"], ["farmersdelight", "jungle_cabinet"], ["another_furniture", "jungle_drawer"], ["another_furniture", "jungle_shutter"],
["another_furniture", "jungle_planter_box"], ["another_furniture", "jungle_shelf"], ["another_furniture", "jungle_table"], ["another_furniture", "jungle_chair"],
["quark", "jungle_post"], ["quark", "stripped_jungle_post"]] as string[][];

val bamboo = [["quark", "bamboo_block"], ["fundamentallyfixed", "cut_bamboo"], ["quark", "stripped_bamboo_block"], ["fundamentallyfixed", "stripped_cut_bamboo"], ["fundamentallyfixed", "bamboo_logs"],
["quark", "hollow_acacia_log"], ["quark", "bamboo_planks"], ["quark", "bamboo_planks_stairs"], ["quark", "bamboo_planks_slab"], ["quark", "bamboo_fence"], ["quark", "bamboo_fence_gate"],
["abnormalmining", "carved_river_planks"], ["abnormalmining", "chiseled_river_planks"], ["abnormalmining", "river_boards"], ["abnormalmining", "river_tiles"], ["abnormalmining", "river_pillar"],
["everycomp", "abnww/quark/bamboo_boards"], ["abnormalmining", "river_board_stairs"], ["abnormalmining", "river_board_slab"], ["abnormalmining", "river_board_wall"], ["abnormalmining", "river_tile_stairs"],
["abnormalmining", "river_tile_slab"], ["abnormalmining", "river_tile_wall"], ["abnormalmining", "river_carved_plank_stairs"], ["abnormalmining", "river_carved_plank_slab"],
["abnormalmining", "river_carved_plank_wall"], ["everycomp", "c/quark/bamboo_window"], ["everycomp", "c/quark/bamboo_window_pane"], ["quark", "bamboo_ladder"], ["quark", "bamboo_door"],
["quark", "bamboo_trapdoor"], ["quark", "bamboo_sign"], ["supplementaries", "quark/hanging_sign_bamboo"], ["supplementaries", "quark/sign_post_bamboo"], ["quark", "bamboo_bookshelf"],
["quark", "bamboo_chest"], ["quark", "bamboo_trapped_chest"], ["minecraft", "acacia_boat"], ["boatload", "large_acacia_boat"], ["minecraft", "acacia_chest_boat"],
["boatload", "acacia_furnace_boat"], ["everycomp", "abnww/quark/bamboo_beehive"], ["everycomp", "fd/quark/bamboo_cabinet"], ["everycomp", "af/quark/bamboo_drawer"], ["everycomp", "af/quark/bamboo_shutter"],
["everycomp", "af/quark/bamboo_planter_box"], ["everycomp", "af/quark/bamboo_shelf"], ["everycomp", "af/quark/bamboo_table"], ["everycomp", "af/quark/bamboo_chair"],
["quark", "bamboo_post"], ["quark", "stripped_bamboo_post"]] as string[][];

val dark_oak = [["minecraft", "dark_oak_log"], ["minecraft", "dark_oak_wood"], ["minecraft", "stripped_dark_oak_log"], ["minecraft", "stripped_dark_oak_wood"], ["fundamentallyfixed", "dark_oak_logs"],
["quark", "hollow_dark_oak_log"], ["minecraft", "dark_oak_planks"], ["minecraft", "dark_oak_stairs"], ["minecraft", "dark_oak_slab"], ["minecraft", "dark_oak_fence"], ["minecraft", "dark_oak_fence_gate"],
["modestmining", "carved_dark_oak_planks"], ["modestmining", "chiseled_dark_oak_planks"], ["modestmining", "dark_oak_boards"], ["modestmining", "dark_oak_tiles"], ["modestmining", "dark_oak_pillar"],
["woodworks", "dark_oak_boards"], ["modestmining", "dark_oak_board_stairs"], ["modestmining", "dark_oak_board_slab"], ["modestmining", "dark_oak_board_wall"], ["modestmining", "dark_oak_tile_stairs"],
["modestmining", "dark_oak_tile_slab"], ["modestmining", "dark_oak_tile_wall"], ["modestmining", "dark_oak_carved_plank_stairs"], ["modestmining", "dark_oak_carved_plank_slab"],
["modestmining", "dark_oak_carved_plank_wall"], ["create", "dark_oak_window"], ["create", "dark_oak_window_pane"], ["woodworks", "dark_oak_ladder"], ["minecraft", "dark_oak_door"],
["minecraft", "dark_oak_trapdoor"], ["minecraft", "dark_oak_sign"], ["supplementaries", "hanging_sign_dark_oak"], ["supplementaries", "sign_post_dark_oak"], ["woodworks", "dark_oak_bookshelf"],
["woodworks", "dark_oak_chest"], ["woodworks", "dark_oak_trapped_chest"], ["minecraft", "dark_oak_boat"], ["boatload", "large_dark_oak_boat"], ["minecraft", "dark_oak_chest_boat"],
["boatload", "dark_oak_furnace_boat"], ["woodworks", "dark_oak_beehive"], ["farmersdelight", "dark_oak_cabinet"], ["another_furniture", "dark_oak_drawer"], ["another_furniture", "dark_oak_shutter"],
["another_furniture", "dark_oak_planter_box"], ["another_furniture", "dark_oak_shelf"], ["another_furniture", "dark_oak_table"], ["another_furniture", "dark_oak_chair"],
["quark", "dark_oak_post"], ["quark", "stripped_dark_oak_post"]] as string[][];


val woodSets = [oak, wisteria, birch, driftwood, grimwood, spruce, mangrove, maple, aspen, azalea, willow, warped, kousa, morado, rosewood, crimson,
cherry, yucca, jungle, bamboo, dark_oak] as string[][][];

val plankIng = ["modestmining", "plank"] as string[];
val plankIngItem = plankIng[0] + ":" + plankIng[1];
val stickIng = ["minecraft", "stick"] as string[];
val stickIngItem = stickIng[0] + ":" + stickIng[1];
val bowlIng = ["minecraft", "bowl"] as string[];
val bowlIngItem = bowlIng[0] + ":" + bowlIng[1];

for woodSet in woodSets {
    val log = woodSet[0];
    val logItem = log[0] + ":" + log[1];
    val wood = woodSet[1];
    val woodItem = wood[0] + ":" + wood[1];
    val strippedLog = woodSet[2];
    val strippedLogItem = strippedLog[0] + ":" + strippedLog[1];
    val strippedWood = woodSet[3];
    val strippedWoodItem = strippedWood[0] + ":" + strippedWood[1];
    val logs = woodSet[4];
    val logsTag = logs[0] + ":" + logs[1];
    val hollowLog = woodSet[5];
    val hollowLogItem = hollowLog[0] + ":" + hollowLog[1];
    val plank = woodSet[6];
    val plankItem = plank[0] + ":" + plank[1];
    val wstair = woodSet[7];
    val wstairItem = wstair[0] + ":" + wstair[1];
    val wslab = woodSet[8];
    val wslabItem = wslab[0] + ":" + wslab[1];
    val fence = woodSet[9];
    val fenceItem = fence[0] + ":" + fence[1];
    val fenceGate = woodSet[10];
    val fenceGateItem = fenceGate[0] + ":" + fenceGate[1];
    val carvedPlank = woodSet[11];
    val carvedPlankItem = carvedPlank[0] + ":" + carvedPlank[1];
    val chiseledPlank = woodSet[12];
    val chiseledPlankItem = chiseledPlank[0] + ":" + chiseledPlank[1];
    val panel = woodSet[13];
    val panelItem = panel[0] + ":" + panel[1];
    val tile = woodSet[14];
    val tileItem = tile[0] + ":" + tile[1];
    val pillar = woodSet[15];
    val pillarItem = pillar[0] + ":" + pillar[1];
    val board = woodSet[16];
    val boardItem = board[0] + ":" + board[1];
    val stairPanel = woodSet[17];
    val stairPanelItem = stairPanel[0] + ":" + stairPanel[1];
    val slabPanel = woodSet[18];
    val slabPanelItem = slabPanel[0] + ":" + slabPanel[1];
    val wallPanel = woodSet[19];
    val wallPanelItem = wallPanel[0] + ":" + wallPanel[1];
    val stairTile = woodSet[20];
    val stairTileItem = stairTile[0] + ":" + stairTile[1];
    val slabTile = woodSet[21];
    val slabTileItem = slabTile[0] + ":" + slabTile[1];
    val wallTile = woodSet[22];
    val wallTileItem = wallTile[0] + ":" + wallTile[1];
    val stairCarved = woodSet[23];
    val stairCarvedItem = stairCarved[0] + ":" + stairCarved[1];
    val slabCarved = woodSet[24];
    val slabCarvedItem = slabCarved[0] + ":" + slabCarved[1];
    val wallCarved = woodSet[25];
    val wallCarvedItem = wallCarved[0] + ":" + wallCarved[1];
    val window = woodSet[26];
    val windowItem = window[0] + ":" + window[1];
    val windowPane = woodSet[27];
    val windowPaneItem = windowPane[0] + ":" + windowPane[1];
    val ladder = woodSet[28];
    val ladderItem = ladder[0] + ":" + ladder[1];
    val door = woodSet[29];
    val doorItem = door[0] + ":" + door[1];
    val trapdoor = woodSet[30];
    val trapdoorItem = trapdoor[0] + ":" + trapdoor[1];
    val sign = woodSet[31];
    val wsignItem = sign[0] + ":" + sign[1];
    val hangingSign = woodSet[32];
    val hangingSignItem = hangingSign[0] + ":" + hangingSign[1];
    val signPost = woodSet[33];
    val signPostItem = signPost[0] + ":" + signPost[1];
    val bookshelf = woodSet[34];
    val bookshelfItem = bookshelf[0] + ":" + bookshelf[1];
    val chest = woodSet[35];
    val chestItem = chest[0] + ":" + chest[1];
    val chestTrap = woodSet[36];
    val chestTrapItem = chestTrap[0] + ":" + chestTrap[1];
    val boat = woodSet[37];
    val boatItem = boat[0] + ":" + boat[1];
    val boatLong = woodSet[38];
    val boatLongItem = boatLong[0] + ":" + boatLong[1];
    val boatChest = woodSet[39];
    val boatChestItem = boatChest[0] + ":" + boatChest[1];
    val boatFurnace = woodSet[40];
    val boatFurnaceItem = boatFurnace[0] + ":" + boatFurnace[1];
    val hive = woodSet[41];
    val hiveItem = hive[0] + ":" + hive[1];
    val cabinet = woodSet[42];
    val cabinetItem = cabinet[0] + ":" + cabinet[1];
    val drawer = woodSet[43];
    val drawerItem = drawer[0] + ":" + drawer[1];
    val shutter = woodSet[44];
    val shutterItem = shutter[0] + ":" + shutter[1];
    val planter = woodSet[45];
    val planterItem = planter[0] + ":" + planter[1];
    val shelf = woodSet[46];
    val shelfItem = shelf[0] + ":" + shelf[1];
    val table = woodSet[47];
    val tableItem = table[0] + ":" + table[1];
    val chair = woodSet[48];
    val chairItem = chair[0] + ":" + chair[1];
    val post = woodSet[49];
    val postItem = post[0] + ":" + post[1];
    val strippedPost = woodSet[50];
    val strippedPostItem = strippedPost[0] + ":" + strippedPost[1];

    // ------------------------ Planks from Logs
    <recipetype:woodworks:sawing>.addJsonRecipe(plank[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"tag": logsTag}, "result": plankItem}}]});

    craftingTable.addShapeless(plank[1] + "_from_log", <item:${plankItem}> * 4, [<tagmanager:items>.tag(logsTag)]);

    <recipetype:farmersdelight:cutting>.addRecipe(strippedLog[1] + "cutting_board", <item:${logItem}>, [<item:${strippedLogItem}>, <item:farmersdelight:tree_bark>], <tagmanager:items>.tag("fundamentallyfixed:axes"), "minecraft:block.wood.break");

    <recipetype:farmersdelight:cutting>.addRecipe(strippedWood[1] + "cutting_board", <item:${woodItem}>, [<item:${strippedWoodItem}>, <item:farmersdelight:tree_bark>], <tagmanager:items>.tag("fundamentallyfixed:axes"), "minecraft:block.wood.break");

// ------------------------ Hollow Log from Log
    <recipetype:woodworks:sawing>.addJsonRecipe(hollowLog[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": logItem}, "result": hollowLogItem}}]});

    craftingTable.addShaped(hollowLog[1] + "_from_log", <item:${hollowLogItem}> * 1, [
    [<item:${logItem}>],
    [<item:${logItem}>]
    ]);

    // ------------------------ Log Variants
    // Wood from Log
    <recipetype:woodworks:sawing>.addJsonRecipe(wood[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": logItem}, "result": woodItem}}]});

    // Stripped Wood from Stripped Log
    <recipetype:woodworks:sawing>.addJsonRecipe(strippedWood[1] + "_from_stripped_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": strippedLogItem}, "result": strippedWoodItem}}]});

    // Stripped Log from Log
    <recipetype:woodworks:sawing>.addJsonRecipe(strippedLog[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": logItem}, "result": strippedLogItem}}]});

    // Stripped Wood from Wood
    <recipetype:woodworks:sawing>.addJsonRecipe(strippedWood[1] + "_from_wood_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": woodItem}, "result": strippedWoodItem}}]});

    // Stripped Wood from Log
    <recipetype:woodworks:sawing>.addJsonRecipe(strippedWood[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": logItem}, "result": strippedWoodItem}}]});


    // ------------------------ Stairs & Slabs
    <recipetype:woodworks:sawing>.addJsonRecipe(wstair[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 5, "ingredient": {"item": logItem}, "result": wstairItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(wstair[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": wstairItem}}]});

    craftingTable.addShaped(wstair[1] + "_from_plank", <item:${wstairItem}> * 4, [
    [<item:${plankItem}>, <item:minecraft:air>],
    [<item:${plankItem}>, <item:${plankItem}>]
    ]);

    <recipetype:woodworks:sawing>.addJsonRecipe(wslab[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 8, "ingredient": {"item": logItem}, "result": wslabItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(wslab[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 2, "ingredient": {"item": plankItem}, "result": wslabItem}}]});

    craftingTable.addShaped(wslab[1] + "_from_plank", <item:${wslabItem}> * 4, [
    [<item:${plankItem}>, <item:${plankItem}>]
    ]);
    // ------------------------ Fences & Gates
    <recipetype:woodworks:sawing>.addJsonRecipe(fence[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": logItem}, "result": fenceItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(fence[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": fenceItem}}]});

    craftingTable.addShaped(fence[1] + "_from_plank", <item:${fenceItem}> * 3, [
    [<item:${plankItem}>, <item:${plankItem}>, <item:${plankItem}>]
    ]);

    <recipetype:woodworks:sawing>.addJsonRecipe(fenceGate[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": logItem}, "result": fenceGateItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(fenceGate[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": fenceGateItem}}]});

    craftingTable.addShaped(fenceGate[1] + "_from_plank", <item:${fenceGateItem}> * 2, [
    [<item:${plankItem}>, <item:${plankIngItem}>, <item:${plankItem}>]
    ]);

    // ------------------------ Modest Mining Woods
    // Carved
    <recipetype:woodworks:sawing>.addJsonRecipe(carvedPlank[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": logItem}, "result": carvedPlankItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(carvedPlank[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": carvedPlankItem}}]});

    craftingTable.addShaped(carvedPlank[1] + "_from_plank", <item:${carvedPlankItem}> * 4, [
    [<item:${plankItem}>, <item:${plankItem}>],
    [<item:${plankItem}>, <item:${plankItem}>]
    ]);

    // Chiseled
    <recipetype:woodworks:sawing>.addJsonRecipe(chiseledPlank[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": logItem}, "result": chiseledPlankItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(chiseledPlank[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": chiseledPlankItem}}]});

    craftingTable.addShaped(chiseledPlank[1] + "_from_plank", <item:${chiseledPlankItem}> * 2, [
    [<item:${carvedPlankItem}>],
    [<item:${carvedPlankItem}>]
    ]);

    // Panels
    <recipetype:woodworks:sawing>.addJsonRecipe(panel[1] + "_panel_panel_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": logItem}, "result": panelItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(panel[1] + "_panel_panel_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": panelItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(panel[1] + "_panel_panel_from_carved_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": carvedPlankItem}, "result": panelItem}}]});

    craftingTable.addShaped(panel[1] + "_panel_panel_from_plank", <item:${panelItem}> * 4, [
    [<item:${carvedPlankItem}>, <item:${carvedPlankItem}>],
    [<item:${carvedPlankItem}>, <item:${carvedPlankItem}>]
    ]);

    // Tiles
    <recipetype:woodworks:sawing>.addJsonRecipe(tile[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": logItem}, "result": tileItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(tile[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": tileItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(tile[1] + "_from_carved_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": carvedPlankItem}, "result": tileItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(tile[1] + "_from_panel_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": panelItem}, "result": tileItem}}]});

    craftingTable.addShaped(tile[1] + "_from_plank", <item:${tileItem}> * 4, [
    [<item:${panelItem}>, <item:${panelItem}>],
    [<item:${panelItem}>, <item:${panelItem}>]
    ]);

    // Pillar
    <recipetype:woodworks:sawing>.addJsonRecipe(pillar[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": logItem}, "result": pillarItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(panel[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": pillarItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(panel[1] + "_from_carved_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": carvedPlankItem}, "result": pillarItem}}]});

    craftingTable.addShaped(panel[1] + "_panel_from_plank", <item:${pillarItem}> * 2, [
    [<item:${panelItem}>],
    [<item:${panelItem}>]
    ]);

    // Boards
    <recipetype:woodworks:sawing>.addJsonRecipe(board[1] + "_board_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": logItem}, "result": boardItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(board[1] + "_board_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": boardItem}}]});

    craftingTable.addShaped(board[1] + "_board_from_plank", <item:${boardItem}> * 6, [
    [<item:${plankItem}>, <item:${plankItem}>, <item:${plankItem}>],
    [<item:${plankItem}>, <item:${plankItem}>, <item:${plankItem}>]
    ]);

    // ------------------------ Modest Mining Stairs, Slabs, & Walls
    // Panels
    <recipetype:woodworks:sawing>.addJsonRecipe(stairPanel[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 5, "ingredient": {"item": logItem}, "result": stairPanelItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(stairPanel[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": stairPanelItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(stairPanel[1] + "_from_panel_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": panelItem}, "result": stairPanelItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(stairPanel[1] + "_from_carved_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": carvedPlankItem}, "result": stairPanelItem}}]});

    craftingTable.addShaped(stairPanel[1] + "_from_plank", <item:${stairPanelItem}> * 4, [
    [<item:${panelItem}>, <item:minecraft:air>],
    [<item:${panelItem}>, <item:${panelItem}>]
    ]);

    <recipetype:woodworks:sawing>.addJsonRecipe(slabPanel[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 8, "ingredient": {"item": logItem}, "result": slabPanelItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(slabPanel[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 2, "ingredient": {"item": plankItem}, "result": slabPanelItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(slabPanel[1] + "_from_panel_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 2, "ingredient": {"item": panelItem}, "result": slabPanelItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(slabPanel[1] + "_from_carved_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 2, "ingredient": {"item": carvedPlankItem}, "result": slabPanelItem}}]});

    craftingTable.addShaped(slabPanel[1] + "_from_plank", <item:${slabPanelItem}> * 4, [
    [<item:${panelItem}>, <item:${panelItem}>]
    ]);

    <recipetype:woodworks:sawing>.addJsonRecipe(wallPanel[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": logItem}, "result": wallPanelItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(wallPanel[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": wallPanelItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(wallPanel[1] + "_from_panel_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": panelItem}, "result": wallPanelItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(wallPanel[1] + "_from_carved_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": carvedPlankItem}, "result": wallPanelItem}}]});

    craftingTable.addShaped(wallPanel[1] + "_from_plank", <item:${wallPanelItem}> * 3, [
    [<item:${panelItem}>, <item:${panelItem}>, <item:${panelItem}>]
    ]);

    // Tiles
    <recipetype:woodworks:sawing>.addJsonRecipe(stairTile[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 5, "ingredient": {"item": logItem}, "result": stairTileItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(stairTile[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": stairTileItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(stairTile[1] + "_from_tile_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": tileItem}, "result": stairTileItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(stairTile[1] + "_from_panel_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": panelItem}, "result": stairTileItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(stairTile[1] + "_from_carved_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": carvedPlankItem}, "result": stairTileItem}}]});

    craftingTable.addShaped(stairTile[1] + "_from_plank", <item:${stairTileItem}> * 4, [
    [<item:${tileItem}>, <item:minecraft:air>],
    [<item:${tileItem}>, <item:${tileItem}>]
    ]);

    <recipetype:woodworks:sawing>.addJsonRecipe(slabTile[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 8, "ingredient": {"item": logItem}, "result": slabTileItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(slabTile[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 2, "ingredient": {"item": plankItem}, "result": slabTileItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(slabTile[1] + "_from_tile_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 2, "ingredient": {"item": tileItem}, "result": slabTileItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(slabTile[1] + "_from_panel_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 2, "ingredient": {"item": panelItem}, "result": slabTileItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(slabTile[1] + "_from_carved_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 2, "ingredient": {"item": carvedPlankItem}, "result": slabTileItem}}]});

    craftingTable.addShaped(slabTile[1] + "_from_plank", <item:${slabTileItem}> * 4, [
    [<item:${tileItem}>, <item:${tileItem}>]
    ]);

    <recipetype:woodworks:sawing>.addJsonRecipe(wallTile[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": logItem}, "result": wallTileItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(wallTile[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": wallTileItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(wallTile[1] + "_from_tile_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": tileItem}, "result": wallTileItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(wallTile[1] + "_from_panel_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": panelItem}, "result": wallTileItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(wallTile[1] + "_from_carved_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": carvedPlankItem}, "result": wallTileItem}}]});

    craftingTable.addShaped(wallTile[1] + "_from_plank", <item:${wallTileItem}> * 3, [
    [<item:${tileItem}>, <item:${tileItem}>, <item:${tileItem}>]
    ]);

    // Carved Planks
    <recipetype:woodworks:sawing>.addJsonRecipe(stairCarved[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 5, "ingredient": {"item": logItem}, "result": stairCarvedItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(stairCarved[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": stairCarvedItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(stairCarved[1] + "_from_carved_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": carvedPlankItem}, "result": stairCarvedItem}}]});

    craftingTable.addShaped(stairCarved[1] + "_from_plank", <item:${stairCarvedItem}> * 4, [
    [<item:${carvedPlankItem}>, <item:minecraft:air>],
    [<item:${carvedPlankItem}>, <item:${carvedPlankItem}>]
    ]);

    <recipetype:woodworks:sawing>.addJsonRecipe(slabCarved[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 8, "ingredient": {"item": logItem}, "result": slabCarvedItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(slabCarved[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 2, "ingredient": {"item": plankItem}, "result": slabCarvedItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(slabCarved[1] + "_from_carved_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 2, "ingredient": {"item": carvedPlankItem}, "result": slabCarvedItem}}]});

    craftingTable.addShaped(slabCarved[1] + "_from_plank", <item:${slabCarvedItem}> * 4, [
    [<item:${carvedPlankItem}>, <item:${carvedPlankItem}>]
    ]);

    <recipetype:woodworks:sawing>.addJsonRecipe(wallCarved[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": logItem}, "result": wallCarvedItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(wallCarved[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": wallCarvedItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(wallCarved[1] + "_from_carved_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": carvedPlankItem}, "result": wallCarvedItem}}]});

    craftingTable.addShaped(wallCarved[1] + "_from_plank", <item:${wallCarvedItem}> * 3, [
    [<item:${carvedPlankItem}>, <item:${carvedPlankItem}>, <item:${carvedPlankItem}>]
    ]);

    // ------------------------ Windows
    craftingTable.addShaped(window[1] + "_from_plank", <item:${windowItem}> * 4, [
    [<item:${plankItem}>, <item:${plankItem}>],
    [<tagmanager:items>.tag("fundamentallyfixed:clear_glasses"), <tagmanager:items>.tag("fundamentallyfixed:clear_glasses")],
    [<item:${plankItem}>, <item:${plankItem}>]
    ]);

    craftingTable.addShaped(windowPane[1] + "_from_window", <item:${windowPaneItem}> * 12, [
    [<item:${windowItem}>, <item:${windowItem}>, <item:${windowItem}>]
    ]);

    // ------------------------ Ladder, Door, Trapdoor
    //Ladder
    <recipetype:woodworks:sawing>.addJsonRecipe(ladder[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 2, "ingredient": {"item": plankItem}, "result": ladderItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(ladder[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 8, "ingredient": {"item": logItem}, "result": ladderItem}}]});

    craftingTable.addShaped(ladder[1] + "_from_plank", <item:${ladderItem}> * 6, [
    [<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:stick>],
    [<item:minecraft:stick>, <item:${plankItem}>, <item:minecraft:stick>],
    [<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:stick>]
    ]);

    //Door
    <recipetype:woodworks:sawing>.addJsonRecipe(door[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 2, "ingredient": {"item": logItem}, "result": doorItem}}]});

    craftingTable.addShaped(door[1] + "_from_plank", <item:${doorItem}> * 3, [
    [<item:${plankItem}>, <item:${plankItem}>],
    [<item:${plankItem}>, <item:${plankItem}>],
    [<item:${plankItem}>, <item:${plankItem}>]
    ]);

    //Trapdoor
    <recipetype:woodworks:sawing>.addJsonRecipe(trapdoor[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": trapdoorItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(trapdoor[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": logItem}, "result": trapdoorItem}}]});

    craftingTable.addShaped(trapdoor[1] + "_from_plank", <item:${trapdoorItem}> * 3, [
    [<item:${plankItem}>],
    [<item:${plankItem}>],
    [<item:${plankItem}>]
    ]);

    // ------------------------ Signs
    //Sign
    <recipetype:woodworks:sawing>.addJsonRecipe(sign[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": wsignItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(sign[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": logItem}, "result": wsignItem}}]});

    craftingTable.addShaped(sign[1] + "_from_plank", <item:${wsignItem}> * 1, [
    [<item:${plankItem}>],
    [<item:minecraft:stick>]
    ]);

    //Hanging Sign
    <recipetype:woodworks:sawing>.addJsonRecipe(hangingSign[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": hangingSignItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(hangingSign[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": logItem}, "result": hangingSignItem}}]});

    craftingTable.addShaped(hangingSign[1] + "_from_plank", <item:${hangingSignItem}> * 1, [
    [<item:${plankItem}>],
    [<item:minecraft:chain>],
    [<item:minecraft:stick>]
    ]);

    //Sign Post
    <recipetype:woodworks:sawing>.addJsonRecipe(signPost[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": signPostItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(signPost[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": logItem}, "result": signPostItem}}]});

    craftingTable.addShaped(signPost[1] + "_from_plank", <item:${signPostItem}> * 1, [
    [<item:${plankItem}>, <item:modestmining:plank>]
    ]);

    // ------------------------ Bookshelf
    craftingTable.addShaped(bookshelf[1] + "_from_plank", <item:${bookshelfItem}> * 4, [
    [<item:${plankItem}>, <item:${plankItem}>],
    [<item:minecraft:book>, <item:minecraft:book>],
    [<item:${plankItem}>, <item:${plankItem}>]
    ]);

    // ------------------------ Chest
    craftingTable.addShaped(chest[1] + "_from_plank", <item:${chestItem}> * 1, [
    [<item:${plankItem}>, <item:${plankItem}>, <item:${plankItem}>],
    [<item:${plankItem}>, <item:minecraft:air>, <item:${plankItem}>],
    [<item:${plankItem}>, <item:${plankItem}>, <item:${plankItem}>]
    ]);

    craftingTable.addShaped(chestTrap[1] + "_from_plank", <item:${chestTrapItem}> * 1, [
    [<item:${plankItem}>, <item:${plankItem}>, <item:${plankItem}>],
    [<item:${plankItem}>, <item:minecraft:tripwire_hook>, <item:${plankItem}>],
    [<item:${plankItem}>, <item:${plankItem}>, <item:${plankItem}>]
    ]);

    craftingTable.addShapeless(chestTrap[1] + "_from_chest", <item:${chestTrapItem}> * 1, [<item:${chestItem}>, <item:minecraft:tripwire_hook>]);

    // ------------------------ Boat
    craftingTable.addShaped(boat[1] + "_from_plank", <item:${boatItem}> * 1, [
    [<item:${plankItem}>, <item:minecraft:air>, <item:${plankItem}>],
    [<item:${plankItem}>, <item:${plankItem}>, <item:${plankItem}>]
    ]);

    craftingTable.addShaped(boatLong[1] + "_from_plank", <item:${boatLongItem}> * 1, [
    [<item:${plankItem}>, <item:${boatItem}>, <item:${plankItem}>],
    [<item:${plankItem}>, <item:${plankItem}>, <item:${plankItem}>]
    ]);

    craftingTable.addShapeless(boatChest[1] + "_from_chest", <item:${boatChestItem}> * 1, [<item:${boatItem}>, <tagmanager:items>.tag("fundamentallyfixed:chests")]);

    craftingTable.addShapeless(boatFurnace[1] + "_from_chest", <item:${boatFurnaceItem}> * 1, [<item:${boatItem}>, <item:minecraft:furnace>]);

    // ------------------------ Beehive
    craftingTable.addShaped(hive[1] + "_from_plank", <item:${hiveItem}> * 1, [
    [<item:${plankItem}>, <item:${plankItem}>],
    [<item:minecraft:honeycomb>, <item:minecraft:honeycomb>],
    [<item:${plankItem}>, <item:${plankItem}>]
    ]);

    // ------------------------ Cabinet & Drawers
    craftingTable.addShaped(drawer[1] + "_from_plank", <item:${drawerItem}> * 1, [
    [<item:${plankItem}>, <item:${plankItem}>, <item:${plankItem}>],
    [<item:${wslabItem}>, <item:${wslabItem}>, <item:${wslabItem}>],
    [<item:${plankItem}>, <item:${plankItem}>, <item:${plankItem}>]
    ]);

    craftingTable.addShaped(cabinet[1] + "_from_plank", <item:${cabinetItem}> * 1, [
    [<item:${plankItem}>, <item:${wslabItem}>, <item:${plankItem}>],
    [<item:${plankItem}>, <item:${wslabItem}>, <item:${plankItem}>,],
    [<item:${plankItem}>, <item:${wslabItem}>, <item:${plankItem}>,]
    ]);

    // ------------------------ Shutter
    <recipetype:woodworks:sawing>.addJsonRecipe(shutter[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": shutterItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(shutter[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": logItem}, "result": shutterItem}}]});

    craftingTable.addShaped(shutter[1] + "_from_plank", <item:${shutterItem}> * 3, [
    [<item:${plankItem}>, <item:modestmining:plank>, <item:${plankItem}>],
    [<item:modestmining:plank>, <item:${plankItem}>, <item:modestmining:plank>]
    ]);

    // ------------------------ Planter Box
    craftingTable.addShaped(planter[1] + "_from_plank", <item:${planterItem}> * 2, [
    [<tagmanager:items>.tag("fundamentallyfixed:dirts")],
    [<item:${plankItem}>]
    ]);

    // ------------------------ Shelf, Table, & Chair
    //Shelf
    <recipetype:woodworks:sawing>.addJsonRecipe(shelf[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": shelfItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(shelf[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": logItem}, "result": shelfItem}}]});

    craftingTable.addShaped(shelf[1] + "_from_plank", <item:${shelfItem}> * 3, [
    [<item:${plankItem}>, <item:${plankItem}>, <item:${plankItem}>],
    [<item:modestmining:plank>, <item:minecraft:air>, <item:minecraft:air>]

    ]);
    //Table
    <recipetype:woodworks:sawing>.addJsonRecipe(table[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": tableItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(table[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": logItem}, "result": tableItem}}]});

    craftingTable.addShaped(table[1] + "_from_plank", <item:${tableItem}> * 3, [
    [<item:${plankItem}>, <item:${plankItem}>, <item:${plankItem}>],
    [<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:stick>],
    [<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:stick>]
    ]);

    //Chair
    <recipetype:woodworks:sawing>.addJsonRecipe(chair[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 1, "ingredient": {"item": plankItem}, "result": chairItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(chair[1] + "_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": logItem}, "result": chairItem}}]});

    craftingTable.addShaped(chair[1] + "_from_plank", <item:${chairItem}> * 3, [
    [<item:${plankItem}>, <item:minecraft:air>],
    [<item:${plankItem}>, <item:${plankItem}>],
    [<item:minecraft:stick>, <item:minecraft:stick>]
    ]);


    // ------------------------ Shelf, Table, & Chair
    <recipetype:woodworks:sawing>.addJsonRecipe(post[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": logItem}, "result": postItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(strippedPost[1] + "_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": strippedLogItem}, "result": strippedPostItem}}]});

    craftingTable.addShaped(post[1] + "_from_plank", <item:${postItem}> * 8, [
    [<item:${logItem}>],
    [<item:${logItem}>]
    ]);

    craftingTable.addShaped(strippedPost[1] + "_from_plank", <item:${strippedPostItem}> * 8, [
    [<item:${strippedLogItem}>],
    [<item:${strippedLogItem}>]
    ]);

    <recipetype:farmersdelight:cutting>.addRecipe(strippedPost[1] + "cutting_board", <item:${postItem}>, [<item:${strippedPostItem}>, <item:farmersdelight:tree_bark>], <tagmanager:items>.tag("fundamentallyfixed:axes"), "minecraft:block.wood.break");

    // ------------------------ Ingredients
    <recipetype:woodworks:sawing>.addJsonRecipe(plank[1] + "bowl_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 8, "ingredient": {"item": logItem}, "result": bowlIngItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(plank[1] + "bowl_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 2, "ingredient": {"item": plankItem}, "result": bowlIngItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(plank[1] + "plank_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 16, "ingredient": {"item": logItem}, "result": plankIngItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(plank[1] + "plank_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": plankItem}, "result": plankIngItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(plank[1] + "stick_from_log_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 16, "ingredient": {"item": logItem}, "result": stickIngItem}}]});

    <recipetype:woodworks:sawing>.addJsonRecipe(plank[1] + "stick_from_plank_sawing", {
    "type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
    "count": 4, "ingredient": {"item": plankItem}, "result": stickIngItem}}]});
}

<recipetype:woodworks:sawing>.addJsonRecipe("stick_from_plankk_sawing", {
"type": "forge:conditional", "recipes": [{"conditions": [{"type": "woodworks:config", "value": "sawmill"}], "recipe": {"type": "woodworks:sawmill",
"count": 1, "ingredient": {"item": plankIngItem}, "result": stickIngItem}}]});