import mods.farmersdelight.CookingPot;
import crafttweaker.api.recipe.StoneCutterManager;
import crafttweaker.api.recipe.FurnaceRecipeManager;
//import mods.clayworks.Kiln;

val stone = [["minecraft", "cobblestone"], ["paletteblocks", "cobblestone_bricks"], ["minecraft", "stone"], ["quark", "cobblestone_bricks"], ["minecraft", "stone_bricks"],
["minecraft", "smooth_stone"], ["minecraft", "cobblestone_stairs"], ["minecraft", "cobblestone_slab"], ["minecraft", "cobblestone_wall"],
["paletteblocks", "cobblestone_brick_stairs"], ["paletteblocks", "cobblestone_brick_slab"], ["paletteblocks", "cobblestone_brick_wall"], ["paletteblocks", "cracked_cobblestone_bricks"],
["minecraft", "stone_stairs"], ["minecraft", "stone_slab"], ["create", "cut_granite_brick_wall"],
["quark", "cobblestone_bricks_stairs"], ["quark", "cobblestone_bricks_slab"], ["quark", "cobblestone_bricks_wall"],
["minecraft", "stone_brick_stairs"], ["minecraft", "stone_brick_slab"], ["minecraft", "stone_brick_wall"], ["minecraft", "cracked_stone_bricks"],
["create", "cut_granite_stairs"], ["minecraft", "smooth_stone_slab"], ["create", "polished_cut_calcite_wall"],
["minecraft", "chiseled_stone_bricks"], ["supplementaries", "stone_lamp"], ["fundamentallyfixed", "glance_pillar"],
["quark", "sturdy_stone"], ["minecraft", "stone_button"], ["minecraft", "stone_pressure_plate"]] as string[][];

val deepslate = [["minecraft", "cobbled_deepslate"], ["minecraft", "deepslate_tiles"], ["minecraft", "deepslate"], ["minecraft", "polished_deepslate"], ["minecraft", "deepslate_bricks"],
["create", "polished_cut_deepslate"], ["minecraft", "cobbled_deepslate_stairs"], ["minecraft", "cobbled_deepslate_slab"], ["minecraft", "cobbled_deepslate_wall"],
["minecraft", "deepslate_tile_stairs"], ["minecraft", "deepslate_tile_slab"], ["minecraft", "deepslate_tile_wall"], ["minecraft", "cracked_deepslate_tiles"],
["create", "cut_deepslate_stairs"], ["create", "cut_deepslate_slab"], ["create", "cut_deepslate_wall"],
["minecraft", "polished_deepslate_stairs"], ["minecraft", "polished_deepslate_slab"], ["minecraft", "polished_deepslate_wall"],
["minecraft", "deepslate_brick_stairs"], ["minecraft", "deepslate_brick_slab"], ["minecraft", "deepslate_brick_wall"], ["minecraft", "cracked_deepslate_bricks"],
["create", "polished_cut_deepslate_stairs"], ["create", "polished_cut_deepslate_slab"], ["create", "polished_cut_deepslate_wall"],
["minecraft", "chiseled_deepslate"], ["supplementaries", "deepslate_lamp"], ["fundamentallyfixed", "ochrum_pillar"],
["fundamentallyfixed", "sturdy_deepslate"], ["windswept", "polished_deepslate_button"], ["windswept", "polished_deepslate_pressure_plate"]] as string[][];

val blackstone = [["quark", "blackstone_bricks"], ["supplementaries", "blackstone_tile"], ["minecraft", "blackstone"], ["minecraft", "polished_blackstone"],
["minecraft", "polished_blackstone_bricks"], ["create", "small_tuff_bricks"], ["quark", "blackstone_bricks_stairs"], ["quark", "blackstone_bricks_slab"], ["quark", "blackstone_bricks_wall"],
["supplementaries", "blackstone_tile_stairs"], ["supplementaries", "blackstone_tile_slab"], ["supplementaries", "blackstone_tile_wall"], ["create", "cut_tuff_bricks"],
["minecraft", "blackstone_stairs"], ["minecraft", "blackstone_slab"], ["minecraft", "blackstone_wall"],
["minecraft", "polished_blackstone_stairs"], ["minecraft", "polished_blackstone_slab"], ["minecraft", "polished_blackstone_wall"],
["minecraft", "polished_blackstone_brick_stairs"], ["minecraft", "polished_blackstone_brick_slab"], ["minecraft", "polished_blackstone_brick_wall"], ["minecraft", "cracked_polished_blackstone_bricks"],
["create", "small_tuff_brick_stairs"], ["create", "small_tuff_brick_slab"], ["create", "small_tuff_brick_wall"],
["minecraft", "chiseled_polished_blackstone"], ["supplementaries", "stone_lamp"], ["fundamentallyfixed", "blackstone_pillar"],
["fundamentallyfixed", "sturdy_blackstone"], ["minecraft", "polished_blackstone_button"], ["minecraft", "polished_blackstone_pressure_plate"]] as string[][];

val altisite = [["minecraft", "andesite"], ["caverns_and_chasms", "cobblestone_bricks"], ["aether", "holystone"], ["paletteblocks", "polished_calcite"],
["aether", "holystone_bricks"], ["create", "cut_calcite"], ["minecraft", "andesite_stairs"], ["minecraft", "andesite_slab"], ["minecraft", "andesite_wall"],
["caverns_and_chasms", "cobblestone_brick_stairs"], ["caverns_and_chasms", "cobblestone_brick_slab"], ["caverns_and_chasms", "cobblestone_brick_wall"], ["quark", "chiseled_jasper_bricks"],
["aether", "holystone_stairs"], ["aether", "holystone_slab"], ["aether", "holystone_wall"],
["paletteblocks", "polished_calcite_stairs"], ["paletteblocks", "polished_calcite_slab"], ["paletteblocks", "polished_calcite_wall"],
["aether", "holystone_brick_stairs"], ["aether", "holystone_brick_slab"], ["aether", "holystone_brick_wall"], ["quark", "chiseled_andesite_bricks"],
["create", "cut_calcite_stairs"], ["create", "cut_calcite_slab"], ["create", "cut_calcite_wall"],
["quark", "chiseled_calcite_bricks"], ["supplementaries", "stone_lamp"], ["quark", "calcite_pillar"],
["fundamentallyfixed", "sturdy_altisite"], ["aether", "holystone_button"], ["aether", "holystone_pressure_plate"]] as string[][];

val dripstone = [["create", "cut_dripstone"], ["create", "small_dripstone_bricks"], ["minecraft", "dripstone_block"], ["paletteblocks", "polished_dripstone"],
["quark", "dripstone_bricks"], ["create", "polished_cut_scoria"], ["create", "cut_dripstone_stairs"], ["create", "cut_dripstone_slab"], ["create", "cut_dripstone_wall"],
["create", "small_dripstone_brick_stairs"], ["create", "small_dripstone_brick_slab"], ["create", "small_dripstone_brick_wall"], ["create", "polished_cut_tuff"],
["paletteblocks", "dripstone_stairs"], ["paletteblocks", "dripstone_slab"], ["paletteblocks", "dripstone_wall"],
["paletteblocks", "polished_dripstone_stairs"], ["paletteblocks", "polished_dripstone_slab"], ["paletteblocks", "polished_dripstone_wall"],
["quark", "dripstone_bricks_stairs"], ["quark", "dripstone_bricks_slab"], ["quark", "dripstone_bricks_wall"], ["create", "cut_tuff"],
["create", "polished_cut_scoria_stairs"], ["create", "polished_cut_scoria_slab"], ["create", "polished_cut_scoria_wall"],
["quark", "chiseled_dripstone_bricks"], ["supplementaries", "stone_lamp"], ["quark", "dripstone_pillar"],
["fundamentallyfixed", "sturdy_dripstone"], ["fundamentallyfixed", "dripstone_button"], ["fundamentallyfixed", "dripstone_pressure_plate"]] as string[][];

val prismarine = [["minecraft", "prismarine"], ["caverns_and_chasms", "cobblestone_tiles"], ["caverns_and_chasms", "mossy_cobblestone_tiles"], ["fundamentallyfixed", "polished_phyton"],
["minecraft", "prismarine_bricks"], ["create", "cut_diorite"], ["minecraft", "prismarine_stairs"], ["minecraft", "prismarine_slab"], ["minecraft", "prismarine_wall"],
["caverns_and_chasms", "cobblestone_tile_stairs"], ["caverns_and_chasms", "cobblestone_tile_slab"], ["caverns_and_chasms", "cobblestone_tile_wall"], ["quark", "chiseled_granite_bricks"],
["caverns_and_chasms", "mossy_cobblestone_tile_stairs"], ["caverns_and_chasms", "mossy_cobblestone_tile_slab"], ["caverns_and_chasms", "mossy_cobblestone_tile_wall"],
["fundamentallyfixed", "polished_phyton_stairs"], ["fundamentallyfixed", "polished_phyton_slab"], ["fundamentallyfixed", "polished_phyton_wall"],
["minecraft", "prismarine_brick_stairs"], ["minecraft", "prismarine_brick_slab"], ["create", "cut_andesite_brick_wall"], ["quark", "chiseled_diorite_bricks"],
["create", "cut_diorite_stairs"], ["create", "cut_diorite_slab"], ["create", "cut_diorite_wall"],
["create", "polished_cut_ochrum"], ["supplementaries", "stone_lamp"], ["upgrade_aquatic", "prismarine_rod_bundle"],
["fundamentallyfixed", "sturdy_prismarine"], ["fundamentallyfixed", "phyton_button"], ["fundamentallyfixed", "phyton_pressure_plate"]] as string[][];


val stoneSets = [stone, deepslate, blackstone, altisite, dripstone, prismarine] as string[][][];

val glowstone = ["minecraft", "glowstone"] as string[];
val glowstoneItem = glowstone[0] + ":" + glowstone[1];

for stoneSet in stoneSets {
    val cobble = stoneSet[0];
    val cobbleItem = cobble[0] + ":" + cobble[1];
    val cobbleBrick = stoneSet[1];
    val cobbleBrickItem = cobbleBrick[0] + ":" + cobbleBrick[1];
    val natStone = stoneSet[2];
    val natStoneItem = natStone[0] + ":" + natStone[1];
    val polished = stoneSet[3];
    val polishedItem = polished[0] + ":" + polished[1];
    val brick = stoneSet[4];
    val brickItem = brick[0] + ":" + brick[1];
    val smooth = stoneSet[5];
    val smoothItem = smooth[0] + ":" + smooth[1];
    val cobbleStair = stoneSet[6];
    val cobbleStairItem = cobbleStair[0] + ":" + cobbleStair[1];
    val cobbleSlab = stoneSet[7];
    val cobbleSlabItem = cobbleSlab[0] + ":" + cobbleSlab[1];
    val cobbleWall = stoneSet[8];
    val cobbleWallItem = cobbleWall[0] + ":" + cobbleWall[1];
    val cobbleBrickStair = stoneSet[9];
    val cobbleBrickStairItem = cobbleBrickStair[0] + ":" + cobbleBrickStair[1];
    val cobbleBrickSlab = stoneSet[10];
    val cobbleBrickSlabItem = cobbleBrickSlab[0] + ":" + cobbleBrickSlab[1];
    val cobbleBrickWall = stoneSet[11];
    val cobbleBrickWallItem = cobbleBrickWall[0] + ":" + cobbleBrickWall[1];
    val cobbleBrickCrack = stoneSet[12];
    val cobbleBrickCrackItem = cobbleBrickCrack[0] + ":" + cobbleBrickCrack[1];
    val stoneStair = stoneSet[13];
    val stoneStairItem = stoneStair[0] + ":" + stoneStair[1];
    val stoneSlab = stoneSet[14];
    val stoneSlabItem = stoneSlab[0] + ":" + stoneSlab[1];
    val stoneWall = stoneSet[15];
    val stoneWallItem = stoneWall[0] + ":" + stoneWall[1];
    val polishedStair = stoneSet[16];
    val polishedStairItem = polishedStair[0] + ":" + polishedStair[1];
    val polishedSlab = stoneSet[17];
    val polishedSlabItem = polishedSlab[0] + ":" + polishedSlab[1];
    val polishedWall = stoneSet[18];
    val polishedWallItem = polishedWall[0] + ":" + polishedWall[1];
    val brickStair = stoneSet[19];
    val brickStairItem = brickStair[0] + ":" + brickStair[1];
    val brickSlab = stoneSet[20];
    val brickSlabItem = brickSlab[0] + ":" + brickSlab[1];
    val brickWall = stoneSet[21];
    val brickWallItem = brickWall[0] + ":" + brickWall[1];
    val brickCrack = stoneSet[22];
    val brickCrackItem = brickCrack[0] + ":" + brickCrack[1];
    val smoothStair = stoneSet[23];
    val smoothStairItem = smoothStair[0] + ":" + smoothStair[1];
    val smoothSlab = stoneSet[24];
    val smoothSlabItem = smoothSlab[0] + ":" + smoothSlab[1];
    val smoothWall = stoneSet[25];
    val smoothWallItem = smoothWall[0] + ":" + smoothWall[1];
    val chiseled = stoneSet[26];
    val chiseledItem = chiseled[0] + ":" + chiseled[1];
    val lamp = stoneSet[27];
    val lampItem = lamp[0] + ":" + lamp[1];
    val pillar = stoneSet[28];
    val pillarItem = pillar[0] + ":" + pillar[1];
    val sturdy = stoneSet[29];
    val sturdyItem = sturdy[0] + ":" + sturdy[1];
    val button = stoneSet[30];
    val buttonItem = button[0] + ":" + button[1];
    val plate = stoneSet[31];
    val plateItem = plate[0] + ":" + plate[1];

    // ------------------------ Cobblestone
    craftingTable.addShaped(natStone[1] + "cobble_stairs", <item:${cobbleStairItem}> * 4, [
    [<item:${cobbleItem}>, <item:minecraft:air>],
    [<item:${cobbleItem}>, <item:${cobbleItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "cobble_stairs_cut", <item:${cobbleStairItem}>, <item:${cobbleItem}>);

    craftingTable.addShaped(natStone[1] + "cobble_slab", <item:${cobbleSlabItem}> * 4, [
    [<item:${cobbleItem}>, <item:${cobbleItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "cobble_slab_cut", <item:${cobbleSlabItem}> * 2, <item:${cobbleItem}>);

    craftingTable.addShaped(natStone[1] + "cobble_wall", <item:${cobbleWallItem}> * 3, [
    [<item:${cobbleItem}>, <item:${cobbleItem}>, <item:${cobbleItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "cobble_wall_cut", <item:${cobbleWallItem}>, <item:${cobbleItem}>);

    craftingTable.addShaped(natStone[1] + "sturdy", <item:${sturdyItem}>, [
    [<item:${cobbleItem}>, <item:${cobbleItem}>, <item:${cobbleItem}>],
    [<item:${cobbleItem}>, <item:${cobbleItem}>, <item:${cobbleItem}>],
    [<item:${cobbleItem}>, <item:${cobbleItem}>, <item:${cobbleItem}>]
    ]);

    craftingTable.addShaped(natStone[1] + "cobble_from_sturdy", <item:${cobbleItem}> * 9, [
    [<item:${sturdyItem}>]
    ]);

    // ------------------------ Cobblestone Bricks
    craftingTable.addShaped(natStone[1] + "cobble_bricks", <item:${cobbleBrickItem}> * 4, [
    [<item:${cobbleItem}>, <item:${cobbleItem}>],
    [<item:${cobbleItem}>, <item:${cobbleItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "cobble_bricks_cut", <item:${cobbleBrickItem}>, <item:${cobbleItem}>);

    craftingTable.addShaped(natStone[1] + "cobble_bricks_stairs", <item:${cobbleBrickStairItem}> * 4, [
    [<item:${cobbleBrickItem}>, <item:minecraft:air>],
    [<item:${cobbleBrickItem}>, <item:${cobbleBrickItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "cobble_bricks_stairs_cut_cobble", <item:${cobbleBrickStairItem}>, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "cobble_bricks_stairs_cut", <item:${cobbleBrickStairItem}>, <item:${cobbleBrickItem}>);

    craftingTable.addShaped(natStone[1] + "cobble_bricks_slab", <item:${cobbleBrickSlabItem}> * 4, [
    [<item:${cobbleBrickItem}>, <item:${cobbleBrickItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "cobble_bricks_slab_cut_cobble", <item:${cobbleBrickSlabItem}> * 2, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "cobble_bricks_slab_cut", <item:${cobbleBrickSlabItem}> * 2, <item:${cobbleBrickItem}>);

    craftingTable.addShaped(natStone[1] + "cobble_bricks_wall", <item:${cobbleBrickWallItem}> * 3, [
    [<item:${cobbleBrickItem}>, <item:${cobbleBrickItem}>, <item:${cobbleBrickItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "cobble_bricks_wall_cut_cobble", <item:${cobbleBrickWallItem}>, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "cobble_bricks_wall_cut", <item:${cobbleBrickWallItem}>, <item:${cobbleBrickItem}>);

    stoneCutter.addRecipe(natStone[1] + "cobble_bricks_crack_cut_cobble", <item:${cobbleBrickCrackItem}>, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "cobble_bricks_crack_cut", <item:${cobbleBrickCrackItem}>, <item:${cobbleBrickItem}>);

    // ------------------------ Stone
    furnace.addRecipe(natStone[1] + "smelt", <item:${natStoneItem}>, <item:${cobbleItem}>, 0.1, 200);
    furnace.addRecipe(natStone[1] + "smelt_brick", <item:${natStoneItem}>, <item:${cobbleBrickItem}>, 0.1, 200);
    stoneCutter.addRecipe(natStone[1] + "smelt_cut", <item:${natStoneItem}>, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "smelt_brick_cut", <item:${natStoneItem}>, <item:${cobbleBrickItem}>);

    craftingTable.addShaped(natStone[1] + "_stairs", <item:${stoneStairItem}> * 4, [
    [<item:${natStoneItem}>, <item:minecraft:air>],
    [<item:${natStoneItem}>, <item:${natStoneItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "_stairs_cut_cobble", <item:${stoneStairItem}>, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "_stairs_cut_cobble_brick", <item:${stoneStairItem}>, <item:${cobbleBrickItem}>);
    stoneCutter.addRecipe(natStone[1] + "_stairs_cut_nat", <item:${stoneStairItem}>, <item:${natStoneItem}>);

    craftingTable.addShaped(natStone[1] + "_slab", <item:${stoneSlabItem}> * 4, [
    [<item:${natStoneItem}>, <item:${natStoneItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "_slab_cut_cobble", <item:${stoneSlabItem}> * 2, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "_slab_cut_cobble_brick", <item:${stoneSlabItem}> * 2, <item:${cobbleBrickItem}>);
    stoneCutter.addRecipe(natStone[1] + "_slab_cut_nat", <item:${stoneSlabItem}> * 2, <item:${natStoneItem}>);

    craftingTable.addShaped(natStone[1] + "_wall", <item:${stoneWallItem}> * 3, [
    [<item:${natStoneItem}>, <item:${natStoneItem}>, <item:${natStoneItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "_wall_cut_cobble", <item:${stoneWallItem}>, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "_wall_cut_cobble_brick", <item:${stoneWallItem}>, <item:${cobbleBrickItem}>);
    stoneCutter.addRecipe(natStone[1] + "_wall_cut_nat", <item:${stoneWallItem}>, <item:${natStoneItem}>);

    // ------------------------ Polished
    craftingTable.addShaped(natStone[1] + "polished", <item:${polishedItem}> * 4, [
    [<item:${natStoneItem}>, <item:${natStoneItem}>],
    [<item:${natStoneItem}>, <item:${natStoneItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "polished_cut_cobble", <item:${polishedItem}>, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "polished_cut_cobble_brick", <item:${polishedItem}>, <item:${cobbleBrickItem}>);
    stoneCutter.addRecipe(natStone[1] + "polished_cut_nat", <item:${polishedItem}>, <item:${natStoneItem}>);

    craftingTable.addShaped(natStone[1] + "polished_stairs", <item:${polishedStairItem}> * 4, [
    [<item:${polishedItem}>, <item:minecraft:air>],
    [<item:${polishedItem}>, <item:${polishedItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "polished_stairs_cut_cobble", <item:${polishedStairItem}>, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "polished_stairs_cut_cobble_brick", <item:${polishedStairItem}>, <item:${cobbleBrickItem}>);
    stoneCutter.addRecipe(natStone[1] + "polished_stairs_cut_nat", <item:${polishedStairItem}>, <item:${natStoneItem}>);
    stoneCutter.addRecipe(natStone[1] + "polished_stairs_cut", <item:${polishedStairItem}>, <item:${polishedItem}>);

    craftingTable.addShaped(natStone[1] + "polished_slab", <item:${polishedSlabItem}> * 4, [
    [<item:${polishedItem}>, <item:${polishedItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "polished_slab_cut_cobble", <item:${polishedSlabItem}> * 2, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "polished_slab_cut_cobble_brick", <item:${polishedSlabItem}> * 2, <item:${cobbleBrickItem}>);
    stoneCutter.addRecipe(natStone[1] + "polished_slab_cut_nat", <item:${polishedSlabItem}> * 2, <item:${natStoneItem}>);
    stoneCutter.addRecipe(natStone[1] + "polished_slab_cut", <item:${polishedSlabItem}> * 2, <item:${polishedItem}>);

    craftingTable.addShaped(natStone[1] + "polished_wall", <item:${polishedWallItem}> * 3, [
    [<item:${polishedItem}>, <item:${polishedItem}>, <item:${polishedItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "polished_wall_cut_cobble", <item:${polishedWallItem}>, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "polished_wall_cut_cobble_brick", <item:${polishedWallItem}>, <item:${cobbleBrickItem}>);
    stoneCutter.addRecipe(natStone[1] + "polished_wall_cut_nat", <item:${polishedWallItem}>, <item:${natStoneItem}>);
    stoneCutter.addRecipe(natStone[1] + "polished_wall_cut", <item:${polishedWallItem}>, <item:${polishedItem}>);

    // ------------------------ Bricks
    craftingTable.addShaped(natStone[1] + "_bricks", <item:${brickItem}> * 4, [
    [<item:${polishedItem}>, <item:${polishedItem}>],
    [<item:${polishedItem}>, <item:${polishedItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "_bricks_cut_cobble", <item:${brickItem}>, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "_bricks_cut_cobble_brick", <item:${brickItem}>, <item:${cobbleBrickItem}>);
    stoneCutter.addRecipe(natStone[1] + "_bricks_cut_nat", <item:${brickItem}>, <item:${natStoneItem}>);
    stoneCutter.addRecipe(natStone[1] + "_bricks_cut", <item:${brickItem}>, <item:${polishedItem}>);

    craftingTable.addShaped(natStone[1] + "_bricks_stairs", <item:${brickStairItem}> * 4, [
    [<item:${brickItem}>, <item:minecraft:air>],
    [<item:${brickItem}>, <item:${brickItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "_bricks_stairs_cut_cobble", <item:${brickStairItem}>, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "_bricks_stairs_cut_cobble_brick", <item:${brickStairItem}>, <item:${cobbleBrickItem}>);
    stoneCutter.addRecipe(natStone[1] + "_bricks_stairs_cut_nat", <item:${brickStairItem}>, <item:${natStoneItem}>);
    stoneCutter.addRecipe(natStone[1] + "_bricks_stairs_cut_polished", <item:${brickStairItem}>, <item:${polishedItem}>);
    stoneCutter.addRecipe(natStone[1] + "_bricks_stairs_cut", <item:${brickStairItem}>, <item:${brickItem}>);

    craftingTable.addShaped(natStone[1] + "_bricks_slab", <item:${brickSlabItem}> * 4, [
    [<item:${brickItem}>, <item:${brickItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "_bricks_slab_cut_cobble", <item:${brickSlabItem}> * 2, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "_bricks_slab_cut_cobble_brick", <item:${brickSlabItem}> * 2, <item:${cobbleBrickItem}>);
    stoneCutter.addRecipe(natStone[1] + "_bricks_slab_cut_nat", <item:${brickSlabItem}> * 2, <item:${natStoneItem}>);
    stoneCutter.addRecipe(natStone[1] + "_bricks_slab_cut_polished", <item:${brickSlabItem}> * 2, <item:${polishedItem}>);
    stoneCutter.addRecipe(natStone[1] + "_bricks_slab_cut", <item:${brickSlabItem}> * 2, <item:${brickItem}>);

    craftingTable.addShaped(natStone[1] + "_bricks_wall", <item:${brickWallItem}> * 3, [
    [<item:${brickItem}>, <item:${brickItem}>, <item:${brickItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "_bricks_wall_cut_cobble", <item:${brickWallItem}>, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "_bricks_wall_cut_cobble_brick", <item:${brickWallItem}>, <item:${cobbleBrickItem}>);
    stoneCutter.addRecipe(natStone[1] + "_bricks_wall_cut_nat", <item:${brickWallItem}>, <item:${natStoneItem}>);
    stoneCutter.addRecipe(natStone[1] + "_bricks_wall_cut_polished", <item:${brickWallItem}>, <item:${polishedItem}>);
    stoneCutter.addRecipe(natStone[1] + "_bricks_wall_cut", <item:${brickWallItem}>, <item:${brickItem}>);

    stoneCutter.addRecipe(natStone[1] + "_bricks_crack_cut_cobble", <item:${brickCrackItem}>, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "_bricks_crack_cut_cobble_brick", <item:${brickCrackItem}>, <item:${cobbleBrickItem}>);
    stoneCutter.addRecipe(natStone[1] + "_bricks_crack_cut_nat", <item:${brickCrackItem}>, <item:${natStoneItem}>);
    stoneCutter.addRecipe(natStone[1] + "_bricks_crack_cut_polished", <item:${brickCrackItem}>, <item:${polishedItem}>);
    stoneCutter.addRecipe(natStone[1] + "_bricks_crack_cut", <item:${brickCrackItem}>, <item:${brickItem}>);

    // ------------------------ Smooth
    furnace.addRecipe(natStone[1] + "smooth", <item:${smoothItem}>, <item:${natStoneItem}>, 0.1, 200);
    furnace.addRecipe(natStone[1] + "smooth_brick", <item:${smoothItem}>, <item:${brickItem}>, 0.1, 200);
    stoneCutter.addRecipe(natStone[1] + "smooth_cut_cobble", <item:${smoothItem}>, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "smooth_cut_cobble_brick", <item:${smoothItem}>, <item:${cobbleBrickItem}>);
    stoneCutter.addRecipe(natStone[1] + "smooth_cut_nat", <item:${smoothItem}>, <item:${natStoneItem}>);
    stoneCutter.addRecipe(natStone[1] + "smooth_cut_polished", <item:${smoothItem}>, <item:${polishedItem}>);
    stoneCutter.addRecipe(natStone[1] + "smooth_cut_brick", <item:${smoothItem}>, <item:${brickItem}>);

    craftingTable.addShaped(natStone[1] + "_smooth_stairs", <item:${smoothStairItem}> * 4, [
    [<item:${smoothItem}>, <item:minecraft:air>],
    [<item:${smoothItem}>, <item:${smoothItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "_smooth_stairs_cut_cobble", <item:${smoothStairItem}>, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "_smooth_stairs_cut_cobble_brick", <item:${smoothStairItem}>, <item:${cobbleBrickItem}>);
    stoneCutter.addRecipe(natStone[1] + "_smooth_stairs_cut_nat", <item:${smoothStairItem}>, <item:${natStoneItem}>);
    stoneCutter.addRecipe(natStone[1] + "_smooth_stairs_cut_polished", <item:${smoothStairItem}>, <item:${polishedItem}>);
    stoneCutter.addRecipe(natStone[1] + "_smooth_stairs_cut_brick", <item:${smoothStairItem}>, <item:${brickItem}>);
    stoneCutter.addRecipe(natStone[1] + "_smooth_stairs_cut", <item:${smoothStairItem}>, <item:${smoothItem}>);

    craftingTable.addShaped(natStone[1] + "_smooth_slab", <item:${smoothSlabItem}> * 4, [
    [<item:${smoothItem}>, <item:${smoothItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "_smooth_slab_cut_cobble", <item:${smoothSlabItem}> * 2, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "_smooth_slab_cut_cobble_brick", <item:${smoothSlabItem}> * 2, <item:${cobbleBrickItem}>);
    stoneCutter.addRecipe(natStone[1] + "_smooth_slab_cut_nat", <item:${smoothSlabItem}> * 2, <item:${natStoneItem}>);
    stoneCutter.addRecipe(natStone[1] + "_smooth_slab_cut_polished", <item:${smoothSlabItem}> * 2, <item:${polishedItem}>);
    stoneCutter.addRecipe(natStone[1] + "_smooth_slab_cut_brick", <item:${smoothSlabItem}> * 2, <item:${brickItem}>);
    stoneCutter.addRecipe(natStone[1] + "_smooth_slab_cut", <item:${smoothSlabItem}> * 2, <item:${smoothItem}>);

    craftingTable.addShaped(natStone[1] + "_smooth_wall", <item:${smoothWallItem}> * 3, [
    [<item:${smoothItem}>, <item:${smoothItem}>, <item:${smoothItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "_smooth_wall_cut_cobble", <item:${smoothWallItem}>, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "_smooth_wall_cut_cobble_brick", <item:${smoothWallItem}>, <item:${cobbleBrickItem}>);
    stoneCutter.addRecipe(natStone[1] + "_smooth_wall_cut_nat", <item:${smoothWallItem}>, <item:${natStoneItem}>);
    stoneCutter.addRecipe(natStone[1] + "_smooth_wall_cut_polished", <item:${smoothWallItem}>, <item:${polishedItem}>);
    stoneCutter.addRecipe(natStone[1] + "_smooth_wall_cut_brick", <item:${smoothWallItem}>, <item:${brickItem}>);
    stoneCutter.addRecipe(natStone[1] + "_smooth_wall_cut", <item:${smoothWallItem}>, <item:${smoothItem}>);

    // ------------------------ Misc
    craftingTable.addShaped(natStone[1] + "chiseled", <item:${chiseledItem}> * 2, [
    [<item:${polishedItem}>],
    [<item:${polishedItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "chiseled_cut_cobble", <item:${chiseledItem}>, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "chiseled_cut_cobble_brick", <item:${chiseledItem}>, <item:${cobbleBrickItem}>);
    stoneCutter.addRecipe(natStone[1] + "chiseled_cut_nat", <item:${chiseledItem}>, <item:${natStoneItem}>);
    stoneCutter.addRecipe(natStone[1] + "chiseled_cut_polished", <item:${chiseledItem}>, <item:${polishedItem}>);
    stoneCutter.addRecipe(natStone[1] + "chiseled_cut_brick", <item:${chiseledItem}>, <item:${brickItem}>);

    craftingTable.addShaped(natStone[1] + "pillar", <item:${pillarItem}> * 3, [
    [<item:${polishedItem}>],
    [<item:${polishedItem}>],
    [<item:${polishedItem}>]
    ]);

    stoneCutter.addRecipe(natStone[1] + "pillar_cut_cobble", <item:${pillarItem}>, <item:${cobbleItem}>);
    stoneCutter.addRecipe(natStone[1] + "pillar_cut_cobble_brick", <item:${pillarItem}>, <item:${cobbleBrickItem}>);
    stoneCutter.addRecipe(natStone[1] + "pillar_cut_nat", <item:${pillarItem}>, <item:${natStoneItem}>);
    stoneCutter.addRecipe(natStone[1] + "pillar_cut_polished", <item:${pillarItem}>, <item:${polishedItem}>);
    stoneCutter.addRecipe(natStone[1] + "pillar_cut_brick", <item:${pillarItem}>, <item:${brickItem}>);

    craftingTable.addShaped(natStone[1] + "lamp", <item:${lampItem}> * 4, [
    [<item:minecraft:air>, <item:${polishedItem}>, <item:minecraft:air>],
    [<item:${polishedItem}>, <item:${glowstoneItem}>, <item:${polishedItem}>],
    [<item:minecraft:air>, <item:${polishedItem}>, <item:minecraft:air>]
    ]);

    craftingTable.addShapeless(natStone[1] + "plate", <item:${plateItem}> * 2, [
    <item:${polishedSlabItem}>, <item:minecraft:redstone>]);

    craftingTable.addShapeless(natStone[1] + "plate_better", <item:${plateItem}> * 4, [
    <item:${polishedSlabItem}>, <item:minecraft:redstone>, <item:fundamentallyfixed:spring>]);

    craftingTable.addShapeless(natStone[1] + "button", <item:${buttonItem}> * 4, [
    <item:${polishedItem}>, <item:minecraft:redstone>]);

    craftingTable.addShapeless(natStone[1] + "button_better", <item:${buttonItem}> * 8, [
    <item:${polishedItem}>, <item:minecraft:redstone>, <item:fundamentallyfixed:spring>]);
}