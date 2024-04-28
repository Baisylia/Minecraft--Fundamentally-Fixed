import mods.farmersdelight.CookingPot;
import crafttweaker.api.recipe.StoneCutterManager;
//import mods.clayworks.Kiln;

val dirt_bricks = ["dirt_bricks", "quark:dirt_bricks", "quark:dirt_bricks_stairs", "quark:dirt_bricks_slab", "quark:dirt_bricks_wall", "abc", "stonecutter"] as string[];
val shingles = ["shingles", "hnh:shingles", "hnh:shingle_stairs", "hnh:shingle_slab", "hnh:shingles_wall", "ab", "stonecutter"] as string[];
val terracotta = ["terracotta", "minecraft:terracotta", "clayworks:terracotta_stairs", "clayworks:terracotta_slab", "clayworks:terracotta_wall", "abc", "stonecutter"] as string[];
val terracotta_bricks = ["terracotta_bricks", "hnh:terracotta_bricks", "hnh:terracotta_brick_stairs", "hnh:terracotta_brick_slab", "clayworks:terracotta_brick_wall", "abc", "stonecutter"] as string[];
val mud_bricks = ["mud_bricks", "minecraft:mud_bricks", "minecraft:mud_brick_stairs", "minecraft:mud_brick_slab", "minecraft:mud_brick_wall", "abc", "stonecutter"] as string[];
val bricks = ["bricks", "minecraft:bricks", "minecraft:brick_stairs", "minecraft:brick_slab", "minecraft:brick_wall", "abc", "stonecutter"] as string[];
val adobe_bricks = ["adobe_bricks", "modestmining:adobe_bricks", "modestmining:adobe_brick_stairs", "modestmining:adobe_brick_slab", "modestmining:adobe_brick_wall", "abc", "stonecutter"] as string[];
val ash_bricks = ["ash_bricks", "supplementaries:ash_bricks", "supplementaries:ash_bricks_stairs", "supplementaries:ash_bricks_slab", "supplementaries:ash_bricks_wall", "abc", "stonecutter"] as string[];
val raw_copper_bricks = ["raw_copper_bricks", "quark:raw_copper_bricks", "quark:raw_copper_bricks_stairs", "quark:raw_copper_bricks_slab", "quark:raw_copper_bricks_wall", "ab", "stonecutter"] as string[];
val cut_copper = ["cut_copper", "minecraft:cut_copper", "minecraft:cut_copper_stairs", "minecraft:cut_copper_slab", "minecraft:cut_copper_wall", "ab", "stonecutter"] as string[];
val copper_shingles = ["copper_shingles", "create:copper_shingles", "create:copper_shingle_stairs", "create:copper_shingle_slab", "create:copper_shingle_wall", "ab", "stonecutter"] as string[];
val copper_tiles = ["copper_tiles", "create:copper_tiles", "create:copper_tile_stairs", "create:copper_tile_slab", "create:copper_tile_wall", "ab", "stonecutter"] as string[];
val waxed_cut_copper = ["waxed_cut_copper", "minecraft:waxed_cut_copper", "minecraft:waxed_cut_copper_stairs", "minecraft:waxed_cut_copper_slab", "minecraft:waxed_cut_copper_wall", "ab", "stonecutter"] as string[];
val waxed_copper_shingles = ["waxed_copper_shingles", "create:waxed_copper_shingles", "create:waxed_copper_shingle_stairs", "create:waxed_copper_shingle_slab", "create:waxed_copper_shingle_wall", "ab", "stonecutter"] as string[];
val waxed_copper_tiles = ["waxed_copper_tiles", "create:waxed_copper_tiles", "create:waxed_copper_tile_stairs", "create:waxed_copper_tile_slab", "create:waxed_copper_tile_wall", "ab", "stonecutter"] as string[];
val exposed_cut_copper = ["exposed_cut_copper", "minecraft:exposed_cut_copper", "minecraft:exposed_cut_copper_stairs", "minecraft:exposed_cut_copper_slab", "minecraft:exposed_cut_copper_wall", "ab", "stonecutter"] as string[];
val exposed_copper_shingles = ["exposed_copper_shingles", "create:exposed_copper_shingles", "create:exposed_copper_shingle_stairs", "create:exposed_copper_shingle_slab", "create:exposed_copper_shingle_wall", "ab", "stonecutter"] as string[];
val exposed_copper_tiles = ["exposed_copper_tiles", "create:exposed_copper_tiles", "create:exposed_copper_tile_stairs", "create:exposed_copper_tile_slab", "create:exposed_copper_tile_wall", "ab", "stonecutter"] as string[];
val waxed_exposed_cut_copper = ["waxed_exposed_cut_copper", "minecraft:waxed_exposed_cut_copper", "minecraft:waxed_exposed_cut_copper_stairs", "minecraft:waxed_exposed_cut_copper_slab", "minecraft:waxed_exposed_cut_copper_wall", "ab", "stonecutter"] as string[];
val waxed_exposed_copper_shingles = ["waxed_exposed_copper_shingles", "create:waxed_exposed_copper_shingles", "create:waxed_exposed_copper_shingle_stairs", "create:waxed_exposed_copper_shingle_slab", "create:waxed_exposed_copper_shingle_wall", "ab", "stonecutter"] as string[];
val waxed_exposed_copper_tiles = ["waxed_exposed_copper_tiles", "create:waxed_exposed_copper_tiles", "create:waxed_exposed_copper_tile_stairs", "create:waxed_exposed_copper_tile_slab", "create:waxed_exposed_copper_tile_wall", "ab", "stonecutter"] as string[];
val weathered_cut_copper = ["weathered_cut_copper", "minecraft:weathered_cut_copper", "minecraft:weathered_cut_copper_stairs", "minecraft:weathered_cut_copper_slab", "minecraft:weathered_cut_copper_wall", "ab", "stonecutter"] as string[];
val weathered_copper_shingles = ["weathered_copper_shingles", "create:weathered_copper_shingles", "create:weathered_copper_shingle_stairs", "create:weathered_copper_shingle_slab", "create:weathered_copper_shingle_wall", "ab", "stonecutter"] as string[];
val weathered_copper_tiles = ["weathered_copper_tiles", "create:weathered_copper_tiles", "create:weathered_copper_tile_stairs", "create:weathered_copper_tile_slab", "create:weathered_copper_tile_wall", "ab", "stonecutter"] as string[];
val waxed_weathered_cut_copper = ["waxed_weathered_cut_copper", "minecraft:waxed_weathered_cut_copper", "minecraft:waxed_weathered_cut_copper_stairs", "minecraft:waxed_weathered_cut_copper_slab", "minecraft:waxed_weathered_cut_copper_wall", "ab", "stonecutter"] as string[];
val waxed_weathered_copper_shingles = ["waxed_weathered_copper_shingles", "create:waxed_weathered_copper_shingles", "create:waxed_weathered_copper_shingle_stairs", "create:waxed_weathered_copper_shingle_slab", "create:waxed_weathered_copper_shingle_wall", "ab", "stonecutter"] as string[];
val waxed_weathered_copper_tiles = ["waxed_weathered_copper_tiles", "create:waxed_weathered_copper_tiles", "create:waxed_weathered_copper_tile_stairs", "create:waxed_weathered_copper_tile_slab", "create:waxed_weathered_copper_tile_wall", "ab", "stonecutter"] as string[];
val oxidized_cut_copper = ["oxidized_cut_copper", "minecraft:oxidized_cut_copper", "minecraft:oxidized_cut_copper_stairs", "minecraft:oxidized_cut_copper_slab", "minecraft:oxidized_cut_copper_wall", "ab", "stonecutter"] as string[];
val oxidized_copper_shingles = ["oxidized_copper_shingles", "create:oxidized_copper_shingles", "create:oxidized_copper_shingle_stairs", "create:oxidized_copper_shingle_slab", "create:oxidized_copper_shingle_wall", "ab", "stonecutter"] as string[];
val oxidized_copper_tiles = ["oxidized_copper_tiles", "create:oxidized_copper_tiles", "create:oxidized_copper_tile_stairs", "create:oxidized_copper_tile_slab", "create:oxidized_copper_tile_wall", "ab", "stonecutter"] as string[];
val waxed_oxidized_cut_copper = ["waxed_oxidized_cut_copper", "minecraft:waxed_oxidized_cut_copper", "minecraft:waxed_oxidized_cut_copper_stairs", "minecraft:waxed_oxidized_cut_copper_slab", "minecraft:waxed_oxidized_cut_copper_wall", "ab", "stonecutter"] as string[];
val waxed_oxidized_copper_shingles = ["waxed_oxidized_copper_shingles", "create:waxed_oxidized_copper_shingles", "create:waxed_oxidized_copper_shingle_stairs", "create:waxed_oxidized_copper_shingle_slab", "create:waxed_oxidized_copper_shingle_wall", "ab", "stonecutter"] as string[];
val waxed_oxidized_copper_tiles = ["waxed_oxidized_copper_tiles", "create:waxed_oxidized_copper_tiles", "create:waxed_oxidized_copper_tile_stairs", "create:waxed_oxidized_copper_tile_slab", "create:waxed_oxidized_copper_tile_wall", "ab", "stonecutter"] as string[];
val raw_iron_bricks = ["raw_iron_bricks", "quark:raw_iron_bricks", "quark:raw_iron_bricks_stairs", "quark:raw_iron_bricks_slab", "quark:raw_iron_bricks_wall", "ab", "stonecutter"] as string[];
val raw_gold_bricks = ["raw_gold_bricks", "quark:raw_gold_bricks", "quark:raw_gold_bricks_stairs", "quark:raw_gold_bricks_slab", "quark:raw_gold_bricks_wall", "ab", "stonecutter"] as string[];
val rough_ruby_bricks = ["rough_ruby_bricks", "sullysmod:rough_jade_bricks", "sullysmod:rough_jade_brick_stairs", "sullysmod:rough_jade_brick_slab", "sullysmod:rough_jade_brick_wall", "ab", "stonecutter"] as string[];
val polished_jade_bricks = ["polished_jade_bricks", "sullysmod:polished_jade_bricks", "sullysmod:polished_jade_brick_stairs", "sullysmod:polished_jade_brick_slab", "sullysmod:polished_jade_brick_wall", "ab", "stonecutter"] as string[];
val polished_jade_shingles = ["polished_jade_shingle", "sullysmod:polished_jade_shingles", "sullysmod:polished_jade_shingle_stairs", "sullysmod:polished_jade_shingle_slab", "sullysmod:polished_jade_shingle_wall", "ab", "stonecutter"] as string[];
val quartz_block = ["quartz_block", "minecraft:quartz_block", "minecraft:quartz_stairs", "minecraft:quartz_slab", "minecraft:quartz_wall", "ab", "stonecutter"] as string[];
val smooth_quartz_block = ["smooth_quartz", "minecraft:smooth_quartz", "minecraft:smooth_quartz_stairs", "minecraft:smooth_quartz_slab", "minecraft:smooth_quartz_wall", "ab", "stonecutter"] as string[];
val lapis_bricks = ["lapis_bricks", "supplementaries:lapis_bricks", "supplementaries:lapis_bricks_stairs", "supplementaries:lapis_bricks_slab", "supplementaries:lapis_bricks_wall", "abc", "stonecutter"] as string[];
val prismarine = ["prismarine", "minecraft:prismarine", "minecraft:prismarine_stairs", "minecraft:prismarine_slab", "minecraft:prismarine_wall", "abc", "stonecutter"] as string[];
val polished_prismarine = ["polished_prismarine", "fundamentallyfixed:polished_phyton", "fundamentallyfixed:polished_phyton_stairs", "fundamentallyfixed:polished_phyton_slab", "fundamentallyfixed:polished_phyton_wall", "abc", "stonecutter"] as string[];
val prismarine_bricks = ["prismarine_bricks", "minecraft:prismarine_bricks", "minecraft:prismarine_brick_stairs", "minecraft:prismarine_brick_slab", "minecraft:prismarine_brick_wall", "ab", "stonecutter"] as string[];
val dark_prismarine = ["dark_prismarine", "minecraft:dark_prismarine", "minecraft:dark_prismarine_stairs", "minecraft:dark_prismarine_slab", "minecraft:dark_prismarine_wall", "ab", "stonecutter"] as string[];
val luminous_prismarine = ["luminous_prismarine", "upgrade_aquatic:luminous_prismarine", "upgrade_aquatic:luminous_prismarine_stairs", "upgrade_aquatic:luminous_prismarine_slab", "upgrade_aquatic:luminous_prismarine_wall", "ab", "stonecutter"] as string[];
val polished_netherrack = ["polished_netherrack", "paletteblocks:polished_netherrack", "paletteblocks:polished_netherrack_stairs", "paletteblocks:polished_netherrack_slab", "paletteblocks:polished_netherrack_wall", "abc", "stonecutter"] as string[];
val netherrack_bricks = ["netherrack_bricks", "quark:netherrack_bricks", "quark:netherrack_bricks_stairs", "quark:netherrack_bricks_slab", "quark:netherrack_bricks_wall", "abc", "stonecutter"] as string[];
val nether_bricks = ["nether_bricks", "minecraft:nether_bricks", "minecraft:nether_brick_stairs", "minecraft:nether_brick_slab", "minecraft:nether_brick_wall", "abc", "stonecutter"] as string[];
val red_nether_bricks = ["red_nether_bricks", "minecraft:red_nether_bricks", "minecraft:red_nether_brick_stairs", "minecraft:red_nether_brick_slab", "minecraft:red_nether_brick_wall", "abc", "stonecutter"] as string[];
val blue_nether_bricks = ["blue_nether_bricks", "quark:blue_nether_bricks", "quark:blue_nether_bricks_stairs", "quark:blue_nether_bricks_slab", "quark:blue_nether_bricks_wall", "abc", "stonecutter"] as string[];
val dullstone_bricks = ["dullstone_bricks", "infernalexp:dullstone_bricks", "infernalexp:dullstone_brick_stairs", "infernalexp:dullstone_brick_slab", "infernalexp:dullstone_brick_wall", "abc", "stonecutter"] as string[];
val dimstone_bricks = ["dimstone_bricks", "infernalexp:dimstone_bricks", "infernalexp:dimstone_brick_stairs", "infernalexp:dimstone_brick_slab", "infernalexp:dimstone_brick_wall", "abc", "stonecutter"] as string[];
val glowstone_bricks = ["glowstone_bricks", "infernalexp:glowstone_bricks", "infernalexp:glowstone_brick_stairs", "infernalexp:glowstone_brick_slab", "infernalexp:glowstone_brick_wall", "abc", "stonecutter"] as string[];
val soulsand = ["soulsand", "minecraft:soul_sand", "infernalexp:soul_sand_stairs", "infernalexp:soul_sand_slab", "infernalexp:soul_sand_wall", "ab", "stonecutter"] as string[];
val soulsoil = ["soulsoil", "minecraft:soul_soil", "infernalexp:soul_soil_stairs", "infernalexp:soul_soil_slab", "infernalexp:soul_soil_wall", "ab", "stonecutter"] as string[];
val soulstone = ["soulstone", "infernalexp:soul_stone", "infernalexp:soul_stone_stairs", "infernalexp:soul_stone_slab", "infernalexp:soul_stone_wall", "abc", "stonecutter"] as string[];
val soulslate = ["soulslate", "infernalexp:soul_slate", "infernalexp:soul_slate_stairs", "infernalexp:soul_slate_slab", "infernalexp:soul_slate_wall", "ab", "stonecutter"] as string[];
val soulstonebricks = ["soulstonebricks", "infernalexp:soul_stone_bricks", "infernalexp:soul_stone_brick_stairs", "infernalexp:soul_stone_brick_slab", "infernalexp:soul_stone_brick_wall", "ab", "stonecutter"] as string[];
val rock_salt = ["rock_salt", "spelunkery:rock_salt_block", "spelunkery:rock_salt_stairs", "spelunkery:rock_salt_slab", "spelunkery:rock_salt_wall", "abc", "stonecutter"] as string[];
val polished_rock_salt = ["polished_rock_salt", "spelunkery:polished_rock_salt", "spelunkery:polished_rock_salt_stairs", "spelunkery:polished_rock_salt_slab", "spelunkery:polished_rock_salt_wall", "abc", "stonecutter"] as string[];
val rock_salt_bricks = ["rock_salt_bricks", "spelunkery:rock_salt_bricks", "spelunkery:rock_salt_brick_stairs", "spelunkery:rock_salt_brick_slab", "spelunkery:rock_salt_brick_wall", "abc", "stonecutter"] as string[];
val packed_ice = ["packed_ice", "windswept:packed_ice_bricks", "windswept:packed_ice_brick_stairs", "windswept:packed_ice_brick_slab", "windswept:packed_ice_brick_wall", "abc", "stonecutter"] as string[];
val blue_ice = ["blue_ice", "windswept:blue_ice_bricks", "windswept:blue_ice_brick_stairs", "windswept:blue_ice_brick_slab", "windswept:blue_ice_brick_wall", "abc", "stonecutter"] as string[];
val snow_bricks = ["snow_bricks", "windswept:snow_bricks", "windswept:snow_brick_stairs", "windswept:snow_brick_slab", "windswept:snow_brick_wall", "abc", "stonecutter"] as string[];
val holystone = ["holystone", "aether:holystone", "aether:holystone_stairs", "aether:holystone_slab", "aether:holystone_wall", "abc", "stonecutter"] as string[];
val holystone_bricks = ["holystone_bricks", "aether:holystone_bricks", "aether:holystone_brick_stairs", "aether:holystone_brick_slab", "aether:holystone_brick_wall", "abc", "stonecutter"] as string[];
val florarock_bricks = ["florarock_bricks", "fundamentallyfixed:florarock_bricks", "fundamentallyfixed:florarock_brick_stairs", "fundamentallyfixed:florarock_brick_slab", "fundamentallyfixed:florarock_brick_wall", "abc", "stonecutter"] as string[];
val white_shingles = ["white_shingle", "hnh:white_shingles", "hnh:white_shingle_stairs", "hnh:white_shingle_slab", "hnh:white_shingle_wall", "ab", "stonecutter"] as string[];
val light_gray_shingles = ["light_gray_shingle", "hnh:light_gray_shingles", "hnh:light_gray_shingle_stairs", "hnh:light_gray_shingle_slab", "hnh:light_gray_shingle_wall", "ab", "stonecutter"] as string[];
val gray_shingles = ["gray_shingle", "hnh:gray_shingles", "hnh:gray_shingle_stairs", "hnh:gray_shingle_slab", "hnh:gray_shingle_wall", "ab", "stonecutter"] as string[];
val black_shingles = ["black_shingle", "hnh:black_shingles", "hnh:black_shingle_stairs", "hnh:black_shingle_slab", "hnh:black_shingle_wall", "ab", "stonecutter"] as string[];
val brown_shingles = ["brown_shingle", "hnh:brown_shingles", "hnh:brown_shingle_stairs", "hnh:brown_shingle_slab", "hnh:brown_shingle_wall", "ab", "stonecutter"] as string[];
val red_shingles = ["red_shingle", "hnh:red_shingles", "hnh:red_shingle_stairs", "hnh:red_shingle_slab", "hnh:red_shingle_wall", "ab", "stonecutter"] as string[];
val orange_shingles = ["orange_shingle", "hnh:orange_shingles", "hnh:orange_shingle_stairs", "hnh:orange_shingle_slab", "hnh:orange_shingle_wall", "ab", "stonecutter"] as string[];
val yellow_shingles = ["yellow_shingle", "hnh:yellow_shingles", "hnh:yellow_shingle_stairs", "hnh:yellow_shingle_slab", "hnh:yellow_shingle_wall", "ab", "stonecutter"] as string[];
val lime_shingles = ["lime_shingle", "hnh:lime_shingles", "hnh:lime_shingle_stairs", "hnh:lime_shingle_slab", "hnh:lime_shingle_wall", "ab", "stonecutter"] as string[];
val green_shingles = ["green_shingle", "hnh:green_shingles", "hnh:green_shingle_stairs", "hnh:green_shingle_slab", "hnh:green_shingle_wall", "ab", "stonecutter"] as string[];
val cyan_shingles = ["cyan_shingle", "hnh:cyan_shingles", "hnh:cyan_shingle_stairs", "hnh:cyan_shingle_slab", "hnh:cyan_shingle_wall", "ab", "stonecutter"] as string[];
val light_blue_shingles = ["light_blue_shingle", "hnh:light_blue_shingles", "hnh:light_blue_shingle_stairs", "hnh:light_blue_shingle_slab", "hnh:light_blue_shingle_wall", "ab", "stonecutter"] as string[];
val blue_shingles = ["blue_shingle", "hnh:blue_shingles", "hnh:blue_shingle_stairs", "hnh:blue_shingle_slab", "hnh:blue_shingle_wall", "ab", "stonecutter"] as string[];
val purple_shingles = ["purple_shingle", "hnh:purple_shingles", "hnh:purple_shingle_stairs", "hnh:purple_shingle_slab", "hnh:purple_shingle_wall", "ab", "stonecutter"] as string[];
val magenta_shingles = ["magenta_shingle", "hnh:magenta_shingles", "hnh:magenta_shingle_stairs", "hnh:magenta_shingle_slab", "hnh:magenta_shingle_wall", "ab", "stonecutter"] as string[];
val pink_shingles = ["pink_shingle", "hnh:pink_shingles", "hnh:pink_shingle_stairs", "hnh:pink_shingle_slab", "hnh:pink_shingle_wall", "ab", "stonecutter"] as string[];
val white_bricks = ["white_brick", "hnh:white_terracotta_bricks", "hnh:white_shingle_stairs", "hnh:white_shingle_slab", "hnh:white_shingle_wall", "ab", "stonecutter"] as string[];
val light_gray_bricks = ["light_gray_brick", "hnh:light_gray_terracotta_bricks", "hnh:light_gray_terracotta_brick_stairs", "hnh:light_gray_terracotta_brick_slab", "hnh:light_gray_terracotta_brick_wall", "ab", "stonecutter"] as string[];
val gray_bricks = ["gray_brick", "hnh:gray_terracotta_bricks", "hnh:gray_terracotta_brick_stairs", "hnh:gray_terracotta_brick_slab", "hnh:gray_terracotta_brick_wall", "ab", "stonecutter"] as string[];
val black_bricks = ["black_brick", "hnh:black_terracotta_bricks", "hnh:black_terracotta_brick_stairs", "hnh:black_terracotta_brick_slab", "hnh:black_terracotta_brick_wall", "ab", "stonecutter"] as string[];
val brown_bricks = ["brown_brick", "hnh:brown_terracotta_bricks", "hnh:brown_terracotta_brick_stairs", "hnh:brown_terracotta_brick_slab", "hnh:brown_terracotta_brick_wall", "ab", "stonecutter"] as string[];
val red_bricks = ["red_brick", "hnh:red_terracotta_bricks", "hnh:red_terracotta_brick_stairs", "hnh:red_terracotta_brick_slab", "hnh:red_terracotta_brick_wall", "ab", "stonecutter"] as string[];
val orange_bricks = ["orange_brick", "hnh:orange_terracotta_bricks", "hnh:orange_terracotta_brick_stairs", "hnh:orange_terracotta_brick_slab", "hnh:orange_terracotta_brick_wall", "ab", "stonecutter"] as string[];
val yellow_bricks = ["yellow_brick", "hnh:yellow_terracotta_bricks", "hnh:yellow_terracotta_brick_stairs", "hnh:yellow_terracotta_brick_slab", "hnh:yellow_terracotta_brick_wall", "ab", "stonecutter"] as string[];
val lime_bricks = ["lime_brick", "hnh:lime_terracotta_bricks", "hnh:lime_terracotta_brick_stairs", "hnh:lime_terracotta_brick_slab", "hnh:lime_terracotta_brick_wall", "ab", "stonecutter"] as string[];
val green_bricks = ["green_brick", "hnh:green_terracotta_bricks", "hnh:green_terracotta_brick_stairs", "hnh:green_terracotta_brick_slab", "hnh:green_terracotta_brick_wall", "ab", "stonecutter"] as string[];
val cyan_bricks = ["cyan_brick", "hnh:cyan_terracotta_bricks", "hnh:cyan_terracotta_brick_stairs", "hnh:cyan_terracotta_brick_slab", "hnh:cyan_terracotta_brick_wall", "ab", "stonecutter"] as string[];
val light_blue_bricks = ["light_blue_brick", "hnh:light_blue_terracotta_bricks", "hnh:light_blue_terracotta_brick_stairs", "hnh:light_blue_terracotta_brick_slab", "hnh:light_blue_terracotta_brick_wall", "ab", "stonecutter"] as string[];
val blue_bricks = ["blue_brick", "hnh:blue_terracotta_bricks", "hnh:blue_terracotta_brick_stairs", "hnh:blue_terracotta_brick_slab", "hnh:blue_terracotta_brick_wall", "ab", "stonecutter"] as string[];
val purple_bricks = ["purple_brick", "hnh:purple_terracotta_bricks", "hnh:purple_terracotta_brick_stairs", "hnh:purple_terracotta_brick_slab", "hnh:purple_terracotta_brick_wall", "ab", "stonecutter"] as string[];
val magenta_bricks = ["magenta_brick", "hnh:magenta_terracotta_bricks", "hnh:magenta_terracotta_brick_stairs", "hnh:magenta_terracotta_brick_slab", "hnh:magenta_terracotta_brick_wall", "ab", "stonecutter"] as string[];
val pink_bricks = ["pink_brick", "hnh:pink_terracotta_bricks", "hnh:pink_terracotta_brick_stairs", "hnh:pink_terracotta_brick_slab", "hnh:pink_terracotta_brick_wall", "ab", "stonecutter"] as string[];
val permafrost = ["permafrost", "quark:permafrost", "quark:permafrost_stairs", "quark:permafrost_slab", "quark:permafrost_wall", "abc", "stonecutter"] as string[];
val permafrost_bricks = ["permafrost_bricks", "quark:permafrost_bricks", "quark:permafrost_bricks_stairs", "quark:permafrost_bricks_slab", "quark:permafrost_bricks_wall", "abc", "stonecutter"] as string[];
val scute_pavement = ["scute_pavement", "upgrade_aquatic:scute_pavement", "upgrade_aquatic:scute_pavement_stairs", "upgrade_aquatic:scute_pavement_slab", "upgrade_aquatic:scute_pavement_wall", "abc", "stonecutter"] as string[];
val scute_shingles = ["scute_shingles", "upgrade_aquatic:scute_shingles", "upgrade_aquatic:scute_shingle_stairs", "upgrade_aquatic:scute_shingle_slab", "upgrade_aquatic:scute_shingle_wall", "abc", "stonecutter"] as string[];
val purpur = ["purpur", "minecraft:purpur_block", "minecraft:purpur_stairs", "minecraft:purpur_slab", "minecraft:purpur_wall", "ab", "stonecutter"] as string[];
val duskbound = ["duskbound", "quark:duskbound_block", "quark:duskbound_block_stairs", "quark:duskbound_block_slab", "quark:duskbound_block_wall", "ab", "stonecutter"] as string[];
val midori = ["midori", "quark:midori_block", "quark:midori_block_stairs", "quark:midori_block_slab", "quark:midori_block_wall", "ab", "stonecutter"] as string[];
val checkered = ["checkered", "supplementaries:checker_block", "supplementaries:checker_stairs", "supplementaries:checker_slab", "supplementaries:checker_wall", "b", "stonecutter"] as string[];
val seashell_tiles = ["seashell_tiles", "ecologics:seashell_tiles", "ecologics:seashell_tile_stairs", "ecologics:seashell_tile_slab", "ecologics:seashell_tile_wall", "abc", "stonecutter"] as string[];
val snail_shell_tiles = ["snail_shell_tiles", "autumnity:snail_shell_tiles", "autumnity:snail_shell_tile_stairs", "autumnity:snail_shell_tile_slab", "autumnity:snail_shell_tile_wall", "abc", "stonecutter"] as string[];
val snail_shell_bricks = ["snail_shell_bricks", "autumnity:snail_shell_bricks", "autumnity:snail_shell_brick_stairs", "autumnity:snail_shell_brick_slab", "autumnity:snail_shell_brick_wall", "abc", "stonecutter"] as string[];
val daub = ["daub", "supplementaries:daub", "suppsquared:daub_stairs", "suppsquared:daub_slab", "suppsquared:daub_wall", "a", "stonecutter"] as string[];
val daub_frame = ["daub_frame", "supplementaries:daub_frame", "suppsquared:daub_frame_stairs", "suppsquared:daub_frame_slab", "suppsquared:daub_frame_wall", "a", "stonecutter"] as string[];

var craftSets = [dirt_bricks,
shingles, terracotta, terracotta_bricks, mud_bricks, bricks, adobe_bricks, ash_bricks, raw_copper_bricks, cut_copper, copper_shingles, copper_tiles,
waxed_cut_copper, waxed_copper_shingles, waxed_copper_tiles, exposed_cut_copper, exposed_copper_shingles, exposed_copper_tiles, waxed_exposed_cut_copper,
waxed_exposed_copper_shingles, waxed_exposed_copper_tiles, weathered_cut_copper, weathered_copper_shingles, weathered_copper_tiles, waxed_weathered_cut_copper,
waxed_weathered_copper_shingles, waxed_weathered_copper_tiles, oxidized_cut_copper, oxidized_copper_shingles, oxidized_copper_tiles, waxed_oxidized_cut_copper,
waxed_oxidized_copper_shingles, waxed_oxidized_copper_tiles, raw_iron_bricks, raw_gold_bricks, rough_ruby_bricks,
polished_jade_bricks, polished_jade_shingles, quartz_block, smooth_quartz_block, lapis_bricks, prismarine, polished_prismarine, prismarine_bricks, dark_prismarine, luminous_prismarine, polished_netherrack,
netherrack_bricks, nether_bricks, red_nether_bricks, blue_nether_bricks,
dullstone_bricks, dimstone_bricks, glowstone_bricks, soulsand, soulsoil, soulstone, soulslate,
soulstonebricks, rock_salt, polished_rock_salt, rock_salt_bricks, packed_ice, blue_ice, snow_bricks, holystone, holystone_bricks, florarock_bricks,
white_shingles, light_gray_shingles, gray_shingles, black_shingles, brown_shingles, red_shingles, orange_shingles, yellow_shingles, lime_shingles, green_shingles,
cyan_shingles, light_blue_shingles, blue_shingles, purple_shingles, magenta_shingles, pink_shingles,
white_bricks, light_gray_bricks, gray_bricks, black_bricks, brown_bricks, red_bricks, orange_bricks, yellow_bricks, lime_bricks, green_bricks,
cyan_bricks, light_blue_bricks, blue_bricks, purple_bricks, magenta_bricks, pink_bricks,
permafrost, permafrost_bricks, scute_pavement, scute_shingles,
purpur, duskbound, midori, checkered, seashell_tiles, snail_shell_tiles, snail_shell_bricks, daub, daub_frame] as string[][];


val shinglesCut = ["shingles_from_terracotta", "minecraft:terracotta", "hnh:shingles", "hnh:shingle_stairs", "hnh:shingle_slab", "hnh:shingle_wall", "0ab", "stonecutter"] as string[];
val terracotta_bricksCut = ["terracotta_bricks_from_terracotta", "minecraft:terracotta", "hnh:terracotta_bricks", "hnh:terracotta_brick_stairs", "hnh:terracotta_brick_slab", "clayworks:terracotta_brick_wall", "0abc", "stonecutter"] as string[];
val copper_shingles_cut = ["copper_shingles_from_cut", "minecraft:cut_copper", "create:copper_shingles", "create:copper_shingle_stairs", "create:copper_shingle_slab", "create:copper_shingle_wall", "0ab", "stonecutter"] as string[];
val copper_tiles_cut = ["copper_tiles_from_cut", "minecraft:cut_copper", "create:copper_tiles", "create:copper_tile_stairs", "create:copper_tile_slab", "create:copper_tile_wall", "0ab", "stonecutter"] as string[];
val cut_copper_shingles = ["cut_copper_from_shingles", "create:copper_shingles", "minecraft:cut_copper", "minecraft:cut_copper_stairs", "minecraft:cut_copper_slab", "minecraft:cut_copper_wall", "0ab", "stonecutter"] as string[];
val copper_tiles_shingles = ["copper_tiles_from_shingles", "create:copper_shingles", "create:copper_tiles", "create:copper_tile_stairs", "create:copper_tile_slab", "create:copper_tile_wall", "0ab", "stonecutter"] as string[];
val cut_copper_tiles = ["cut_copper_from_tiles", "create:copper_tiles", "minecraft:cut_copper", "minecraft:cut_copper_stairs", "minecraft:cut_copper_slab", "minecraft:cut_copper_wall", "0ab", "stonecutter"] as string[];
val copper_shingles_tiles = ["copper_shingles_from_tiles", "create:copper_tiles", "create:copper_shingles", "create:copper_shingle_stairs", "create:copper_shingle_slab", "create:copper_shingle_wall", "0ab", "stonecutter"] as string[];
val waxed_copper_shingles_cut = ["waxed_copper_shingles_from_cut", "minecraft:waxed_cut_copper", "create:waxed_copper_shingles", "create:waxed_copper_shingle_stairs", "create:waxed_copper_shingle_slab", "create:waxed_copper_shingle_wall", "0ab", "stonecutter"] as string[];
val waxed_copper_tiles_cut = ["waxed_copper_tiles_from_cut", "minecraft:waxed_cut_copper", "create:waxed_copper_tiles", "create:waxed_copper_tile_stairs", "create:waxed_copper_tile_slab", "create:waxed_copper_tile_wall", "0ab", "stonecutter"] as string[];
val waxed_cut_copper_shingles = ["waxed_cut_copper_from_shingles", "create:waxed_copper_shingles", "minecraft:waxed_cut_copper", "minecraft:waxed_cut_copper_stairs", "minecraft:waxed_cut_copper_slab", "minecraft:waxed_cut_copper_wall", "0ab", "stonecutter"] as string[];
val waxed_copper_tiles_shingles = ["waxed_copper_tiles_from_shingles", "create:waxed_copper_shingles", "create:waxed_copper_tiles", "create:waxed_copper_tile_stairs", "create:waxed_copper_tile_slab", "create:waxed_copper_tile_wall", "0ab", "stonecutter"] as string[];
val waxed_cut_copper_tiles = ["waxed_cut_copper_from_tiles", "create:waxed_copper_tiles", "minecraft:waxed_cut_copper", "minecraft:waxed_cut_copper_stairs", "minecraft:waxed_cut_copper_slab", "minecraft:waxed_cut_copper_wall", "0ab", "stonecutter"] as string[];
val waxed_copper_shingles_tiles = ["waxed_copper_shingles_from_tiles", "create:waxed_copper_tiles", "create:waxed_copper_shingles", "create:waxed_copper_shingle_stairs", "create:waxed_copper_shingle_slab", "create:waxed_copper_shingle_wall", "0ab", "stonecutter"] as string[];
val exposed_copper_shingles_cut = ["exposed_copper_shingles_from_cut", "minecraft:exposed_cut_copper", "create:exposed_copper_shingles", "create:exposed_copper_shingle_stairs", "create:exposed_copper_shingle_slab", "create:exposed_copper_shingle_wall", "0ab", "stonecutter"] as string[];
val exposed_copper_tiles_cut = ["exposed_copper_tiles_from_cut", "minecraft:exposed_cut_copper", "create:exposed_copper_tiles", "create:exposed_copper_tile_stairs", "create:exposed_copper_tile_slab", "create:exposed_copper_tile_wall", "0ab", "stonecutter"] as string[];
val exposed_cut_copper_shingles = ["exposed_cut_copper_from_shingles", "create:exposed_copper_shingles", "minecraft:exposed_cut_copper", "minecraft:exposed_cut_copper_stairs", "minecraft:exposed_cut_copper_slab", "minecraft:exposed_cut_copper_wall", "0ab", "stonecutter"] as string[];
val exposed_copper_tiles_shingles = ["exposed_copper_tiles_from_shingles", "create:exposed_copper_shingles", "create:exposed_copper_tiles", "create:exposed_copper_tile_stairs", "create:exposed_copper_tile_slab", "create:exposed_copper_tile_wall", "0ab", "stonecutter"] as string[];
val exposed_cut_copper_tiles = ["exposed_cut_copper_from_tiles", "create:exposed_copper_tiles", "minecraft:exposed_cut_copper", "minecraft:exposed_cut_copper_stairs", "minecraft:exposed_cut_copper_slab", "minecraft:exposed_cut_copper_wall", "0ab", "stonecutter"] as string[];
val exposed_copper_shingles_tiles = ["exposed_copper_shingles_from_tiles", "create:exposed_copper_tiles", "create:exposed_copper_shingles", "create:exposed_copper_shingle_stairs", "create:exposed_copper_shingle_slab", "create:exposed_copper_shingle_wall", "0ab", "stonecutter"] as string[];
val waxed_exposed_copper_shingles_cut = ["waxed_exposed_copper_shingles_from_cut", "minecraft:waxed_exposed_cut_copper", "create:waxed_exposed_copper_shingles", "create:waxed_exposed_copper_shingle_stairs", "create:waxed_exposed_copper_shingle_slab", "create:waxed_exposed_copper_shingle_wall", "0ab", "stonecutter"] as string[];
val waxed_exposed_copper_tiles_cut = ["waxed_exposed_copper_tiles_from_cut", "minecraft:waxed_exposed_cut_copper", "create:waxed_exposed_copper_tiles", "create:waxed_exposed_copper_tile_stairs", "create:waxed_exposed_copper_tile_slab", "create:waxed_exposed_copper_tile_wall", "0ab", "stonecutter"] as string[];
val waxed_exposed_cut_copper_shingles = ["waxed_exposed_cut_copper_from_shingles", "create:waxed_exposed_copper_shingles", "minecraft:waxed_exposed_cut_copper", "minecraft:waxed_exposed_cut_copper_stairs", "minecraft:waxed_exposed_cut_copper_slab", "minecraft:waxed_exposed_cut_copper_wall", "0ab", "stonecutter"] as string[];
val waxed_exposed_copper_tiles_shingles = ["waxed_exposed_copper_tiles_from_shingles", "create:waxed_exposed_copper_shingles", "create:waxed_exposed_copper_tiles", "create:waxed_exposed_copper_tile_stairs", "create:waxed_exposed_copper_tile_slab", "create:waxed_exposed_copper_tile_wall", "0ab", "stonecutter"] as string[];
val waxed_exposed_cut_copper_tiles = ["waxed_exposed_cut_copper_from_tiles", "create:waxed_exposed_copper_tiles", "minecraft:waxed_exposed_cut_copper", "minecraft:waxed_exposed_cut_copper_stairs", "minecraft:waxed_exposed_cut_copper_slab", "minecraft:waxed_exposed_cut_copper_wall", "0ab", "stonecutter"] as string[];
val waxed_exposed_copper_shingles_tiles = ["waxed_exposed_copper_shingles_from_tiles", "create:waxed_exposed_copper_tiles", "create:waxed_exposed_copper_shingles", "create:waxed_exposed_copper_shingle_stairs", "create:waxed_exposed_copper_shingle_slab", "create:waxed_exposed_copper_shingle_wall", "0ab", "stonecutter"] as string[];
val weathered_copper_shingles_cut = ["weathered_copper_shingles_from_cut", "minecraft:weathered_cut_copper", "create:weathered_copper_shingles", "create:weathered_copper_shingle_stairs", "create:weathered_copper_shingle_slab", "create:weathered_copper_shingle_wall", "0ab", "stonecutter"] as string[];
val weathered_copper_tiles_cut = ["weathered_copper_tiles_from_cut", "minecraft:weathered_cut_copper", "create:weathered_copper_tiles", "create:weathered_copper_tile_stairs", "create:weathered_copper_tile_slab", "create:weathered_copper_tile_wall", "0ab", "stonecutter"] as string[];
val weathered_cut_copper_shingles = ["weathered_cut_copper_from_shingles", "create:weathered_copper_shingles", "minecraft:weathered_cut_copper", "minecraft:weathered_cut_copper_stairs", "minecraft:weathered_cut_copper_slab", "minecraft:weathered_cut_copper_wall", "0ab", "stonecutter"] as string[];
val weathered_copper_tiles_shingles = ["weathered_copper_tiles_from_shingles", "create:weathered_copper_shingles", "create:weathered_copper_tiles", "create:weathered_copper_tile_stairs", "create:weathered_copper_tile_slab", "create:weathered_copper_tile_wall", "0ab", "stonecutter"] as string[];
val weathered_cut_copper_tiles = ["weathered_cut_copper_from_tiles", "create:weathered_copper_tiles", "minecraft:weathered_cut_copper", "minecraft:weathered_cut_copper_stairs", "minecraft:weathered_cut_copper_slab", "minecraft:weathered_cut_copper_wall", "0ab", "stonecutter"] as string[];
val weathered_copper_shingles_tiles = ["weathered_copper_shingles_from_tiles", "create:weathered_copper_tiles", "create:weathered_copper_shingles", "create:weathered_copper_shingle_stairs", "create:weathered_copper_shingle_slab", "create:weathered_copper_shingle_wall", "0ab", "stonecutter"] as string[];
val waxed_weathered_copper_shingles_cut = ["waxed_weathered_copper_shingles_from_cut", "minecraft:waxed_weathered_cut_copper", "create:waxed_weathered_copper_shingles", "create:waxed_weathered_copper_shingle_stairs", "create:waxed_weathered_copper_shingle_slab", "create:waxed_weathered_copper_shingle_wall", "0ab", "stonecutter"] as string[];
val waxed_weathered_copper_tiles_cut = ["waxed_weathered_copper_tiles_from_cut", "minecraft:waxed_weathered_cut_copper", "create:waxed_weathered_copper_tiles", "create:waxed_weathered_copper_tile_stairs", "create:waxed_weathered_copper_tile_slab", "create:waxed_weathered_copper_tile_wall", "0ab", "stonecutter"] as string[];
val waxed_weathered_cut_copper_shingles = ["waxed_weathered_cut_copper_from_shingles", "create:waxed_weathered_copper_shingles", "minecraft:waxed_weathered_cut_copper", "minecraft:waxed_weathered_cut_copper_stairs", "minecraft:waxed_weathered_cut_copper_slab", "minecraft:waxed_weathered_cut_copper_wall", "0ab", "stonecutter"] as string[];
val waxed_weathered_copper_tiles_shingles = ["waxed_weathered_copper_tiles_from_shingles", "create:waxed_weathered_copper_shingles", "create:waxed_weathered_copper_tiles", "create:waxed_weathered_copper_tile_stairs", "create:waxed_weathered_copper_tile_slab", "create:waxed_weathered_copper_tile_wall", "0ab", "stonecutter"] as string[];
val waxed_weathered_cut_copper_tiles = ["waxed_weathered_cut_copper_from_tiles", "create:waxed_weathered_copper_tiles", "minecraft:waxed_weathered_cut_copper", "minecraft:waxed_weathered_cut_copper_stairs", "minecraft:waxed_weathered_cut_copper_slab", "minecraft:waxed_weathered_cut_copper_wall", "0ab", "stonecutter"] as string[];
val waxed_weathered_copper_shingles_tiles = ["waxed_weathered_copper_shingles_from_tiles", "create:waxed_weathered_copper_tiles", "create:waxed_weathered_copper_shingles", "create:waxed_weathered_copper_shingle_stairs", "create:waxed_weathered_copper_shingle_slab", "create:waxed_weathered_copper_shingle_wall", "0ab", "stonecutter"] as string[];
val oxidized_copper_shingles_cut = ["oxidized_copper_shingles_from_cut", "minecraft:oxidized_cut_copper", "create:oxidized_copper_shingles", "create:oxidized_copper_shingle_stairs", "create:oxidized_copper_shingle_slab", "create:oxidized_copper_shingle_wall", "0ab", "stonecutter"] as string[];
val oxidized_copper_tiles_cut = ["oxidized_copper_tiles_from_cut", "minecraft:oxidized_cut_copper", "create:oxidized_copper_tiles", "create:oxidized_copper_tile_stairs", "create:oxidized_copper_tile_slab", "create:oxidized_copper_tile_wall", "0ab", "stonecutter"] as string[];
val oxidized_cut_copper_shingles = ["oxidized_cut_copper_from_shingles", "create:oxidized_copper_shingles", "minecraft:oxidized_cut_copper", "minecraft:oxidized_cut_copper_stairs", "minecraft:oxidized_cut_copper_slab", "minecraft:oxidized_cut_copper_wall", "0ab", "stonecutter"] as string[];
val oxidized_copper_tiles_shingles = ["oxidized_copper_tiles_from_shingles", "create:oxidized_copper_shingles", "create:oxidized_copper_tiles", "create:oxidized_copper_tile_stairs", "create:oxidized_copper_tile_slab", "create:oxidized_copper_tile_wall", "0ab", "stonecutter"] as string[];
val oxidized_cut_copper_tiles = ["oxidized_cut_copper_from_tiles", "create:oxidized_copper_tiles", "minecraft:oxidized_cut_copper", "minecraft:oxidized_cut_copper_stairs", "minecraft:oxidized_cut_copper_slab", "minecraft:oxidized_cut_copper_wall", "0ab", "stonecutter"] as string[];
val oxidized_copper_shingles_tiles = ["oxidized_copper_shingles_from_tiles", "create:oxidized_copper_tiles", "create:oxidized_copper_shingles", "create:oxidized_copper_shingle_stairs", "create:oxidized_copper_shingle_slab", "create:oxidized_copper_shingle_wall", "0ab", "stonecutter"] as string[];
val waxed_oxidized_copper_shingles_cut = ["waxed_oxidized_copper_shingles_from_cut", "minecraft:waxed_oxidized_cut_copper", "create:waxed_oxidized_copper_shingles", "create:waxed_oxidized_copper_shingle_stairs", "create:waxed_oxidized_copper_shingle_slab", "create:waxed_oxidized_copper_shingle_wall", "0ab", "stonecutter"] as string[];
val waxed_oxidized_copper_tiles_cut = ["waxed_oxidized_copper_tiles_from_cut", "minecraft:waxed_oxidized_cut_copper", "create:waxed_oxidized_copper_tiles", "create:waxed_oxidized_copper_tile_stairs", "create:waxed_oxidized_copper_tile_slab", "create:waxed_oxidized_copper_tile_wall", "0ab", "stonecutter"] as string[];
val waxed_oxidized_cut_copper_shingles = ["waxed_oxidized_cut_copper_from_shingles", "create:waxed_oxidized_copper_shingles", "minecraft:waxed_oxidized_cut_copper", "minecraft:waxed_oxidized_cut_copper_stairs", "minecraft:waxed_oxidized_cut_copper_slab", "minecraft:waxed_oxidized_cut_copper_wall", "0ab", "stonecutter"] as string[];
val waxed_oxidized_copper_tiles_shingles = ["waxed_oxidized_copper_tiles_from_shingles", "create:waxed_oxidized_copper_shingles", "create:waxed_oxidized_copper_tiles", "create:waxed_oxidized_copper_tile_stairs", "create:waxed_oxidized_copper_tile_slab", "create:waxed_oxidized_copper_tile_wall", "0ab", "stonecutter"] as string[];
val waxed_oxidized_cut_copper_tiles = ["waxed_oxidized_cut_copper_from_tiles", "create:waxed_oxidized_copper_tiles", "minecraft:waxed_oxidized_cut_copper", "minecraft:waxed_oxidized_cut_copper_stairs", "minecraft:waxed_oxidized_cut_copper_slab", "minecraft:waxed_oxidized_cut_copper_wall", "0ab", "stonecutter"] as string[];
val waxed_oxidized_copper_shingles_tiles = ["waxed_oxidized_copper_shingles_from_tiles", "create:waxed_oxidized_copper_tiles", "create:waxed_oxidized_copper_shingles", "create:waxed_oxidized_copper_shingle_stairs", "create:waxed_oxidized_copper_shingle_slab", "create:waxed_oxidized_copper_shingle_wall", "0ab", "stonecutter"] as string[];
val polished_jade_bricks_shingles = ["polished_jade_bricks_shingles", "sullysmod:polished_jade_shingles", "sullysmod:polished_jade_bricks", "sullysmod:polished_jade_brick_stairs", "sullysmod:polished_jade_brick_slab", "sullysmod:polished_jade_brick_wall", "0ab", "stonecutter"] as string[];
val polished_jade_shingles_bricks = ["polished_jade_shingles_bricks", "sullysmod:polished_jade_bricks", "sullysmod:polished_jade_shingles", "sullysmod:polished_jade_shingle_stairs", "sullysmod:polished_jade_shingle_slab", "sullysmod:polished_jade_shingle_wall", "0ab", "stonecutter"] as string[];
val smooth_quartz_block_quartz_cut = ["smooth_quartz_block_quartz_cut", "minecraft:quartz_block", "minecraft:smooth_quartz", "minecraft:smooth_quartz_stairs", "minecraft:smooth_quartz_slab", "minecraft:smooth_quartz_wall", "0ab", "stonecutter"] as string[];
val polished_prismarine_cut = ["polished_prismarine_cut", "minecraft:prismarine", "fundamentallyfixed:polished_phyton", "fundamentallyfixed:polished_phyton_stairs", "fundamentallyfixed:polished_phyton_slab", "fundamentallyfixed:polished_phyton_wall", "0abc", "stonecutter"] as string[];
val prismarine_bricks_cut = ["prismarine_bricks_cut", "minecraft:prismarine", "minecraft:prismarine_bricks", "minecraft:prismarine_brick_stairs", "minecraft:prismarine_brick_slab", "minecraft:prismarine_brick_wall", "0ab", "stonecutter"] as string[];
val prismarine_bricks_cut_polish = ["prismarine_bricks_cut_polish", "fundamentallyfixed:polished_phyton", "minecraft:prismarine_bricks", "minecraft:prismarine_brick_stairs", "minecraft:prismarine_brick_slab", "minecraft:prismarine_brick_wall", "0ab", "stonecutter"] as string[];
val polished_netherrack_cut = ["polished_netherrack_cut", "minecraft:netherrack", "paletteblocks:polished_netherrack", "paletteblocks:polished_netherrack_stairs", "paletteblocks:polished_netherrack_slab", "paletteblocks:polished_netherrack_wall", "0abc", "stonecutter"] as string[];
val netherrack_bricks_cut = ["netherrack_bricks_cut", "minecraft:netherrack", "quark:netherrack_bricks", "quark:netherrack_bricks_stairs", "quark:netherrack_bricks_slab", "quark:netherrack_bricks_wall", "0abc", "stonecutter"] as string[];
val netherrack_bricks_cut_polished = ["netherrack_bricks_cut_polished", "paletteblocks:polished_netherrack", "quark:netherrack_bricks", "quark:netherrack_bricks_stairs", "quark:netherrack_bricks_slab", "quark:netherrack_bricks_wall", "0abc", "stonecutter"] as string[];
val dullstone_bricks_cut = ["dullstone_bricks_cut", "infernalexp:dullstone", "infernalexp:dullstone_bricks", "infernalexp:dullstone_brick_stairs", "infernalexp:dullstone_brick_slab", "infernalexp:dullstone_brick_wall", "0abc", "stonecutter"] as string[];
val dimstone_bricks_cut = ["dimstone_bricks_cut", "infernalexp:dimstone", "infernalexp:dimstone_bricks", "infernalexp:dimstone_brick_stairs", "infernalexp:dimstone_brick_slab", "infernalexp:dimstone_brick_wall", "0abc", "stonecutter"] as string[];
val glowstone_bricks_cut = ["glowstone_bricks_cut", "minecraft:glowstone", "infernalexp:glowstone_bricks", "infernalexp:glowstone_brick_stairs", "infernalexp:glowstone_brick_slab", "infernalexp:glowstone_brick_wall", "0abc", "stonecutter"] as string[];
val soulslate_cut = ["soulslate_cut", "infernalexp:soul_stone", "infernalexp:soul_slate", "infernalexp:soul_slate_stairs", "infernalexp:soul_slate_slab", "infernalexp:soul_slate_wall", "0ab", "stonecutter"] as string[];
val soulstonebricks_cut = ["soulstonebricks_cut", "infernalexp:soul_stone", "infernalexp:soul_stone_bricks", "infernalexp:soul_stone_brick_stairs", "infernalexp:soul_stone_brick_slab", "infernalexp:soul_stone_brick_wall", "0ab", "stonecutter"] as string[];
val soulstonebricks_cut_slate = ["soulstonebricks_cut_slate", "infernalexp:soul_slate", "infernalexp:soul_stone_bricks", "infernalexp:soul_stone_brick_stairs", "infernalexp:soul_stone_brick_slab", "infernalexp:soul_stone_brick_wall", "0ab", "stonecutter"] as string[];
val polished_rock_salt_cut = ["polished_rock_salt_cut", "spelunkery:rock_salt_block", "spelunkery:polished_rock_salt", "spelunkery:polished_rock_salt_stairs", "spelunkery:polished_rock_salt_slab", "spelunkery:polished_rock_salt_wall", "0abc", "stonecutter"] as string[];
val rock_salt_bricks_cut = ["rock_salt_bricks_cut", "spelunkery:rock_salt_block", "spelunkery:rock_salt_bricks", "spelunkery:rock_salt_brick_stairs", "spelunkery:rock_salt_brick_slab", "spelunkery:rock_salt_brick_wall", "0abc", "stonecutter"] as string[];
val rock_salt_bricks_cut_polished = ["rock_salt_bricks_cut_polished", "spelunkery:polished_rock_salt", "spelunkery:rock_salt_bricks", "spelunkery:rock_salt_brick_stairs", "spelunkery:rock_salt_brick_slab", "spelunkery:rock_salt_brick_wall", "0abc", "stonecutter"] as string[];
val packed_ice_cut = ["packed_ice_cut", "minecraft:packed_ice", "windswept:packed_ice_bricks", "windswept:packed_ice_brick_stairs", "windswept:packed_ice_brick_slab", "windswept:packed_ice_brick_wall", "0abc", "stonecutter"] as string[];
val blue_ice_cut = ["blue_ice_cut", "minecraft:blue_ice", "windswept:blue_ice_bricks", "windswept:blue_ice_brick_stairs", "windswept:blue_ice_brick_slab", "windswept:blue_ice_brick_wall", "0abc", "stonecutter"] as string[];
val snow_bricks_cut = ["snow_bricks_cut", "minecraft:snow_block", "windswept:snow_bricks", "windswept:snow_brick_stairs", "windswept:snow_brick_slab", "windswept:snow_brick_wall", "0abc", "stonecutter"] as string[];
val holystone_bricks_cut = ["holystone_bricks_cut", "aether:holystone", "aether:holystone_bricks", "aether:holystone_brick_stairs", "aether:holystone_brick_slab", "aether:holystone_brick_wall", "0abc", "stonecutter"] as string[];
val white_shinglesCut = ["white_shingle_from_terracotta", "minecraft:white_terracotta", "hnh:white_shingles", "hnh:white_shingle_stairs", "hnh:white_shingle_slab", "hnh:white_shingle_wall", "0ab", "stonecutter"] as string[];
val light_gray_shinglesCut = ["light_gray_shingle_from_terracotta", "minecraft:light_gray_terracotta", "hnh:light_gray_shingles", "hnh:light_gray_shingle_stairs", "hnh:light_gray_shingle_slab", "hnh:light_gray_shingle_wall", "0ab", "stonecutter"] as string[];
val gray_shinglesCut = ["gray_shingle_from_terracotta", "minecraft:gray_terracotta", "hnh:gray_shingles", "hnh:gray_shingle_stairs", "hnh:gray_shingle_slab", "hnh:gray_shingle_wall", "0ab", "stonecutter"] as string[];
val black_shinglesCut = ["black_shingle_from_terracotta", "minecraft:black_terracotta", "hnh:black_shingles", "hnh:black_shingle_stairs", "hnh:black_shingle_slab", "hnh:black_shingle_wall", "0ab", "stonecutter"] as string[];
val brown_shinglesCut = ["brown_shingle_from_terracotta", "minecraft:brown_terracotta", "hnh:brown_shingles", "hnh:brown_shingle_stairs", "hnh:brown_shingle_slab", "hnh:brown_shingle_wall", "0ab", "stonecutter"] as string[];
val red_shinglesCut = ["red_shingle_from_terracotta", "minecraft:red_terracotta", "hnh:red_shingles", "hnh:red_shingle_stairs", "hnh:red_shingle_slab", "hnh:red_shingle_wall", "0ab", "stonecutter"] as string[];
val orange_shinglesCut = ["orange_shingle_from_terracotta", "minecraft:orange_terracotta", "hnh:orange_shingles", "hnh:orange_shingle_stairs", "hnh:orange_shingle_slab", "hnh:orange_shingle_wall", "0ab", "stonecutter"] as string[];
val yellow_shinglesCut = ["yellow_shingle_from_terracotta", "minecraft:yellow_terracotta", "hnh:yellow_shingles", "hnh:yellow_shingle_stairs", "hnh:yellow_shingle_slab", "hnh:yellow_shingle_wall", "0ab", "stonecutter"] as string[];
val lime_shinglesCut = ["lime_shingle_from_terracotta", "minecraft:lime_terracotta", "hnh:lime_shingles", "hnh:lime_shingle_stairs", "hnh:lime_shingle_slab", "hnh:lime_shingle_wall", "0ab", "stonecutter"] as string[];
val green_shinglesCut = ["green_shingle_from_terracotta", "minecraft:green_terracotta", "hnh:green_shingles", "hnh:green_shingle_stairs", "hnh:green_shingle_slab", "hnh:green_shingle_wall", "0ab", "stonecutter"] as string[];
val cyan_shinglesCut = ["cyan_shingle_from_terracotta", "minecraft:cyan_terracotta", "hnh:cyan_shingles", "hnh:cyan_shingle_stairs", "hnh:cyan_shingle_slab", "hnh:cyan_shingle_wall", "0ab", "stonecutter"] as string[];
val light_blue_shinglesCut = ["light_blue_shingle_from_terracotta", "minecraft:light_blue_terracotta", "hnh:light_blue_shingles", "hnh:light_blue_shingle_stairs", "hnh:light_blue_shingle_slab", "hnh:light_blue_shingle_wall", "0ab", "stonecutter"] as string[];
val blue_shinglesCut = ["blue_shingle_from_terracotta", "minecraft:blue_terracotta", "hnh:blue_shingles", "hnh:blue_shingle_stairs", "hnh:blue_shingle_slab", "hnh:blue_shingle_wall", "0ab", "stonecutter"] as string[];
val purple_shinglesCut = ["purple_shingle_from_terracotta", "minecraft:purple_terracotta", "hnh:purple_shingles", "hnh:purple_shingle_stairs", "hnh:purple_shingle_slab", "hnh:purple_shingle_wall", "0ab", "stonecutter"] as string[];
val magenta_shinglesCut = ["magenta_shingle_from_terracotta", "minecraft:magenta_terracotta", "hnh:magenta_shingles", "hnh:magenta_shingle_stairs", "hnh:magenta_shingle_slab", "hnh:magenta_shingle_wall", "0ab", "stonecutter"] as string[];
val pink_shinglesCut = ["pink_shingle_from_terracotta", "minecraft:pink_terracotta", "hnh:pink_shingles", "hnh:pink_shingle_stairs", "hnh:pink_shingle_slab", "hnh:pink_shingle_wall", "0ab", "stonecutter"] as string[];
val white_bricksCut = ["white_brick_from_terracotta", "minecraft:white_terracotta", "hnh:white_terracotta_bricks", "hnh:white_terracotta_brick_stairs", "hnh:white_terracotta_brick_slab", "hnh:white_terracotta_brick_wall", "0ab", "stonecutter"] as string[];
val light_gray_bricksCut = ["light_gray_brick_from_terracotta", "minecraft:light_gray_terracotta", "hnh:light_gray_terracotta_bricks", "hnh:light_gray_terracotta_brick_stairs", "hnh:light_gray_terracotta_brick_slab", "hnh:light_gray_terracotta_brick_wall", "0ab", "stonecutter"] as string[];
val gray_bricksCut = ["gray_brick_from_terracotta", "minecraft:gray_terracotta", "hnh:gray_terracotta_bricks", "hnh:gray_terracotta_brick_stairs", "hnh:gray_terracotta_brick_slab", "hnh:gray_terracotta_brick_wall", "0ab", "stonecutter"] as string[];
val black_bricksCut = ["black_brick_from_terracotta", "minecraft:black_terracotta", "hnh:black_terracotta_bricks", "hnh:black_terracotta_brick_stairs", "hnh:black_terracotta_brick_slab", "hnh:black_terracotta_brick_wall", "0ab", "stonecutter"] as string[];
val brown_bricksCut = ["brown_brick_from_terracotta", "minecraft:brown_terracotta", "hnh:brown_terracotta_bricks", "hnh:brown_terracotta_brick_stairs", "hnh:brown_terracotta_brick_slab", "hnh:brown_terracotta_brick_wall", "0ab", "stonecutter"] as string[];
val red_bricksCut = ["red_brick_from_terracotta", "minecraft:red_terracotta", "hnh:red_terracotta_bricks", "hnh:red_terracotta_brick_stairs", "hnh:red_terracotta_brick_slab", "hnh:red_terracotta_brick_wall", "0ab", "stonecutter"] as string[];
val orange_bricksCut = ["orange_brick_from_terracotta", "minecraft:orange_terracotta", "hnh:orange_terracotta_bricks", "hnh:orange_terracotta_brick_stairs", "hnh:orange_terracotta_brick_slab", "hnh:orange_terracotta_brick_wall", "0ab", "stonecutter"] as string[];
val yellow_bricksCut = ["yellow_brick_from_terracotta", "minecraft:yellow_terracotta", "hnh:yellow_terracotta_bricks", "hnh:yellow_terracotta_brick_stairs", "hnh:yellow_terracotta_brick_slab", "hnh:yellow_terracotta_brick_wall", "0ab", "stonecutter"] as string[];
val lime_bricksCut = ["lime_brick_from_terracotta", "minecraft:lime_terracotta", "hnh:lime_terracotta_bricks", "hnh:lime_terracotta_brick_stairs", "hnh:lime_terracotta_brick_slab", "hnh:lime_terracotta_brick_wall", "0ab", "stonecutter"] as string[];
val green_bricksCut = ["green_brick_from_terracotta", "minecraft:green_terracotta", "hnh:green_terracotta_bricks", "hnh:green_terracotta_brick_stairs", "hnh:green_terracotta_brick_slab", "hnh:green_terracotta_brick_wall", "0ab", "stonecutter"] as string[];
val cyan_bricksCut = ["cyan_brick_from_terracotta", "minecraft:cyan_terracotta", "hnh:cyan_terracotta_bricks", "hnh:cyan_terracotta_brick_stairs", "hnh:cyan_terracotta_brick_slab", "hnh:cyan_terracotta_brick_wall", "0ab", "stonecutter"] as string[];
val light_blue_bricksCut = ["light_blue_brick_from_terracotta", "minecraft:light_blue_terracotta", "hnh:light_blue_terracotta_bricks", "hnh:light_blue_terracotta_brick_stairs", "hnh:light_blue_terracotta_brick_slab", "hnh:light_blue_terracotta_brick_wall", "0ab", "stonecutter"] as string[];
val blue_bricksCut = ["blue_brick_from_terracotta", "minecraft:blue_terracotta", "hnh:blue_terracotta_bricks", "hnh:blue_terracotta_brick_stairs", "hnh:blue_terracotta_brick_slab", "hnh:blue_terracotta_brick_wall", "0ab", "stonecutter"] as string[];
val purple_bricksCut = ["purple_brick_from_terracotta", "minecraft:purple_terracotta", "hnh:purple_terracotta_bricks", "hnh:purple_terracotta_brick_stairs", "hnh:purple_terracotta_brick_slab", "hnh:purple_terracotta_brick_wall", "0ab", "stonecutter"] as string[];
val magenta_bricksCut = ["magenta_brick_from_terracotta", "minecraft:magenta_terracotta", "hnh:magenta_terracotta_bricks", "hnh:magenta_terracotta_brick_stairs", "hnh:magenta_terracotta_brick_slab", "hnh:magenta_terracotta_brick_wall", "0ab", "stonecutter"] as string[];
val pink_bricksCut = ["pink_brick_from_terracotta", "minecraft:pink_terracotta", "hnh:pink_terracotta_bricks", "hnh:pink_terracotta_brick_stairs", "hnh:pink_terracotta_brick_slab", "hnh:pink_terracotta_brick_wall", "0ab", "stonecutter"] as string[];
val permafrost_bricks_cut = ["permafrost_bricks_cut", "quark:permafrost", "quark:permafrost_bricks", "quark:permafrost_bricks_stairs", "quark:permafrost_bricks_slab", "quark:permafrost_bricks_wall", "0abc", "stonecutter"] as string[];
val scute_pavement_cut = ["scute_pavement_cut", "upgrade_aquatic:scute_shingles", "upgrade_aquatic:scute_pavement", "upgrade_aquatic:scute_pavement_stairs", "upgrade_aquatic:scute_pavement_slab", "upgrade_aquatic:scute_pavement_wall", "0abc", "stonecutter"] as string[];
val snail_shell_tiles_cut = ["snail_shell_tiles_cut", "autumnity:snail_shell_bricks", "autumnity:snail_shell_tiles", "autumnity:snail_shell_tile_stairs", "autumnity:snail_shell_tile_slab", "autumnity:snail_shell_tile_wall", "0abc", "stonecutter"] as string[];

val cutSets = [shinglesCut, terracotta_bricksCut, copper_shingles_cut, copper_tiles_cut, cut_copper_shingles, copper_tiles_shingles, cut_copper_tiles,
copper_shingles_tiles, waxed_copper_shingles_cut, waxed_copper_tiles_cut, waxed_cut_copper_shingles, waxed_copper_tiles_shingles, waxed_cut_copper_tiles,
waxed_copper_shingles_tiles, exposed_copper_shingles_cut, exposed_copper_tiles_cut, exposed_cut_copper_shingles, exposed_copper_tiles_shingles, exposed_cut_copper_tiles,
exposed_copper_shingles_tiles, waxed_exposed_copper_shingles_cut, waxed_exposed_copper_tiles_cut, waxed_exposed_cut_copper_shingles, waxed_exposed_copper_tiles_shingles,
waxed_exposed_cut_copper_tiles, waxed_exposed_copper_shingles_tiles, weathered_copper_shingles_cut, weathered_copper_tiles_cut, weathered_cut_copper_shingles,
weathered_copper_tiles_shingles, weathered_cut_copper_tiles, weathered_copper_shingles_tiles, waxed_weathered_copper_shingles_cut, waxed_weathered_copper_tiles_cut,
waxed_weathered_cut_copper_shingles, waxed_weathered_copper_tiles_shingles, waxed_weathered_cut_copper_tiles, waxed_weathered_copper_shingles_tiles,
oxidized_copper_shingles_cut, oxidized_copper_tiles_cut, oxidized_cut_copper_shingles, oxidized_copper_tiles_shingles, oxidized_cut_copper_tiles,
oxidized_copper_shingles_tiles, waxed_oxidized_copper_shingles_cut, waxed_oxidized_copper_tiles_cut, waxed_oxidized_cut_copper_shingles,
waxed_oxidized_copper_tiles_shingles, waxed_oxidized_cut_copper_tiles, waxed_oxidized_copper_shingles_tiles, polished_jade_bricks_shingles, polished_jade_shingles_bricks,
smooth_quartz_block_quartz_cut, polished_prismarine_cut, prismarine_bricks_cut, prismarine_bricks_cut_polish, polished_netherrack_cut, netherrack_bricks_cut,
netherrack_bricks_cut_polished, dullstone_bricks_cut, dimstone_bricks_cut, glowstone_bricks_cut,
soulslate_cut, soulstonebricks_cut, soulstonebricks_cut_slate, polished_rock_salt_cut, rock_salt_bricks_cut, rock_salt_bricks_cut_polished, packed_ice_cut, blue_ice_cut,
snow_bricks_cut, holystone_bricks_cut,
white_shinglesCut, light_gray_shinglesCut, gray_shinglesCut, black_shinglesCut, brown_shinglesCut, red_shinglesCut,
orange_shinglesCut, yellow_shinglesCut, lime_shinglesCut, green_shinglesCut, cyan_shinglesCut, light_blue_shinglesCut, blue_shinglesCut, purple_shinglesCut,
magenta_shinglesCut, pink_shinglesCut,
white_bricksCut, light_gray_bricksCut, gray_bricksCut, black_bricksCut, brown_bricksCut, red_bricksCut,
orange_bricksCut, yellow_bricksCut, lime_bricksCut, green_bricksCut, cyan_bricksCut, light_blue_bricksCut, blue_bricksCut, purple_bricksCut,
magenta_bricksCut, pink_bricksCut,
permafrost_bricks_cut, scute_pavement_cut, snail_shell_tiles_cut] as string[][];

val raw_copper_bricks_raw = ["raw_copper_bricks_raw", "minecraft:raw_copper_block", "quark:raw_copper_bricks", "quark:raw_copper_bricks_stairs", "quark:raw_copper_bricks_slab", "quark:raw_copper_bricks_wall", "0ab", "stonecutter"] as string[];
val cut_copper_copper = ["cut_copper_from_copper", "minecraft:copper_block", "minecraft:cut_copper", "minecraft:cut_copper_stairs", "minecraft:cut_copper_slab", "minecraft:cut_copper_wall", "0ab", "stonecutter"] as string[];
val copper_shingles_copper = ["copper_shingles_from_copper", "minecraft:copper_block", "create:copper_shingles", "create:copper_shingle_stairs", "create:copper_shingle_slab", "create:copper_shingle_wall", "0ab", "stonecutter"] as string[];
val copper_tiles_copper = ["copper_tiles_from_copper", "minecraft:copper_block", "create:copper_tiles", "create:copper_tile_stairs", "create:copper_tile_slab", "create:copper_tile_wall", "0ab", "stonecutter"] as string[];
val waxed_cut_copper_copper = ["waxed_cut_copper_from_copper", "minecraft:waxed_copper_block", "minecraft:waxed_cut_copper", "minecraft:waxed_cut_copper_stairs", "minecraft:waxed_cut_copper_slab", "minecraft:waxed_cut_copper_wall", "0ab", "stonecutter"] as string[];
val waxed_copper_shingles_copper = ["waxed_copper_shingles_from_copper", "minecraft:waxed_copper_block", "create:waxed_copper_shingles", "create:waxed_copper_shingle_stairs", "create:waxed_copper_shingle_slab", "create:waxed_copper_shingle_wall", "0ab", "stonecutter"] as string[];
val waxed_copper_tiles_copper = ["waxed_copper_tiles_from_copper", "minecraft:waxed_copper_block", "create:waxed_copper_tiles", "create:waxed_copper_tile_stairs", "create:waxed_copper_tile_slab", "create:waxed_copper_tile_wall", "0ab", "stonecutter"] as string[];
val exposed_cut_copper_copper = ["exposed_cut_copper_from_copper", "minecraft:exposed_copper", "minecraft:exposed_cut_copper", "minecraft:exposed_cut_copper_stairs", "minecraft:exposed_cut_copper_slab", "minecraft:exposed_cut_copper_wall", "0ab", "stonecutter"] as string[];
val exposed_copper_shingles_copper = ["exposed_copper_shingles_from_copper", "minecraft:exposed_copper", "create:exposed_copper_shingles", "create:exposed_copper_shingle_stairs", "create:exposed_copper_shingle_slab", "create:exposed_copper_shingle_wall", "0ab", "stonecutter"] as string[];
val exposed_copper_tiles_copper = ["exposed_copper_tiles_from_copper", "minecraft:exposed_copper", "create:exposed_copper_tiles", "create:exposed_copper_tile_stairs", "create:exposed_copper_tile_slab", "create:exposed_copper_tile_wall", "0ab", "stonecutter"] as string[];
val waxed_exposed_cut_copper_copper = ["waxed_exposed_cut_copper_from_copper", "minecraft:waxed_exposed_copper", "minecraft:waxed_exposed_cut_copper", "minecraft:waxed_exposed_cut_copper_stairs", "minecraft:waxed_exposed_cut_copper_slab", "minecraft:waxed_exposed_cut_copper_wall", "0ab", "stonecutter"] as string[];
val waxed_exposed_copper_shingles_copper = ["waxed_exposed_copper_shingles_from_copper", "minecraft:waxed_exposed_copper", "create:waxed_exposed_copper_shingles", "create:waxed_exposed_copper_shingle_stairs", "create:waxed_exposed_copper_shingle_slab", "create:waxed_exposed_copper_shingle_wall", "0ab", "stonecutter"] as string[];
val waxed_exposed_copper_tiles_copper = ["waxed_exposed_copper_tiles_from_copper", "minecraft:waxed_exposed_copper", "create:waxed_exposed_copper_tiles", "create:waxed_exposed_copper_tile_stairs", "create:waxed_exposed_copper_tile_slab", "create:waxed_exposed_copper_tile_wall", "0ab", "stonecutter"] as string[];
val weathered_cut_copper_copper = ["weathered_cut_copper_from_copper", "minecraft:weathered_copper", "minecraft:weathered_cut_copper", "minecraft:weathered_cut_copper_stairs", "minecraft:weathered_cut_copper_slab", "minecraft:weathered_cut_copper_wall", "0ab", "stonecutter"] as string[];
val weathered_copper_shingles_copper = ["weathered_copper_shingles_from_copper", "minecraft:weathered_copper", "create:weathered_copper_shingles", "create:weathered_copper_shingle_stairs", "create:weathered_copper_shingle_slab", "create:weathered_copper_shingle_wall", "0ab", "stonecutter"] as string[];
val weathered_copper_tiles_copper = ["weathered_copper_tiles_from_copper", "minecraft:weathered_copper", "create:weathered_copper_tiles", "create:weathered_copper_tile_stairs", "create:weathered_copper_tile_slab", "create:weathered_copper_tile_wall", "0ab", "stonecutter"] as string[];
val waxed_weathered_cut_copper_copper = ["waxed_weathered_cut_copper_from_copper", "minecraft:waxed_weathered_copper", "minecraft:waxed_weathered_cut_copper", "minecraft:waxed_weathered_cut_copper_stairs", "minecraft:waxed_weathered_cut_copper_slab", "minecraft:waxed_weathered_cut_copper_wall", "0ab", "stonecutter"] as string[];
val waxed_weathered_copper_shingles_copper = ["waxed_weathered_copper_shingles_from_copper", "minecraft:waxed_weathered_copper", "create:waxed_weathered_copper_shingles", "create:waxed_weathered_copper_shingle_stairs", "create:waxed_weathered_copper_shingle_slab", "create:waxed_weathered_copper_shingle_wall", "0ab", "stonecutter"] as string[];
val waxed_weathered_copper_tiles_copper = ["waxed_weathered_copper_tiles_from_copper", "minecraft:waxed_weathered_copper", "create:waxed_weathered_copper_tiles", "create:waxed_weathered_copper_tile_stairs", "create:waxed_weathered_copper_tile_slab", "create:waxed_weathered_copper_tile_wall", "0ab", "stonecutter"] as string[];
val oxidized_cut_copper_copper = ["oxidized_cut_copper_from_copper", "minecraft:oxidized_copper", "minecraft:oxidized_cut_copper", "minecraft:oxidized_cut_copper_stairs", "minecraft:oxidized_cut_copper_slab", "minecraft:oxidized_cut_copper_wall", "0ab", "stonecutter"] as string[];
val oxidized_copper_shingles_copper = ["oxidized_copper_shingles_from_copper", "minecraft:oxidized_copper", "create:oxidized_copper_shingles", "create:oxidized_copper_shingle_stairs", "create:oxidized_copper_shingle_slab", "create:oxidized_copper_shingle_wall", "0ab", "stonecutter"] as string[];
val oxidized_copper_tiles_copper = ["oxidized_copper_tiles_from_copper", "minecraft:oxidized_copper", "create:oxidized_copper_tiles", "create:oxidized_copper_tile_stairs", "create:oxidized_copper_tile_slab", "create:oxidized_copper_tile_wall", "0ab", "stonecutter"] as string[];
val waxed_oxidized_cut_copper_copper = ["waxed_oxidized_cut_copper_from_copper", "minecraft:waxed_oxidized_copper", "minecraft:waxed_oxidized_cut_copper", "minecraft:waxed_oxidized_cut_copper_stairs", "minecraft:waxed_oxidized_cut_copper_slab", "minecraft:waxed_oxidized_cut_copper_wall", "0ab", "stonecutter"] as string[];
val waxed_oxidized_copper_shingles_copper = ["waxed_oxidized_copper_shingles_from_copper", "minecraft:waxed_oxidized_copper", "create:waxed_oxidized_copper_shingles", "create:waxed_oxidized_copper_shingle_stairs", "create:waxed_oxidized_copper_shingle_slab", "create:waxed_oxidized_copper_shingle_wall", "0ab", "stonecutter"] as string[];
val waxed_oxidized_copper_tiles_copper = ["waxed_oxidized_copper_tiles_from_copper", "minecraft:waxed_oxidized_copper", "create:waxed_oxidized_copper_tiles", "create:waxed_oxidized_copper_tile_stairs", "create:waxed_oxidized_copper_tile_slab", "create:waxed_oxidized_copper_tile_wall", "0ab", "stonecutter"] as string[];
val raw_iron_bricks_raw = ["raw_iron_bricks_raw", "minecraft:raw_iron_block", "quark:raw_iron_bricks", "quark:raw_iron_bricks_stairs", "quark:raw_iron_bricks_slab", "quark:raw_iron_bricks_wall", "0ab", "stonecutter"] as string[];
val raw_gold_bricks_raw = ["raw_gold_bricks_raw", "minecraft:raw_gold_block", "quark:raw_gold_bricks", "quark:raw_gold_bricks_stairs", "quark:raw_gold_bricks_slab", "quark:raw_gold_bricks_wall", "0ab", "stonecutter"] as string[];
val rough_ruby_bricks_raw = ["rough_ruby_bricks_raw", "sullysmod:rough_jade_block", "sullysmod:rough_jade_bricks", "sullysmod:rough_jade_brick_stairs", "sullysmod:rough_jade_brick_slab", "sullysmod:rough_jade_brick_wall", "0ab", "stonecutter"] as string[];
val quartz_block_block = ["quartz_block_block", "create:rose_quartz_block", "minecraft:quartz_block", "minecraft:quartz_stairs", "minecraft:quartz_slab", "minecraft:quartz_wall", "0ab", "stonecutter"] as string[];
val smooth_quartz_block_block = ["smooth_quartz_block", "create:rose_quartz_block", "minecraft:smooth_quartz", "minecraft:smooth_quartz_stairs", "minecraft:smooth_quartz_slab", "minecraft:smooth_quartz_wall", "0ab", "stonecutter"] as string[];
val polished_jade_bricks_block = ["polished_jade_bricks_block", "sullysmod:polished_jade_block", "sullysmod:polished_jade_bricks", "sullysmod:polished_jade_brick_stairs", "sullysmod:polished_jade_brick_slab", "sullysmod:polished_jade_brick_wall", "0ab", "stonecutter"] as string[];
val polished_jade_shingles_block = ["polished_jade_shingles_block", "sullysmod:polished_jade_block",  "sullysmod:polished_jade_shingles", "sullysmod:polished_jade_shingle_stairs", "sullysmod:polished_jade_shingle_slab", "sullysmod:polished_jade_shingle_wall", "0ab", "stonecutter"] as string[];
val lapis_bricks_cut = ["lapis_bricks_cut", "minecraft:lapis_block", "supplementaries:lapis_bricks", "supplementaries:lapis_bricks_stairs", "supplementaries:lapis_bricks_slab", "supplementaries:lapis_bricks_wall", "0abc", "stonecutter"] as string[];

val cutSets2 = [raw_copper_bricks_raw, cut_copper_copper, copper_shingles_copper, copper_tiles_copper, waxed_cut_copper_copper, waxed_copper_shingles_copper,
waxed_copper_tiles_copper, exposed_cut_copper_copper, exposed_copper_shingles_copper, exposed_copper_tiles_copper, waxed_exposed_cut_copper_copper,
waxed_exposed_copper_shingles_copper, waxed_exposed_copper_tiles_copper, weathered_cut_copper_copper, weathered_copper_shingles_copper, weathered_copper_tiles_copper,
waxed_weathered_cut_copper_copper, waxed_weathered_copper_shingles_copper, waxed_weathered_copper_tiles_copper, oxidized_cut_copper_copper, oxidized_copper_shingles_copper,
oxidized_copper_tiles_copper, waxed_oxidized_cut_copper_copper, waxed_oxidized_copper_shingles_copper, waxed_oxidized_copper_tiles_copper, raw_iron_bricks_raw,
raw_gold_bricks_raw, rough_ruby_bricks_raw, quartz_block_block, smooth_quartz_block_block, polished_jade_bricks_block, polished_jade_shingles_block,
lapis_bricks_cut] as string[][];


val coloursList = ["white", "light_gray", "gray", "black", "brown", "red", "orange", "yellow", "lime", "green", "cyan", "light_blue", "blue", "purple",
"magenta", "pink"] as string[];

for colour in coloursList {
    var dyeItem = <item:${"minecraft:" + colour + "_dye"}>;
    //----------------------------------- Non-Dyes -----------------------------------
    var anyPlankName = "fundamentallyfixed:plank_blocks";
    var anyPlankTag = <tagmanager:items>.tag(anyPlankName);

    var anySandName = "fundamentallyfixed:sands";
    var anySandTag = <tagmanager:items>.tag(anySandName);

    var anyButtonName = "fundamentallyfixed:buttons";
    var anyButtonTag = <tagmanager:items>.tag(anyButtonName);

    //----------------------------------- Wool -----------------------------------
    var woolName = "minecraft:" + colour + "_wool";
    var woolItem = <item:${woolName}>;
    var anyWoolName = "fundamentallyfixed:wools";
    var anyWoolTag = <tagmanager:items>.tag(anyWoolName);

    //----------------------------------- Carpet -----------------------------------
    var carpetName = "minecraft:" + colour + "_carpet";
    var carpetItem = <item:${carpetName}>;
    var anyCarpetName = "fundamentallyfixed:carpets";
    var anyCarpetTag = <tagmanager:items>.tag(anyCarpetName);

    craftingTable.addShaped(colour + "_carpet", carpetItem * 8, [
    [woolItem, woolItem]]);

    craftingTable.addShaped(colour + "_wool_from_carpet", woolItem, [
    [carpetItem, carpetItem],
    [carpetItem, carpetItem]]);

    //----------------------------------- Bedrolls -----------------------------------
    var anyBedrollName = "fundamentallyfixed:bedrolls";
    var anyBedrollTag = <tagmanager:items>.tag(anyBedrollName);
    var bedrollName = "upgrade_aquatic:" + colour + "_bedroll";
    var bedrollItem = <item:${bedrollName}>;

    //----------------------------------- Beds -----------------------------------
    var anyBedName = "fundamentallyfixed:beds";
    var anyBedTag = <tagmanager:items>.tag(anyBedName);
    var bedName = "minecraft:" + colour + "_bed";
    var bedItem = <item:${bedName}>;

    craftingTable.addShaped(colour + "_bed", bedItem, [
    [woolItem, woolItem, anyBedrollTag],
    [anyPlankTag, anyPlankTag, anyPlankTag]]);

    //----------------------------------- Hammocks -----------------------------------
    var anyHammockName = "fundamentallyfixed:hammocks";
    var anyHammockTag = <tagmanager:items>.tag(anyHammockName);
    var hammockName = "sleep_tight:hammock_" + colour;
    var hammockItem = <item:${hammockName}>;

    craftingTable.addShaped(colour + "_hammock", hammockItem, [
    [woolItem, woolItem, anyBedrollTag],
    [<item:minecraft:string>, <item:minecraft:string>, <item:minecraft:string>]]);

    //----------------------------------- Seats -----------------------------------
    var anySeatName = "fundamentallyfixed:seats";
    var anySeatTag = <tagmanager:items>.tag(anySeatName);
    var seatName = "create:" + colour + "_seat";
    var seatItem = <item:${seatName}>;

    craftingTable.addShaped(colour + "_seat", seatItem, [
    [woolItem, woolItem],
    [anyPlankTag, anyPlankTag]]);

    //----------------------------------- Concrete -----------------------------------
    var anyConcretePowderName = "fundamentallyfixed:concrete_powders";
    var anyConcretePowderTag = <tagmanager:items>.tag(anyConcretePowderName);
    var concretePowderName = "minecraft:" + colour + "_concrete_powder";
    var concretePowderItem = <item:${concretePowderName}>;
    var waxedConcretePowderName = "oreganized:waxed_" + colour + "_concrete_powder";
    var waxedConcretePowderItem = <item:${waxedConcretePowderName}>;

    craftingTable.addShapeless(colour + "_concrete_powder", concretePowderItem, [
    <item:minecraft:gravel>, <item:minecraft:gravel>, <item:minecraft:gravel>, <item:minecraft:gravel>, dyeItem, anySandTag, anySandTag, anySandTag, anySandTag]);

    craftingTable.addShapeless("waxed_" + colour + "_concrete_powder", waxedConcretePowderItem, [
    concretePowderItem, <item:minecraft:honeycomb>]);

    craftingTable.addShapeless("waxed_" + colour + "_concrete_powder_multi", waxedConcretePowderItem * 8, [
    concretePowderItem, concretePowderItem, concretePowderItem, concretePowderItem, <item:minecraft:honeycomb>, concretePowderItem, concretePowderItem,
    concretePowderItem, concretePowderItem]);

    //----------------------------------- Terracotta -----------------------------------
    var anyTerracottaName = "fundamentallyfixed:terracottas";
    var anyTerracottaTag = <tagmanager:items>.tag(anyTerracottaName);
    var terracottaName = "minecraft:" + colour + "_terracotta";
    var terracottaItem = <item:${terracottaName}>;

    var anyTerracottaStairsName = "fundamentallyfixed:terracottas_stairs";
    var anyTerracottaStairsTag = <tagmanager:items>.tag(anyTerracottaStairsName);
    var terracottaStairsName = "clayworks:" + colour + "_terracotta_stairs";
    var terracottaStairsItem = <item:${terracottaStairsName}>;

    var anyTerracottaSlabName = "fundamentallyfixed:terracottas_slabs";
    var anyTerracottaSlabTag = <tagmanager:items>.tag(anyTerracottaSlabName);
    var terracottaSlabName = "clayworks:" + colour + "_terracotta_slab";
    var terracottaSlabItem = <item:${terracottaSlabName}>;

    var anyTerracottaWallName = "fundamentallyfixed:terracottas_walls";
    var anyTerracottaWallTag = <tagmanager:items>.tag(anyTerracottaWallName);
    var terracottaWallName = "clayworks:" + colour + "_terracotta_wall";
    var terracottaWallItem = <item:${terracottaWallName}>;

    //----------------------------------- Shingles -----------------------------------
    var anyShinglesName = "fundamentallyfixed:shingles";
    var anyShinglesTag = <tagmanager:items>.tag(anyShinglesName);
    var shinglesName = "hnh:" + colour + "_shingles";
    var shinglesItem = <item:${shinglesName}>;

    var anyShinglesStairsName = "fundamentallyfixed:shingles_stairs";
    var anyShinglesStairsTag = <tagmanager:items>.tag(anyShinglesStairsName);
    var shinglesStairsName = "hnh:" + colour + "_shingle_stairs";
    var shinglesStairsItem = <item:${shinglesStairsName}>;

    var anyShinglesSlabName = "fundamentallyfixed:shingles_slabs";
    var anyShinglesSlabTag = <tagmanager:items>.tag(anyShinglesSlabName);
    var shinglesSlabName = "hnh:" + colour + "_shingle_slab";
    var shinglesSlabItem = <item:${shinglesSlabName}>;

    craftingTable.addShaped(colour + "_shingles", shinglesItem * 2, [
    [terracottaItem],
    [terracottaItem]]);

    //var anyShinglesWallName = "fundamentallyfixed:shingles_walls";
    //var anyShinglesWallTag = <tagmanager:items>.tag(anyShinglesWallName);
    //var shinglesWallName = "quark:" + colour + "_shingles_wall";
    //var shinglesWallItem = <item:${shinglesWallName}>;

    //----------------------------------- Bricks -----------------------------------
    var anyTerracottaBricksName = "fundamentallyfixed:terracottas_bricks";
    var anyTerracottaBricksTag = <tagmanager:items>.tag(anyTerracottaBricksName);
    var terracottaBricksName = "hnh:" + colour + "_terracotta_bricks";
    var terracottaBricksItem = <item:${terracottaBricksName}>;

    var anyTerracottaBricksStairsName = "fundamentallyfixed:terracottas_bricks_stairs";
    var anyTerracottaBricksStairsTag = <tagmanager:items>.tag(anyTerracottaBricksStairsName);
    var terracottaBricksStairsName = "hnh:" + colour + "_terracotta_brick_stairs";
    var terracottaBricksStairsItem = <item:${terracottaBricksStairsName}>;

    var anyTerracottaBricksSlabName = "fundamentallyfixed:terracottas_bricks_slabs";
    var anyTerracottaBricksSlabTag = <tagmanager:items>.tag(anyTerracottaBricksSlabName);
    var terracottaBricksSlabName = "hnh:" + colour + "_terracotta_brick_slab";
    var terracottaBricksSlabItem = <item:${terracottaBricksSlabName}>;

    var anyTerracottaBricksWallName = "fundamentallyfixed:terracottas_bricks_walls";
    var anyTerracottaBricksWallTag = <tagmanager:items>.tag(anyTerracottaBricksWallName);
    var terracottaBricksWallName = "clayworks:" + colour + "_terracotta_brick_wall";
    var terracottaBricksWallItem = <item:${terracottaBricksWallName}>;

    var anyChiseledTerracottaBricksName = "fundamentallyfixed:terracottas_bricks_chiseleds";
    var anyChiseledTerracottaBricksTag = <tagmanager:items>.tag(anyChiseledTerracottaBricksName);
    var chiseledTerracottaBricksName = "clayworks:chiseled_" + colour + "_terracotta_bricks";
    var chiseledTerracottaBricksItem = <item:${chiseledTerracottaBricksName}>;

    craftingTable.addShaped(colour + "_terra_bricks", terracottaBricksItem * 2, [
    [terracottaItem, terracottaItem],
    [terracottaItem, terracottaItem]]);

    craftingTable.addShaped(colour + "chiseled", chiseledTerracottaBricksItem * 2, [
    [terracottaItem],
    [terracottaItem]
    ]);
    stoneCutter.addRecipe(colour + "cut_chiseled_", chiseledTerracottaBricksItem, terracottaItem);
    stoneCutter.addRecipe(colour + "cut_chiseled_shingle", chiseledTerracottaBricksItem, shinglesItem);
    stoneCutter.addRecipe(colour + "cut_chiseled_brick", chiseledTerracottaBricksItem, terracottaBricksItem);

    //----------------------------------- Glass -----------------------------------
    var anyGlassName = "fundamentallyfixed:glasses";
    var anyGlassTag = <tagmanager:items>.tag(anyGlassName);
    var glassName = "minecraft:" + colour + "_stained_glass";
    var glassItem = <item:${glassName}>;

    var anyGlassPaneName = "fundamentallyfixed:glasses_panes";
    var anyGlassPaneTag = <tagmanager:items>.tag(anyGlassPaneName);
    var glassPaneName = "minecraft:" + colour + "_stained_glass_pane";
    var glassPaneItem = <item:${glassPaneName}>;

    craftingTable.addShaped(colour + "_glass_pane", glassPaneItem * 12, [
    [glassItem, glassItem, glassItem]]);

    //----------------------------------- Shulker Box -----------------------------------
    var anyShulkerName = "fundamentallyfixed:shulker_boxes";
    var anyShulkerTag = <tagmanager:items>.tag(anyShulkerName);
    var shulkerName = "minecraft:" + colour + "_shulker_box";
    var shulkerItem = <item:${shulkerName}>;

    //----------------------------------- Rail -----------------------------------
    var anyRailName = "fundamentallyfixed:coloured_rails";
    var anyRailTag = <tagmanager:items>.tag(anyRailName);
    var railName = "moreminecarts:color_detector_rail_" + colour;
    var railItem = <item:${railName}>;

    var anySignalName = "fundamentallyfixed:rail_signals";
    var anySignalTag = <tagmanager:items>.tag(anySignalName);
    var signalName = "moreminecarts:rail_signal_" + colour;
    var signalItem = <item:${signalName}>;

    craftingTable.addShapeless("rail_signal_from_rail_" + colour, signalItem, [
    railItem, anySignalTag]);

    craftingTable.addShapeless("rail_signal_" + colour, signalItem, [
    <item:minecraft:stick>, woolItem]);

    //----------------------------------- Banner -----------------------------------
    var anyBannerName = "fundamentallyfixed:banners";
    var anyBannerTag = <tagmanager:items>.tag(anyBannerName);
    var bannerName = "minecraft:" + colour + "_banner";
    var bannerItem = <item:${bannerName}>;

    var anyFlagName = "fundamentallyfixed:flags";
    var anyFlagTag = <tagmanager:items>.tag(anyFlagName);
    var flagName = "supplementaries:flag_" + colour;
    var flagItem = <item:${flagName}>;

    craftingTable.addShaped(colour + "_banner", bannerItem, [
    [woolItem, <item:minecraft:stick>, woolItem],
    [woolItem, <item:minecraft:stick>, woolItem],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]]);

    craftingTable.addShaped(colour + "_flag", flagItem, [
    [<item:minecraft:air>, woolItem, woolItem],
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>],
    [<item:minecraft:air>, woolItem, woolItem]]);

    //----------------------------------- Sack -----------------------------------
    var anySackName = "fundamentallyfixed:sacks";
    var anySackTag = <tagmanager:items>.tag(anySackName);
    var sackName = "suppsquared:sack_" + colour;
    var sackItem = <item:${sackName}>;

    //----------------------------------- Candle -----------------------------------
    var anyCandleName = "fundamentallyfixed:candles";
    var anyCandleTag = <tagmanager:items>.tag(anyCandleName);
    var candleName = "minecraft:" + colour + "_candle";
    var candleItem = <item:${candleName}>;

    var anyCandleHolderName = "fundamentallyfixed:candles_holders";
    var anyCandleHolderTag = <tagmanager:items>.tag(anyCandleHolderName);
    var candleHolderName = "supplementaries:candle_holder_" + colour;
    var candleHolderItem = <item:${candleHolderName}>;

    craftingTable.addShaped(colour + "_candle_holder", candleHolderItem, [
    [candleItem],
    [<item:minecraft:iron_ingot>]]);

    //----------------------------------- Sofa -----------------------------------
    var anySofaName = "fundamentallyfixed:sofas";
    var anySofaTag = <tagmanager:items>.tag(anySofaName);
    var sofaName = "another_furniture:" + colour + "_sofa";
    var sofaItem = <item:${sofaName}>;

    craftingTable.addShaped(colour + "_sofa", sofaItem, [
    [anyPlankTag, woolItem],
    [anyPlankTag, woolItem],
    [<item:modestmining:plank>, <item:modestmining:plank>]]);

    //----------------------------------- Tall Stool -----------------------------------
    var anyTallStoolName = "fundamentallyfixed:tall_stools";
    var anyTallStoolTag = <tagmanager:items>.tag(anyTallStoolName);
    var tallStoolName = "another_furniture:" + colour + "_tall_stool";
    var tallStoolItem = <item:${tallStoolName}>;

    craftingTable.addShaped(colour + "_tall_stool", tallStoolItem, [
    [woolItem],
    [<item:modestmining:plank>],
    [<item:modestmining:plank>]]);

    //----------------------------------- Lamp -----------------------------------
    var anyLampName = "fundamentallyfixed:lamps";
    var anyLampTag = <tagmanager:items>.tag(anyLampName);
    var lampName = "another_furniture:" + colour + "_lamp";
    var lampItem = <item:${lampName}>;

    craftingTable.addShaped(colour + "_lamp", lampItem, [
    [woolItem, <item:minecraft:string>],
    [<item:minecraft:torch>, anyButtonTag],
    [<item:modestmining:plank>]]);

    //----------------------------------- Curtain -----------------------------------
    var anyCurtainName = "fundamentallyfixed:curtain";
    var anyCurtainTag = <tagmanager:items>.tag(anyCurtainName);
    var curtainName = "another_furniture:" + colour + "_curtain";
    var curtainItem = <item:${curtainName}>;

    craftingTable.addShaped(colour + "_curtain", curtainItem, [
    [<item:minecraft:stick>, <item:minecraft:stick>],
    [woolItem, woolItem],
    [woolItem, woolItem]]);

    //----------------------------------- Sign -----------------------------------
    var anySignName = "fundamentallyfixed:canvas_signs";
    var anySignTag = <tagmanager:items>.tag(anySignName);
    var signName = "farmersdelight:" + colour + "_canvas_sign";
    var signItem = <item:${signName}>;

    //----------------------------------- Present -----------------------------------
    var anyPresentName = "fundamentallyfixed:presents";
    var anyPresentTag = <tagmanager:items>.tag(anyPresentName);
    var presentName = "supplementaries:present_" + colour;
    var presentItem = <item:${presentName}>;

    var anyTrappedPresentName = "fundamentallyfixed:trapped_presents";
    var anyTrappedPresentTag = <tagmanager:items>.tag(anyTrappedPresentName);
    var trappedPresentName = "supplementaries:trapped_present_" + colour;
    var trappedPresentItem = <item:${trappedPresentName}>;

    //----------------------------------- Dying -----------------------------------
    var bedrollList = [colour + "_bedroll_dyed", bedrollName, anyBedrollName] as string[];
    var bedList = [colour + "_bed_dyed", bedName, anyBedName] as string[];
    var hammockList = [colour + "_hammock_dyed", hammockName, anyHammockName] as string[];
    var woolList = [colour + "_wool_dyed", woolName, anyWoolName] as string[];
    var carpetList = [colour + "_carpet_dyed", carpetName, anyCarpetName] as string[];
    var seatList = [colour + "_seat_dyed", seatName, anySeatName] as string[];
    var concretePowderList = [colour + "_concrete_powder_dyed", concretePowderName, anyConcretePowderName] as string[];
    var terracottaList = [colour + "_terracotta_dyed", terracottaName, anyTerracottaName] as string[];
    var terracottaStairsList = [colour + "_terracotta_stairs_dyed", terracottaStairsName, anyTerracottaStairsName] as string[];
    var terracottaSlabList = [colour + "_terracotta_slab_dyed", terracottaSlabName, anyTerracottaSlabName] as string[];
    var terracottaWallList = [colour + "_terracotta_wall_dyed", terracottaWallName, anyTerracottaWallName] as string[];
    var shinglesList = [colour + "_shingles_dyed", shinglesName, anyShinglesName] as string[];
    var shinglesStairsList = [colour + "_shingles_stairs_dyed", shinglesStairsName, anyShinglesStairsName] as string[];
    var shinglesSlabList = [colour + "_shingles_slab_dyed", shinglesSlabName, anyShinglesSlabName] as string[];
    //var terracottaWallList = [colour + "_terracotta_wall_dyed", terracottaWallName, anyTerracottaWallName] as string[];
    var terracottaBricksList = [colour + "_terracotta_bricks_dyed", terracottaBricksName, anyTerracottaBricksName] as string[];
    var terracottaBricksStairsList = [colour + "_terracotta_brick_stairs_dyed", terracottaBricksStairsName, anyTerracottaBricksStairsName] as string[];
    var terracottaBricksSlabList = [colour + "_terracotta_brick_slab_dyed", terracottaBricksSlabName, anyTerracottaBricksSlabName] as string[];
    var terracottaBricksWallList = [colour + "_terracotta_brick_wall_dyed", terracottaBricksWallName, anyTerracottaBricksWallName] as string[];
    var chiseledTerracottaBricksWallList = [colour + "_chiseled_terracotta_brick_dyed", chiseledTerracottaBricksName, anyChiseledTerracottaBricksName] as string[];
    var glassList = [colour + "_glass_dyed", glassName, anyGlassName] as string[];
    var shulkerList = [colour + "_shulker_dyed", shulkerName, anyShulkerName] as string[];
    var railList = [colour + "_rail_dyed", railName, anyRailName] as string[];
    var signalList = [colour + "_rail_signal_dyed", signalName, anySignalName] as string[];
    var bannerList = [colour + "_banner_dyed", bannerName, anyBannerName] as string[];
    var flagList = [colour + "_flag_dyed", flagName, anyFlagName] as string[];
    var sackList = [colour + "_sack_dyed", sackName, anySackName] as string[];
    var candleList = [colour + "_candle_dyed", candleName, anyCandleName] as string[];
    var candleHolderList = [colour + "_candle_holder_dyed", candleHolderName, anyCandleHolderName] as string[];
    var sofaList = [colour + "_sofa_dyed", sofaName, anySofaName] as string[];
    var tallStoolList = [colour + "_tall_stool_dyed", tallStoolName, anyTallStoolName] as string[];
    var LampList = [colour + "_lamp_list_dyed", lampName, anyLampName] as string[];
    var CurtainList = [colour + "_curtain_list_dyed", curtainName, anyCurtainName] as string[];
    var SignList = [colour + "_sign_list_dyed", signName, anySignName] as string[];
    var PresentList = [colour + "_present_list_dyed", presentName, anyPresentName] as string[];
    var TrappedPresentList = [colour + "_trapped_present_list_dyed", trappedPresentName, anyTrappedPresentName] as string[];

    var dyeablesList = [bedrollList, bedList, hammockList, woolList, carpetList, seatList, concretePowderList, terracottaList, terracottaStairsList,
    terracottaSlabList, terracottaWallList, shinglesList, shinglesStairsList, shinglesSlabList, terracottaBricksList, terracottaBricksStairsList,
    terracottaBricksSlabList, terracottaBricksWallList, chiseledTerracottaBricksWallList, glassList, shulkerList, railList, signalList, bannerList,
    flagList, sackList, candleList, candleHolderList, sofaList, tallStoolList, LampList, CurtainList, SignList, TrappedPresentList] as string[][];

    var dyeablesListMulti = [bedrollList, bedList, hammockList, woolList, carpetList, seatList, concretePowderList, terracottaList, terracottaStairsList,
    terracottaSlabList, terracottaWallList, shinglesList, shinglesStairsList, shinglesSlabList, terracottaBricksList, terracottaBricksStairsList,
    terracottaBricksSlabList, terracottaBricksWallList, chiseledTerracottaBricksWallList, glassList, railList, signalList, bannerList, flagList,
    candleList, candleHolderList, sofaList, tallStoolList, LampList, CurtainList, SignList, PresentList, TrappedPresentList] as string[][];

    for dyeable in dyeablesList {
        craftingTable.addShapeless(dyeable[0], <item:${dyeable[1]}>, [
        <tagmanager:items>.tag(dyeable[2]), dyeItem]);
    }
    for dyeable in dyeablesListMulti {
        craftingTable.addShapeless(dyeable[0] + "_multi", <item:${dyeable[1]}> * 8, [
        <tagmanager:items>.tag(dyeable[2]), <tagmanager:items>.tag(dyeable[2]), <tagmanager:items>.tag(dyeable[2]), <tagmanager:items>.tag(dyeable[2]),
        dyeItem, <tagmanager:items>.tag(dyeable[2]), <tagmanager:items>.tag(dyeable[2]), <tagmanager:items>.tag(dyeable[2]),
        <tagmanager:items>.tag(dyeable[2])]);
    }
}

for blockSet in craftSets {
    val blockName = blockSet[0];
    val blockType = <item:${blockSet[1]}>;
    val helper = blockSet[5];
    val cutter = blockSet[6];

    if ("a" in helper) {
        val stair = <item:${blockSet[2]}>;

        craftingTable.addShaped(blockName + "_stairs_", stair * 4, [
        [blockType, <item:minecraft:air>],
        [blockType, blockType]
        ]);
        if ("stonecutter" in cutter) {
            stoneCutter.addRecipe(blockName + "_stairs_" + cutter, stair, blockType);
        }
    }

    if ("b" in helper) {
    val slab = <item:${blockSet[3]}>;

        craftingTable.addShaped(blockName + "_slab_", slab * 4, [
        [blockType, blockType]
        ]);
        if ("stonecutter" in cutter) {
            stoneCutter.addRecipe(blockName + "_slab_" + cutter, slab * 2, blockType);
        }
    }

    if ("c" in helper) {
        val wall = <item:${blockSet[4]}>;

        craftingTable.addShaped(blockName + "_wall_", wall * 3, [
        [blockType, blockType, blockType]
        ]);
        if ("stonecutter" in cutter) {
            stoneCutter.addRecipe(blockName + "_wall_" + cutter, wall, blockType);
        }
    }
}

for cutSet in cutSets {
    val cutName = cutSet[0];
    val cutType = <item:${cutSet[1]}>;
    val cutHelper = cutSet[6];
    val cutCutter = cutSet[7];
    val cutFrom = cutSet[1];

    if ("0" in cutHelper) {
        val blockCut = <item:${cutSet[2]}>;
        if ("stonecutter" in cutCutter) {
            stoneCutter.addRecipe(cutName + "_block_" + cutCutter, blockCut, cutType);
        }
    }

    if ("a" in cutHelper) {
        val stairCut = <item:${cutSet[3]}>;
        if ("stonecutter" in cutCutter) {
            stoneCutter.addRecipe(cutName + "_stairs_" + cutCutter, stairCut, cutType);
        }
    }

    if ("b" in cutHelper) {
        val slabCut = <item:${cutSet[4]}>;
        if ("stonecutter" in cutCutter) {
            stoneCutter.addRecipe(cutName + "_slab_" + cutCutter, slabCut * 2, cutType);
        }
    }

    if ("c" in cutHelper) {
        val wallCut = <item:${cutSet[5]}>;
        if ("stonecutter" in cutCutter) {
            stoneCutter.addRecipe(cutName + "_wall_" + cutCutter, wallCut, cutType);
        }
    }
}

for cutSet2 in cutSets2 {
    val cutName2 = cutSet2[0];
    val cutType2 = <item:${cutSet2[1]}>;
    val cutHelper2 = cutSet2[6];
    val cutCutter2 = cutSet2[7];
    val cutFrom2 = cutSet2[1];

    if ("0" in cutHelper2) {
        val blockCut2 = <item:${cutSet2[2]}>;
        if ("stonecutter" in cutCutter2) {
            stoneCutter.addRecipe(cutName2 + "_block_" + cutCutter2, blockCut2 * 2, cutType2);
        }
    }

    if ("a" in cutHelper2) {
        val stairCut2 = <item:${cutSet2[3]}>;
        if ("stonecutter" in cutCutter2) {
            stoneCutter.addRecipe(cutName2 + "_stairs_" + cutCutter2, stairCut2 * 2, cutType2);
        }
    }

    if ("b" in cutHelper2) {
        val slabCut2 = <item:${cutSet2[4]}>;
        if ("stonecutter" in cutCutter2) {
            stoneCutter.addRecipe(cutName2 + "_slab_" + cutCutter2, slabCut2 * 4, cutType2);
        }
    }

    if ("c" in cutHelper2) {
        val wallCut2 = <item:${cutSet2[5]}>;
        if ("stonecutter" in cutCutter2) {
            stoneCutter.addRecipe(cutName2 + "_wall_" + cutCutter2, wallCut2 * 2, cutType2);
        }
    }
}

val potion_night_vision = ["minecraft", "night_vision", "minecraft", "golden_carrot", "naturalist:lizard_tail", "long", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_vibing = ["upgrade_aquatic", "vibing", "neapolitan", "magic_beans", "naturalist:lizard_tail", "both", "fundamentallyfixed:positive_potion_base", "a"] as string[];
val potion_resilience = ["quark", "resilience", "alexsmobs", "rocky_shell", "naturalist:lizard_tail", "both", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_invisibility = ["minecraft", "invisibility", "sullysmod", "lanternfish", "naturalist:lizard_tail", "long", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_leaping = ["minecraft", "leaping", "minecraft", "rabbit_foot", "naturalist:lizard_tail", "both", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_fire_resistance = ["minecraft", "fire_resistance", "atmospheric", "aloe_leaves", "naturalist:lizard_tail", "long", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_swiftness = ["minecraft", "swiftness", "minecraft", "sugar", "naturalist:lizard_tail", "both", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_slowness = ["minecraft", "slowness", "spelunkery", "conk_fungus", "minecraft:spider_eye", "both", "fundamentallyfixed:negative_potion_base", "b"] as string[];
val potion_resistance = ["minecraft", "resistance", "minecraft", "scute", "naturalist:lizard_tail", "long", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_water_breathing = ["minecraft", "water_breathing", "upgrade_aquatic", "boiled_blue_pickerelweed", "naturalist:lizard_tail", "long", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_healing = ["minecraft", "healing", "minecraft", "glistering_melon_slice", "naturalist:lizard_tail", "strong", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_harming = ["minecraft", "harming", "minecraft", "warped_fungus", "minecraft:spider_eye", "strong", "fundamentallyfixed:negative_potion_base", "b"] as string[];
val potion_poison = ["minecraft", "poison", "minecraft", "poisonous_potato", "minecraft:spider_eye", "both", "fundamentallyfixed:negative_potion_base", "b"] as string[];
val potion_regeneration = ["minecraft", "regeneration", "minecraft", "ghast_tear", "naturalist:lizard_tail", "both", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_strength = ["minecraft", "strength", "upgrade_aquatic", "thrasher_tooth", "naturalist:lizard_tail", "both", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_weakness = ["minecraft", "weakness", "alexsmobs", "maggot", "minecraft:spider_eye", "both", "fundamentallyfixed:negative_potion_base", "b"] as string[];
val potion_luck = ["minecraft", "luck", "buzzier_bees", "four_leaf_clover", "naturalist:lizard_tail", "neither", "fundamentallyfixed:positive_potion_base", "a"] as string[];
val potion_slow_falling = ["minecraft", "slow_falling", "minecraft", "ender_pearl", "naturalist:lizard_tail", "long", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_extension = ["autumnity", "extension", "autumnity", "snail_goo", "naturalist:lizard_tail", "neither", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_vitality = ["environmental", "vitality", "alexsmobs", "gongylidia", "naturalist:lizard_tail", "neither", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_infection = ["infernalexp", "infection", "infernalexp", "ascus_bomb", "minecraft:spider_eye", "both", "fundamentallyfixed:negative_potion_base", "b"] as string[];
val potion_luminous = ["infernalexp", "luminous", "infernalexp", "moth_dust", "naturalist:lizard_tail", "both", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_thorns = ["windswept", "thorns", "alexsmobs", "dropbear_claw", "naturalist:lizard_tail", "both", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_glowing = ["naturalist", "glowing", "naturalist", "glow_goop", "naturalist:lizard_tail", "long", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_knockback_resistance = ["alexsmobs", "knockback_resistance", "autumnity", "snail_shell_piece", "naturalist:lizard_tail", "both", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_lava_vision = ["alexsmobs", "lava_vision", "alexsmobs", "bone_serpent_tooth", "naturalist:lizard_tail", "long", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_poison_resistance = ["alexsmobs", "poison_resistance", "buzzier_bees", "honey_apple", "naturalist:lizard_tail", "long", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_bug_pheromones = ["alexsmobs", "bug_pheromones", "alexsmobs", "cockroach_wing", "naturalist:lizard_tail", "long", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_sliding = ["ecologics", "sliding", "ecologics", "penguin_feather", "naturalist:lizard_tail", "long", "fundamentallyfixed:positive_potion_base", "b"] as string[];
val potion_stunning = ["oreganized", "stunning", "fundamentallyfixed", "lead_dust", "minecraft:spider_eye", "both", "fundamentallyfixed:negative_potion_base", "b"] as string[];
val potion_unluck = ["buzzier_bees", "unluck", "minecraft", "dead_bush", "minecraft:spider_eye", "both", "fundamentallyfixed:negative_potion_base", "b"] as string[];
val potion_relief = ["atmospheric", "relief", "environmental", "cherries", "naturalist:lizard_tail", "both", "fundamentallyfixed:positive_potion_base", "a"] as string[];
val potion_worsening = ["atmospheric", "worsening", "minecraft", "pufferfish", "minecraft:spider_eye", "both", "fundamentallyfixed:negative_potion_base", "a"] as string[];
val potion_restfulness = ["upgrade_aquatic", "restfulness", "minecraft", "oxeye_daisy", "naturalist:lizard_tail", "strong", "fundamentallyfixed:positive_potion_base", "a"] as string[];
val potion_insomnia = ["upgrade_aquatic", "insomnia", "minecraft", "phantom_membrane", "minecraft:spider_eye", "strong", "fundamentallyfixed:negative_potion_base", "a"] as string[];
val potion_repellence = ["upgrade_aquatic", "repellence", "upgrade_aquatic", "lionfish", "naturalist:lizard_tail", "long", "fundamentallyfixed:positive_potion_base", "a"] as string[];

val potions_all = [potion_night_vision, potion_vibing, potion_resilience, potion_invisibility, potion_leaping, potion_fire_resistance, potion_swiftness, potion_slowness,
potion_water_breathing, potion_healing, potion_harming, potion_poison, potion_regeneration, potion_strength, potion_weakness, potion_luck, potion_slow_falling, potion_extension,
potion_vitality, potion_infection, potion_luminous, potion_thorns, potion_glowing, potion_knockback_resistance, potion_lava_vision, potion_poison_resistance, potion_bug_pheromones,
potion_sliding, potion_stunning, potion_unluck, potion_relief, potion_worsening, potion_restfulness, potion_insomnia, potion_repellence] as string[][];

for potion in potions_all {
    val potionID = potion[0] + ":" + potion[1];
    var strongPotionID = potion[0] + ":" + "strong_" + potion[1];
    var longPotionID = potion[0] + ":" + "long_" + potion[1];
    val ingredientID = <item:${potion[2] + ":" + potion[3]}>;
    val additionID = <item:${potion[4]}>;
    val potionBaseID = <item:${potion[6]}>;

    if ("a" in potion[7]) {
        strongPotionID = potion[0] + ":" + potion[1] + "_strong";
        longPotionID = potion[0] + ":" + potion[1] + "_long";
    }

    <recipetype:farmersdelight:cooking>.addRecipe(potion[1] + "_mystical_stew", <item:fundamentallyfixed:mystical_stew>.withTag({Potion: potionID}),
    [<item:minecraft:red_mushroom>, <item:minecraft:brown_mushroom>, ingredientID, <item:neapolitan:mint_leaves>, <item:culturaldelights:wild_cucumbers>],
    <constant:farmersdelight:cooking_pot_recipe_book_tab:drinks>, <item:minecraft:bowl>, 100, 400);


    <recipetype:farmersdelight:cooking>.addRecipe(potion[1] + "_potion_base", <item:minecraft:potion>.withTag({Potion: potionID}),
    [potionBaseID, ingredientID],
    <constant:farmersdelight:cooking_pot_recipe_book_tab:drinks>, <item:minecraft:glass_bottle>, 100, 400);

    <recipetype:farmersdelight:cooking>.addRecipe(potion[1] + "_potion", <item:minecraft:potion>.withTag({Potion: potionID}),
    [<item:minecraft:nether_wart>, <item:minecraft:blaze_powder>, additionID, ingredientID],
    <constant:farmersdelight:cooking_pot_recipe_book_tab:drinks>, <item:minecraft:glass_bottle>, 100, 400);


    <recipetype:farmersdelight:cooking>.addRecipe("splash_" + potion[1] + "_potion", <item:minecraft:splash_potion>.withTag({Potion: potionID}),
    [<item:minecraft:potion>.withTag({Potion: potionID}), <item:minecraft:gunpowder>],
    <constant:farmersdelight:cooking_pot_recipe_book_tab:drinks>, <item:minecraft:glass_bottle>, 100, 400);


    <recipetype:farmersdelight:cooking>.addRecipe("lingering_" + potion[1] + "_potion_double", <item:minecraft:lingering_potion>.withTag({Potion: potionID}),
    [<item:minecraft:potion>.withTag({Potion: potionID}), <item:minecraft:gunpowder>, <item:minecraft:dragon_breath>],
    <constant:farmersdelight:cooking_pot_recipe_book_tab:drinks>, <item:minecraft:glass_bottle>, 100, 400);

    <recipetype:farmersdelight:cooking>.addRecipe("lingering_" + potion[1] + "_potion", <item:minecraft:lingering_potion>.withTag({Potion: potionID}),
    [<item:minecraft:splash_potion>.withTag({Potion: potionID}), <item:minecraft:dragon_breath>],
    <constant:farmersdelight:cooking_pot_recipe_book_tab:drinks>, <item:minecraft:glass_bottle>, 100, 400);


    if (potion[5] == "both" || potion[5] == "strong") {
        <recipetype:farmersdelight:cooking>.addRecipe("strong_" + potion[1] + "_potion_base", <item:minecraft:potion>.withTag({Potion: strongPotionID}),
        [potionBaseID, ingredientID, <item:neapolitan:mint_leaves>],
        <constant:farmersdelight:cooking_pot_recipe_book_tab:drinks>, <item:minecraft:glass_bottle>, 100, 400);

        <recipetype:farmersdelight:cooking>.addRecipe("strong_" + potion[1] + "_potion", <item:minecraft:potion>.withTag({Potion: strongPotionID}),
        [<item:minecraft:nether_wart>, <item:minecraft:blaze_powder>, additionID, ingredientID, <item:neapolitan:mint_leaves>],
        <constant:farmersdelight:cooking_pot_recipe_book_tab:drinks>, <item:minecraft:glass_bottle>, 100, 400);

        <recipetype:farmersdelight:cooking>.addRecipe("strong_" + potion[1] + "_potion_addition", <item:minecraft:potion>.withTag({Potion: strongPotionID}),
        [<item:minecraft:potion>.withTag({Potion: potionID}), <item:neapolitan:mint_leaves>],
        <constant:farmersdelight:cooking_pot_recipe_book_tab:drinks>, <item:minecraft:glass_bottle>, 100, 400);


        <recipetype:farmersdelight:cooking>.addRecipe("strong_splash_" + potion[1] + "_potion_base", <item:minecraft:splash_potion>.withTag({Potion: strongPotionID}),
        [<item:minecraft:potion>.withTag({Potion: strongPotionID}), <item:minecraft:gunpowder>],
        <constant:farmersdelight:cooking_pot_recipe_book_tab:drinks>, <item:minecraft:glass_bottle>, 100, 400);

        <recipetype:farmersdelight:cooking>.addRecipe("strong_splash_" + potion[1] + "_potion_addition", <item:minecraft:splash_potion>.withTag({Potion: strongPotionID}),
        [<item:minecraft:splash_potion>.withTag({Potion: potionID}), <item:neapolitan:mint_leaves>],
        <constant:farmersdelight:cooking_pot_recipe_book_tab:drinks>, <item:minecraft:glass_bottle>, 100, 400);


        <recipetype:farmersdelight:cooking>.addRecipe("strong_lingering_" + potion[1] + "_potion_base", <item:minecraft:lingering_potion>.withTag({Potion: strongPotionID}),
        [<item:minecraft:splash_potion>.withTag({Potion: strongPotionID}), <item:minecraft:dragon_breath>],
        <constant:farmersdelight:cooking_pot_recipe_book_tab:drinks>, <item:minecraft:glass_bottle>, 100, 400);

        <recipetype:farmersdelight:cooking>.addRecipe("strong_lingering_" + potion[1] + "_potion_addition", <item:minecraft:lingering_potion>.withTag({Potion: strongPotionID}),
        [<item:minecraft:lingering_potion>.withTag({Potion: potionID}), <item:neapolitan:mint_leaves>],
        <constant:farmersdelight:cooking_pot_recipe_book_tab:drinks>, <item:minecraft:glass_bottle>, 100, 400);
    }

    if (potion[5] == "both" || potion[5] == "long") {
        <recipetype:farmersdelight:cooking>.addRecipe("long_" + potion[1] + "_potion_base", <item:minecraft:potion>.withTag({Potion: longPotionID}),
        [potionBaseID, ingredientID, <item:culturaldelights:wild_cucumbers>],
        <constant:farmersdelight:cooking_pot_recipe_book_tab:drinks>, <item:minecraft:glass_bottle>, 100, 400);

        <recipetype:farmersdelight:cooking>.addRecipe("long_" + potion[1] + "_potion", <item:minecraft:potion>.withTag({Potion: longPotionID}),
        [<item:minecraft:nether_wart>, <item:minecraft:blaze_powder>, additionID, ingredientID, <item:culturaldelights:wild_cucumbers>],
        <constant:farmersdelight:cooking_pot_recipe_book_tab:drinks>, <item:minecraft:glass_bottle>, 100, 400);

        <recipetype:farmersdelight:cooking>.addRecipe("long_" + potion[1] + "_potion_addition", <item:minecraft:potion>.withTag({Potion: longPotionID}),
        [<item:minecraft:potion>.withTag({Potion: potionID}), <item:culturaldelights:wild_cucumbers>],
        <constant:farmersdelight:cooking_pot_recipe_book_tab:drinks>, <item:minecraft:glass_bottle>, 100, 400);


        <recipetype:farmersdelight:cooking>.addRecipe("long_splash_" + potion[1] + "_potion_base", <item:minecraft:splash_potion>.withTag({Potion: longPotionID}),
        [<item:minecraft:potion>.withTag({Potion: longPotionID}), <item:minecraft:gunpowder>],
        <constant:farmersdelight:cooking_pot_recipe_book_tab:drinks>, <item:minecraft:glass_bottle>, 100, 400);

        <recipetype:farmersdelight:cooking>.addRecipe("long_splash_" + potion[1] + "_potion_addition", <item:minecraft:splash_potion>.withTag({Potion: longPotionID}),
        [<item:minecraft:splash_potion>.withTag({Potion: potionID}), <item:culturaldelights:wild_cucumbers>],
        <constant:farmersdelight:cooking_pot_recipe_book_tab:drinks>, <item:minecraft:glass_bottle>, 100, 400);


        <recipetype:farmersdelight:cooking>.addRecipe("long_lingering_" + potion[1] + "_potion_base", <item:minecraft:lingering_potion>.withTag({Potion: longPotionID}),
        [<item:minecraft:splash_potion>.withTag({Potion: longPotionID}), <item:minecraft:dragon_breath>],
        <constant:farmersdelight:cooking_pot_recipe_book_tab:drinks>, <item:minecraft:glass_bottle>, 100, 400);

        <recipetype:farmersdelight:cooking>.addRecipe("long_lingering_" + potion[1] + "_potion_addition", <item:minecraft:lingering_potion>.withTag({Potion: longPotionID}),
        [<item:minecraft:lingering_potion>.withTag({Potion: potionID}), <item:culturaldelights:wild_cucumbers>],
        <constant:farmersdelight:cooking_pot_recipe_book_tab:drinks>, <item:minecraft:glass_bottle>, 100, 400);
    }
}

