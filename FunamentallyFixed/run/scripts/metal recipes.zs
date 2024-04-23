import crafttweaker.api.recipe.StoneCutterManager;
import crafttweaker.api.recipe.FurnaceRecipeManager;

val aluminium = [["fundamentallyfixed", "aluminium_ingot"], ["fundamentallyfixed", "aluminium_nugget"], ["fundamentallyfixed", "aluminium_sheet"],
["fundamentallyfixed", "aluminium_block"], ["fundamentallyfixed", "aluminium_sheet_block"], ["fundamentallyfixed", "carved_aluminium"],
["fundamentallyfixed", "carved_aluminium_stairs"], ["fundamentallyfixed", "carved_aluminium_slab"], ["fundamentallyfixed", "carved_aluminium_wall"],
["fundamentallyfixed", "cut_aluminium"], ["fundamentallyfixed", "cut_aluminium_stairs"], ["fundamentallyfixed", "cut_aluminium_slab"],
["fundamentallyfixed", "cut_aluminium_wall"], ["fundamentallyfixed", "cubed_aluminium"], ["fundamentallyfixed", "cubed_aluminium_stairs"],
["fundamentallyfixed", "cubed_aluminium_slab"], ["fundamentallyfixed", "cubed_aluminium_wall"], ["fundamentallyfixed", "lined_aluminium"],
["fundamentallyfixed", "lined_aluminium_stairs"], ["fundamentallyfixed", "lined_aluminium_slab"], ["fundamentallyfixed", "lined_aluminium_wall"],
["fundamentallyfixed", "forging_fuels_zero"],
["fundamentallyfixed", "raw_aluminium_nugget"], ["fundamentallyfixed", "raw_aluminium"], ["fundamentallyfixed", "aluminium_dust"]] as string[][];

val copper = [["minecraft", "copper_ingot"], ["modestmining", "copper_nugget"], ["create", "copper_sheet"],
["minecraft", "copper_block"], ["copperandtuffbackport", "chiseled_copper"], ["alloyed", "bronze_block"],
["minecraft", "barrier"], ["minecraft", "barrier"], ["minecraft", "barrier"],
["minecraft", "cut_copper"], ["minecraft", "cut_copper_stairs"], ["minecraft", "cut_copper_slab"],
["minecraft", "barrier"], ["create", "copper_shingles"], ["create", "copper_shingle_stairs"],
["create", "copper_shingle_slab"], ["minecraft", "barrier"], ["create", "copper_tiles"],
["create", "copper_tile_stairs"], ["create", "copper_tile_slab"], ["minecraft", "barrier"],
["fundamentallyfixed", "forging_fuels_zero"],
["fundamentallyfixed", "raw_copper_nugget"], ["minecraft", "raw_copper"], ["modestmining", "copper_dust"]] as string[][];

val bronze = [["fundamentallyfixed", "bronze_ingot"], ["fundamentallyfixed", "bronze_nugget"], ["fundamentallyfixed", "bronze_sheet"],
["create", "brass_block"], ["create", "zinc_block"], ["fundamentallyfixed", "carved_bronze"],
["fundamentallyfixed", "carved_bronze_stairs"], ["fundamentallyfixed", "carved_bronze_slab"], ["fundamentallyfixed", "carved_bronze_wall"],
["fundamentallyfixed", "cut_bronze"], ["fundamentallyfixed", "cut_bronze_stairs"], ["fundamentallyfixed", "cut_bronze_slab"],
["fundamentallyfixed", "cut_bronze_wall"], ["fundamentallyfixed", "cubed_bronze"], ["fundamentallyfixed", "cubed_bronze_stairs"],
["fundamentallyfixed", "cubed_bronze_slab"], ["fundamentallyfixed", "cubed_bronze_wall"], ["fundamentallyfixed", "lined_bronze"],
["fundamentallyfixed", "lined_bronze_stairs"], ["fundamentallyfixed", "lined_bronze_slab"], ["fundamentallyfixed", "lined_bronze_wall"],
["fundamentallyfixed", "forging_fuels_zero"]] as string[][];

val iron = [["minecraft", "iron_ingot"], ["minecraft", "iron_nugget"], ["create", "iron_sheet"],
["minecraft", "iron_block"], ["fundamentallyfixed", "iron_sheet_block"], ["fundamentallyfixed", "carved_iron"],
["fundamentallyfixed", "carved_iron_stairs"], ["fundamentallyfixed", "carved_iron_slab"], ["fundamentallyfixed", "carved_iron_wall"],
["fundamentallyfixed", "cut_iron"], ["fundamentallyfixed", "cut_iron_stairs"], ["fundamentallyfixed", "cut_iron_slab"],
["fundamentallyfixed", "cut_iron_wall"], ["fundamentallyfixed", "cubed_iron"], ["fundamentallyfixed", "cubed_iron_stairs"],
["fundamentallyfixed", "cubed_iron_slab"], ["fundamentallyfixed", "cubed_iron_wall"], ["quark", "iron_plate"],
["quark", "iron_plate_stairs"], ["quark", "iron_plate_slab"], ["fundamentallyfixed", "lined_iron_wall"],
["fundamentallyfixed", "forging_fuels_zero"],
["fundamentallyfixed", "raw_iron_nugget"], ["minecraft", "raw_iron"], ["modestmining", "iron_dust"]] as string[][];

val lead = [["oreganized", "lead_ingot"], ["fundamentallyfixed", "raw_lead_nugget"], ["fundamentallyfixed", "lead_sheet"],
["oreganized", "lead_block"], ["fundamentallyfixed", "lead_sheet_block"], ["fundamentallyfixed", "carved_lead"],
["fundamentallyfixed", "carved_lead_stairs"], ["fundamentallyfixed", "carved_lead_slab"], ["fundamentallyfixed", "carved_lead_wall"],
["fundamentallyfixed", "cut_lead"], ["fundamentallyfixed", "cut_lead_stairs"], ["fundamentallyfixed", "cut_lead_slab"],
["fundamentallyfixed", "cut_lead_wall"], ["fundamentallyfixed", "cubed_lead"], ["fundamentallyfixed", "cubed_lead_stairs"],
["fundamentallyfixed", "cubed_lead_slab"], ["fundamentallyfixed", "cubed_lead_wall"], ["fundamentallyfixed", "lined_lead"],
["fundamentallyfixed", "lined_lead_stairs"], ["fundamentallyfixed", "lined_lead_slab"], ["fundamentallyfixed", "lined_lead_wall"],
["fundamentallyfixed", "forging_fuels_zero"],
["oreganized", "lead_nugget"], ["oreganized", "raw_lead"], ["fundamentallyfixed", "lead_dust"]] as string[][];

val steel = [["modestmining", "steel_ingot"], ["modestmining", "steel_nugget"], ["fundamentallyfixed", "steel_sheet"],
["modestmining", "steel_block"], ["alloyed", "steel_block"], ["quark", "rusty_iron_plate"],
["quark", "rusty_iron_plate_stairs"], ["quark", "rusty_iron_plate_slab"], ["fundamentallyfixed", "carved_steel_wall"],
["fundamentallyfixed", "cut_steel"], ["fundamentallyfixed", "cut_steel_stairs"], ["fundamentallyfixed", "cut_steel_slab"],
["fundamentallyfixed", "cut_steel_wall"], ["fundamentallyfixed", "cubed_steel"], ["fundamentallyfixed", "cubed_steel_stairs"],
["fundamentallyfixed", "cubed_steel_slab"], ["fundamentallyfixed", "cubed_steel_wall"], ["fundamentallyfixed", "lined_steel"],
["fundamentallyfixed", "lined_steel_stairs"], ["fundamentallyfixed", "lined_steel_slab"], ["fundamentallyfixed", "lined_steel_wall"],
["fundamentallyfixed", "forging_fuels_zero"]] as string[][];

val gold = [["minecraft", "gold_ingot"], ["minecraft", "gold_nugget"], ["create", "golden_sheet"],
["minecraft", "gold_block"], ["fundamentallyfixed", "gold_sheet_block"], ["fundamentallyfixed", "carved_gold"],
["fundamentallyfixed", "carved_gold_stairs"],["fundamentallyfixed", "carved_gold_slab"], ["fundamentallyfixed", "carved_gold_wall"],
["fundamentallyfixed", "cut_gold"], ["fundamentallyfixed", "cut_gold_stairs"], ["fundamentallyfixed", "cut_gold_slab"],
["fundamentallyfixed", "cut_gold_wall"], ["fundamentallyfixed", "cubed_gold"], ["fundamentallyfixed", "cubed_gold_stairs"],
["fundamentallyfixed", "cubed_gold_slab"], ["fundamentallyfixed", "cubed_gold_wall"], ["fundamentallyfixed", "lined_gold"],
["fundamentallyfixed", "lined_gold_stairs"], ["fundamentallyfixed", "lined_gold_slab"], ["fundamentallyfixed", "lined_gold_wall"],
["fundamentallyfixed", "forging_fuels_zero"],
["fundamentallyfixed", "raw_gold_nugget"], ["minecraft", "raw_gold"], ["modestmining", "gold_dust"]] as string[][];

val silver = [["oreganized", "silver_ingot"], ["oreganized", "silver_nugget"], ["fundamentallyfixed", "silver_sheet"],
["oreganized", "silver_block"], ["fundamentallyfixed", "silver_sheet_block"], ["fundamentallyfixed", "carved_silver"],
["fundamentallyfixed", "carved_silver_stairs"], ["fundamentallyfixed", "carved_silver_slab"], ["fundamentallyfixed", "carved_silver_wall"],
["fundamentallyfixed", "cut_silver"], ["fundamentallyfixed", "cut_silver_stairs"], ["fundamentallyfixed", "cut_silver_slab"],
["fundamentallyfixed", "cut_silver_wall"], ["fundamentallyfixed", "cubed_silver"], ["fundamentallyfixed", "cubed_silver_stairs"],
["fundamentallyfixed", "cubed_silver_slab"], ["fundamentallyfixed", "cubed_silver_wall"], ["fundamentallyfixed", "lined_silver"],
["fundamentallyfixed", "lined_silver_stairs"], ["fundamentallyfixed", "lined_silver_slab"], ["fundamentallyfixed", "lined_silver_wall"],
["fundamentallyfixed", "forging_fuels_zero"],
["fundamentallyfixed", "raw_silver_nugget"], ["oreganized", "raw_silver"], ["fundamentallyfixed", "silver_dust"]] as string[][];

val stoldum = [["fundamentallyfixed", "stoldum_ingot"], ["fundamentallyfixed", "stoldum_nugget"], ["fundamentallyfixed", "stoldum_sheet"],
["fundamentallyfixed", "stoldum_block"], ["fundamentallyfixed", "stoldum_sheet_block"], ["fundamentallyfixed", "carved_stoldum"],
["fundamentallyfixed", "carved_stoldum_stairs"], ["fundamentallyfixed", "carved_stoldum_slab"], ["fundamentallyfixed", "carved_stoldum_wall"],
["fundamentallyfixed", "cut_stoldum"], ["fundamentallyfixed", "cut_stoldum_stairs"], ["fundamentallyfixed", "cut_stoldum_slab"],
["fundamentallyfixed", "cut_stoldum_wall"], ["fundamentallyfixed", "cubed_stoldum"], ["fundamentallyfixed", "cubed_stoldum_stairs"],
["fundamentallyfixed", "cubed_stoldum_slab"], ["fundamentallyfixed", "cubed_stoldum_wall"], ["fundamentallyfixed", "lined_stoldum"],
["fundamentallyfixed", "lined_stoldum_stairs"], ["fundamentallyfixed", "lined_stoldum_slab"], ["fundamentallyfixed", "lined_stoldum_wall"],
["fundamentallyfixed", "forging_fuels_zero"]] as string[][];

val prismarite = [["modestmining", "prismarite_ingot"], ["modestmining", "prismarite_nugget"], ["fundamentallyfixed", "prismarite_sheet"],
["modestmining", "prismarite_block"], ["fundamentallyfixed", "prismarite_sheet_block"], ["fundamentallyfixed", "carved_prismarite"],
["fundamentallyfixed", "carved_prismarite_stairs"], ["fundamentallyfixed", "carved_prismarite_slab"], ["fundamentallyfixed", "carved_prismarite_wall"],
["fundamentallyfixed", "cut_prismarite"], ["fundamentallyfixed", "cut_prismarite_stairs"], ["fundamentallyfixed", "cut_prismarite_slab"],
["fundamentallyfixed", "cut_prismarite_wall"], ["fundamentallyfixed", "cubed_prismarite"], ["fundamentallyfixed", "cubed_prismarite_stairs"],
["fundamentallyfixed", "cubed_prismarite_slab"], ["fundamentallyfixed", "cubed_prismarite_wall"], ["fundamentallyfixed", "lined_prismarite"],
["fundamentallyfixed", "lined_prismarite_stairs"], ["fundamentallyfixed", "lined_prismarite_slab"], ["fundamentallyfixed", "lined_prismarite_wall"],
["fundamentallyfixed", "forging_fuels_zero"]] as string[][];

val netherite = [["minecraft", "netherite_ingot"], ["oreganized", "netherite_nugget"], ["fundamentallyfixed", "netherite_sheet"],
["minecraft", "netherite_block"], ["fundamentallyfixed", "netherite_sheet_block"], ["fundamentallyfixed", "carved_netherite"],
["fundamentallyfixed", "carved_netherite_stairs"], ["fundamentallyfixed", "carved_netherite_slab"], ["fundamentallyfixed", "carved_netherite_wall"],
["fundamentallyfixed", "cut_netherite"], ["fundamentallyfixed", "cut_netherite_stairs"], ["fundamentallyfixed", "cut_netherite_slab"],
["fundamentallyfixed", "cut_netherite_wall"], ["fundamentallyfixed", "cubed_netherite"], ["fundamentallyfixed", "cubed_netherite_stairs"],
["fundamentallyfixed", "cubed_netherite_slab"], ["fundamentallyfixed", "cubed_netherite_wall"], ["fundamentallyfixed", "lined_netherite"],
["fundamentallyfixed", "lined_netherite_stairs"], ["fundamentallyfixed", "lined_netherite_slab"], ["fundamentallyfixed", "lined_netherite_wall"],
["fundamentallyfixed", "forging_fuels_zero"]] as string[][];

val electrum = [["oreganized", "electrum_ingot"], ["oreganized", "electrum_nugget"], ["fundamentallyfixed", "electrum_sheet"],
["oreganized", "electrum_block"], ["fundamentallyfixed", "electrum_sheet_block"], ["fundamentallyfixed", "carved_electrum"],
["fundamentallyfixed", "carved_electrum_stairs"], ["fundamentallyfixed", "carved_electrum_slab"], ["fundamentallyfixed", "carved_electrum_wall"],
["fundamentallyfixed", "cut_electrum"], ["fundamentallyfixed", "cut_electrum_stairs"], ["fundamentallyfixed", "cut_electrum_slab"],
["fundamentallyfixed", "cut_electrum_wall"], ["fundamentallyfixed", "cubed_electrum"], ["fundamentallyfixed", "cubed_electrum_stairs"],
["fundamentallyfixed", "cubed_electrum_slab"], ["fundamentallyfixed", "cubed_electrum_wall"], ["fundamentallyfixed", "lined_electrum"],
["fundamentallyfixed", "lined_electrum_stairs"], ["fundamentallyfixed", "lined_electrum_slab"], ["fundamentallyfixed", "lined_electrum_wall"],
["fundamentallyfixed", "forging_fuels_zero"]] as string[][];

val chlorophite = [["fundamentallyfixed", "chlorophite_ingot"], ["fundamentallyfixed", "chlorophite_nugget"], ["fundamentallyfixed", "chlorophite_sheet"],
["savage_and_ravage", "blast_proof_plates"], ["fundamentallyfixed", "chlorophite_sheet_block"], ["fundamentallyfixed", "carved_chlorophite"],
["fundamentallyfixed", "carved_chlorophite_stairs"], ["fundamentallyfixed", "carved_chlorophite_slab"], ["fundamentallyfixed", "carved_chlorophite_wall"],
["fundamentallyfixed", "cut_chlorophite"], ["fundamentallyfixed", "cut_chlorophite_stairs"], ["fundamentallyfixed", "cut_chlorophite_slab"],
["fundamentallyfixed", "cut_chlorophite_wall"], ["fundamentallyfixed", "cubed_chlorophite"], ["fundamentallyfixed", "cubed_chlorophite_stairs"],
["fundamentallyfixed", "cubed_chlorophite_slab"], ["fundamentallyfixed", "cubed_chlorophite_wall"], ["fundamentallyfixed", "lined_chlorophite"],
["fundamentallyfixed", "lined_chlorophite_stairs"], ["fundamentallyfixed", "lined_chlorophite_slab"], ["fundamentallyfixed", "lined_chlorophite_wall"],
["fundamentallyfixed", "forging_fuels_zero"]] as string[][];

val mythril = [["fundamentallyfixed", "mythril_ingot"], ["fundamentallyfixed", "mythril_nugget"], ["fundamentallyfixed", "mythril_sheet"],
["fundamentallyfixed", "mythril_block"], ["fundamentallyfixed", "mythril_sheet_block"], ["fundamentallyfixed", "carved_mythril"],
["fundamentallyfixed", "carved_mythril_stairs"], ["fundamentallyfixed", "carved_mythril_slab"], ["fundamentallyfixed", "carved_mythril_wall"],
["fundamentallyfixed", "cut_mythril"], ["fundamentallyfixed", "cut_mythril_stairs"], ["fundamentallyfixed", "cut_mythril_slab"],
["fundamentallyfixed", "cut_mythril_wall"], ["fundamentallyfixed", "cubed_mythril"], ["fundamentallyfixed", "cubed_mythril_stairs"],
["fundamentallyfixed", "cubed_mythril_slab"], ["fundamentallyfixed", "cubed_mythril_wall"], ["fundamentallyfixed", "lined_mythril"],
["fundamentallyfixed", "lined_mythril_stairs"], ["fundamentallyfixed", "lined_mythril_slab"], ["fundamentallyfixed", "lined_mythril_wall"],
["fundamentallyfixed", "forging_fuels_zero"]] as string[][];

val hallowed = [["fundamentallyfixed", "hallowed_ingot"], ["fundamentallyfixed", "hallowed_nugget"], ["fundamentallyfixed", "hallowed_sheet"],
["fundamentallyfixed", "hallowed_block"], ["fundamentallyfixed", "hallowed_sheet_block"], ["fundamentallyfixed", "carved_hallowed"],
["fundamentallyfixed", "carved_hallowed_stairs"], ["fundamentallyfixed", "carved_hallowed_slab"], ["fundamentallyfixed", "carved_hallowed_wall"],
["fundamentallyfixed", "cut_hallowed"], ["fundamentallyfixed", "cut_hallowed_stairs"], ["fundamentallyfixed", "cut_hallowed_slab"],
["fundamentallyfixed", "cut_hallowed_wall"], ["fundamentallyfixed", "cubed_hallowed"], ["fundamentallyfixed", "cubed_hallowed_stairs"],
["fundamentallyfixed", "cubed_hallowed_slab"], ["fundamentallyfixed", "cubed_hallowed_wall"], ["fundamentallyfixed", "lined_hallowed"],
["fundamentallyfixed", "lined_hallowed_stairs"], ["fundamentallyfixed", "lined_hallowed_slab"], ["fundamentallyfixed", "lined_hallowed_wall"],
["fundamentallyfixed", "forging_fuels_zero"]] as string[][];

val gravitite = [["fundamentallyfixed", "gravitite_ingot"], ["fundamentallyfixed", "gravitite_nugget"], ["fundamentallyfixed", "gravitite_sheet"],
["fundamentallyfixed", "gravitite_block"], ["fundamentallyfixed", "gravitite_sheet_block"], ["fundamentallyfixed", "carved_gravitite"],
["fundamentallyfixed", "carved_gravitite_stairs"], ["fundamentallyfixed", "carved_gravitite_slab"], ["fundamentallyfixed", "carved_gravitite_wall"],
["fundamentallyfixed", "cut_gravitite"], ["fundamentallyfixed", "cut_gravitite_stairs"], ["fundamentallyfixed", "cut_gravitite_slab"],
["fundamentallyfixed", "cut_gravitite_wall"], ["fundamentallyfixed", "cubed_gravitite"], ["fundamentallyfixed", "cubed_gravitite_stairs"],
["fundamentallyfixed", "cubed_gravitite_slab"], ["fundamentallyfixed", "cubed_gravitite_wall"], ["fundamentallyfixed", "lined_gravitite"],
["fundamentallyfixed", "lined_gravitite_stairs"], ["fundamentallyfixed", "lined_gravitite_slab"], ["fundamentallyfixed", "lined_gravitite_wall"],
["fundamentallyfixed", "forging_fuels_zero"]] as string[][];

val voidendum = [["fundamentallyfixed", "voidendum_ingot"], ["fundamentallyfixed", "voidendum_nugget"], ["fundamentallyfixed", "voidendum_sheet"],
["fundamentallyfixed", "voidendum_block"], ["fundamentallyfixed", "voidendum_sheet_block"], ["fundamentallyfixed", "carved_voidendum"],
["fundamentallyfixed", "carved_voidendum_stairs"], ["fundamentallyfixed", "carved_voidendum_slab"], ["fundamentallyfixed", "carved_voidendum_wall"],
["fundamentallyfixed", "cut_voidendum"], ["fundamentallyfixed", "cut_voidendum_stairs"], ["fundamentallyfixed", "cut_voidendum_slab"],
["fundamentallyfixed", "cut_voidendum_wall"], ["fundamentallyfixed", "cubed_voidendum"], ["fundamentallyfixed", "cubed_voidendum_stairs"],
["fundamentallyfixed", "cubed_voidendum_slab"], ["fundamentallyfixed", "cubed_voidendum_wall"], ["fundamentallyfixed", "lined_voidendum"],
["fundamentallyfixed", "lined_voidendum_stairs"], ["fundamentallyfixed", "lined_voidendum_slab"], ["fundamentallyfixed", "lined_voidendum_wall"],
["fundamentallyfixed", "forging_fuels_zero"]] as string[][];


val metalSets = [aluminium, copper, bronze, iron, lead, steel, gold, silver, stoldum, prismarite, netherite, electrum, chlorophite, mythril, hallowed, gravitite, voidendum] as string[][][];
val oreSets = [aluminium, copper, iron, lead, gold, silver] as string[][][];


for metalSet in metalSets {
  val ingot = metalSet[0];
  val ingotItem = ingot[0] + ":" + ingot[1];
  val nugget = metalSet[1];
  val nuggetItem = nugget[0] + ":" + nugget[1];
  val sheet = metalSet[2];
  val sheetItem = sheet[0] + ":" + sheet[1];
  val block = metalSet[3];
  val blockItem = block[0] + ":" + block[1];
  val sheetBlock = metalSet[4];
  val sheetBlockItem = sheetBlock[0] + ":" + sheetBlock[1];
  val carved = metalSet[5];
  val carvedItem = carved[0] + ":" + carved[1];
  val carvedStair = metalSet[6];
  val carvedStairItem = carvedStair[0] + ":" + carvedStair[1];
  val carvedSlab = metalSet[7];
  val carvedSlabItem = carvedSlab[0] + ":" + carvedSlab[1];
  val carvedWall = metalSet[8];
  val carvedWallItem = carvedWall[0] + ":" + carvedWall[1];
  val cut = metalSet[9];
  val cutItem = cut[0] + ":" + cut[1];
  val cutStair = metalSet[10];
  val cutStairItem = cutStair[0] + ":" + cutStair[1];
  val cutSlab = metalSet[11];
  val cutSlabItem = cutSlab[0] + ":" + cutSlab[1];
  val cutWall = metalSet[12];
  val cutWallItem = cutWall[0] + ":" + cutWall[1];
  val cubed = metalSet[13];
  val cubedItem = cubed[0] + ":" + cubed[1];
  val cubedStair = metalSet[14];
  val cubedStairItem = cubedStair[0] + ":" + cubedStair[1];
  val cubedSlab = metalSet[15];
  val cubedSlabItem = cubedSlab[0] + ":" + cubedSlab[1];
  val cubedWall = metalSet[16];
  val cubedWallItem = cubedWall[0] + ":" + cubedWall[1];
  val lined = metalSet[17];
  val linedItem = lined[0] + ":" + lined[1];
  val linedStair = metalSet[18];
  val linedStairItem = linedStair[0] + ":" + linedStair[1];
  val linedSlab = metalSet[19];
  val linedSlabItem = linedSlab[0] + ":" + linedSlab[1];
  val linedWall = metalSet[20];
  val linedWallItem = linedWall[0] + ":" + linedWall[1];
  val fuel = metalSet[21];
  val fuelTag = fuel[0] + ":" + fuel[1];


  // ------------------------ Carved
  craftingTable.addShaped(carved[1] + "_from_block", <item:${carvedItem}> * 8, [
  [<item:${blockItem}>, <item:${blockItem}>],
  [<item:${blockItem}>, <item:${blockItem}>]
  ]);

  stoneCutter.addRecipe(carved[1] + "_from_block_stonecut", <item:${carvedItem}> * 2, <item:${blockItem}>);


  craftingTable.addShaped(carvedStair[1] + "_from_block", <item:${carvedStairItem}> * 8, [
  [<item:${blockItem}>, <item:minecraft:air>],
  [<item:${blockItem}>, <item:${blockItem}>]
  ]);

  craftingTable.addShaped(carvedStair[1] + "_from_carved", <item:${carvedStairItem}> * 4, [
  [<item:${carvedItem}>, <item:minecraft:air>],
  [<item:${carvedItem}>, <item:${carvedItem}>]
  ]);

  stoneCutter.addRecipe(carvedStair[1] + "_from_block_stonecut", <item:${carvedStairItem}> * 2, <item:${blockItem}>);
  stoneCutter.addRecipe(carvedStair[1] + "_from_carved_stonecut", <item:${carvedStairItem}>, <item:${carvedItem}>);

  craftingTable.addShaped(carvedSlab[1] + "_from_block", <item:${carvedSlabItem}> * 8, [
  [<item:${blockItem}>, <item:${blockItem}>]
  ]);

  craftingTable.addShaped(carvedSlab[1] + "_from_carved", <item:${carvedSlabItem}> * 4, [
  [<item:${carvedItem}>, <item:${carvedItem}>]
  ]);

  stoneCutter.addRecipe(carvedSlab[1] + "_from_block_stonecut", <item:${carvedSlabItem}> * 4, <item:${blockItem}>);
  stoneCutter.addRecipe(carvedSlab[1] + "_from_carved_stonecut", <item:${carvedSlabItem}> * 2, <item:${carvedItem}>);

  craftingTable.addShaped(carvedWall[1] + "_from_block", <item:${carvedWallItem}> * 6, [
  [<item:${blockItem}>, <item:${blockItem}>, <item:${blockItem}>]
  ]);

  stoneCutter.addRecipe(carvedWall[1] + "_from_block_stonecut", <item:${carvedWallItem}> * 2, <item:${blockItem}>);
  stoneCutter.addRecipe(carvedWall[1] + "_from_carved_stonecut", <item:${carvedWallItem}>, <item:${carvedItem}>);

  craftingTable.addShaped(carvedWall[1] + "_from_carved", <item:${carvedWallItem}> * 3, [
  [<item:${carvedItem}>, <item:${carvedItem}>, <item:${carvedItem}>]
  ]);

  // ------------------------ Cut
  craftingTable.addShaped(cut[1] + "_from_carved", <item:${cutItem}> * 4, [
  [<item:${carvedItem}>, <item:${carvedItem}>],
  [<item:${carvedItem}>, <item:${carvedItem}>]
  ]);

  stoneCutter.addRecipe(cut[1] + "_from_carved_stonecut", <item:${cutItem}>, <item:${carvedItem}>);
  stoneCutter.addRecipe(cut[1] + "_from_block_stonecut", <item:${cutItem}> * 2, <item:${blockItem}>);


  craftingTable.addShaped(cutStair[1] + "_from_cut", <item:${cutStairItem}> * 4, [
  [<item:${cutItem}>, <item:minecraft:air>],
  [<item:${cutItem}>, <item:${cutItem}>]
  ]);

  stoneCutter.addRecipe(cutStair[1] + "_from_cut_stonecut", <item:${cutStairItem}>, <item:${cutItem}>);
  stoneCutter.addRecipe(cutStair[1] + "_from_carved_stonecut", <item:${cutStairItem}>, <item:${carvedItem}>);
  stoneCutter.addRecipe(cutStair[1] + "_from_block_stonecut", <item:${cutStairItem}> * 2, <item:${blockItem}>);

  craftingTable.addShaped(cutSlab[1] + "_from_cut", <item:${cutSlabItem}> * 4, [
  [<item:${cutItem}>, <item:${cutItem}>]
  ]);

  stoneCutter.addRecipe(cutSlab[1] + "_from_cut_stonecut", <item:${cutSlabItem}> * 2, <item:${cutItem}>);
  stoneCutter.addRecipe(cutSlab[1] + "_from_carved_stonecut", <item:${cutSlabItem}> * 2, <item:${carvedItem}>);
  stoneCutter.addRecipe(cutSlab[1] + "_from_block_stonecut", <item:${cutSlabItem}> * 4, <item:${blockItem}>);

  craftingTable.addShaped(cutWall[1] + "_from_cut", <item:${cutWallItem}> * 3, [
  [<item:${cutItem}>, <item:${cutItem}>, <item:${cutItem}>]
  ]);

  stoneCutter.addRecipe(cutWall[1] + "_from_cut_stonecut", <item:${cutWallItem}>, <item:${cutItem}>);
  stoneCutter.addRecipe(cutWall[1] + "_from_carved_stonecut", <item:${cutWallItem}>, <item:${carvedItem}>);
  stoneCutter.addRecipe(cutWall[1] + "_from_block_stonecut", <item:${cutWallItem}> * 2, <item:${blockItem}>);


  // ------------------------ Cubed
  craftingTable.addShaped(cubed[1] + "_from_cut", <item:${cubedItem}> * 4, [
  [<item:${cutItem}>, <item:${cutItem}>],
  [<item:${cutItem}>, <item:${cutItem}>]
  ]);

  stoneCutter.addRecipe(cubed[1] + "_from_cut_stonecut", <item:${cubedItem}>, <item:${cutItem}>);
  stoneCutter.addRecipe(cubed[1] + "_from_carved_stonecut", <item:${cubedItem}>, <item:${carvedItem}>);
  stoneCutter.addRecipe(cubed[1] + "_from_block_stonecut", <item:${cubedItem}> * 2, <item:${blockItem}>);


  craftingTable.addShaped(cubedStair[1] + "_from_cut", <item:${cubedStairItem}> * 4, [
  [<item:${cubedItem}>, <item:minecraft:air>],
  [<item:${cubedItem}>, <item:${cubedItem}>]
  ]);

  stoneCutter.addRecipe(cubedStair[1] + "_from_cubed_stonecut", <item:${cubedStairItem}>, <item:${cubedItem}>);
  stoneCutter.addRecipe(cubedStair[1] + "_from_cut_stonecut", <item:${cubedStairItem}>, <item:${cutItem}>);
  stoneCutter.addRecipe(cubedStair[1] + "_from_carved_stonecut", <item:${cubedStairItem}>, <item:${carvedItem}>);
  stoneCutter.addRecipe(cubedStair[1] + "_from_block_stonecut", <item:${cubedStairItem}> * 2, <item:${blockItem}>);

  craftingTable.addShaped(cubedSlab[1] + "_from_cut", <item:${cubedSlabItem}> * 4, [
  [<item:${cubedItem}>, <item:${cubedItem}>]
  ]);

  stoneCutter.addRecipe(cubedSlab[1] + "_from_cubed_stonecut", <item:${cubedSlabItem}> * 2, <item:${cubedItem}>);
  stoneCutter.addRecipe(cubedSlab[1] + "_from_cut_stonecut", <item:${cubedSlabItem}> * 2, <item:${cutItem}>);
  stoneCutter.addRecipe(cubedSlab[1] + "_from_carved_stonecut", <item:${cubedSlabItem}> * 2, <item:${carvedItem}>);
  stoneCutter.addRecipe(cubedSlab[1] + "_from_block_stonecut", <item:${cubedSlabItem}> * 4, <item:${blockItem}>);

  craftingTable.addShaped(cubedWall[1] + "_from_cut", <item:${cubedWallItem}> * 3, [
  [<item:${cubedItem}>, <item:${cubedItem}>, <item:${cubedItem}>]
  ]);

  stoneCutter.addRecipe(cubedWall[1] + "_from_cubed_stonecut", <item:${cubedWallItem}>, <item:${cubedItem}>);
  stoneCutter.addRecipe(cubedWall[1] + "_from_cut_stonecut", <item:${cubedWallItem}>, <item:${cutItem}>);
  stoneCutter.addRecipe(cubedWall[1] + "_from_carved_stonecut", <item:${cubedWallItem}>, <item:${carvedItem}>);
  stoneCutter.addRecipe(cubedWall[1] + "_from_block_stonecut", <item:${cubedWallItem}> * 2, <item:${blockItem}>);


  // ------------------------ Lined
  craftingTable.addShaped(lined[1] + "_from_cut", <item:${linedItem}> * 4, [
  [<item:${cubedItem}>, <item:${cubedItem}>],
  [<item:${cubedItem}>, <item:${cubedItem}>]
  ]);

  stoneCutter.addRecipe(lined[1] + "_from_cut_stonecut", <item:${linedItem}>, <item:${cubedItem}>);
  stoneCutter.addRecipe(lined[1] + "_from_cut_stonecut", <item:${linedItem}>, <item:${cutItem}>);
  stoneCutter.addRecipe(lined[1] + "_from_carved_stonecut", <item:${linedItem}>, <item:${carvedItem}>);
  stoneCutter.addRecipe(lined[1] + "_from_block_stonecut", <item:${linedItem}> * 2, <item:${blockItem}>);


  craftingTable.addShaped(linedStair[1] + "_from_cut", <item:${linedStairItem}> * 4, [
  [<item:${linedItem}>, <item:minecraft:air>],
  [<item:${linedItem}>, <item:${linedItem}>]
  ]);

  stoneCutter.addRecipe(linedStair[1] + "_from_lined_stonecut", <item:${linedStairItem}>, <item:${linedItem}>);
  stoneCutter.addRecipe(linedStair[1] + "_from_cubed_stonecut", <item:${linedStairItem}>, <item:${cubedItem}>);
  stoneCutter.addRecipe(linedStair[1] + "_from_cut_stonecut", <item:${linedStairItem}>, <item:${cutItem}>);
  stoneCutter.addRecipe(linedStair[1] + "_from_carved_stonecut", <item:${linedStairItem}>, <item:${carvedItem}>);
  stoneCutter.addRecipe(linedStair[1] + "_from_block_stonecut", <item:${linedStairItem}> * 2, <item:${blockItem}>);

  craftingTable.addShaped(linedSlab[1] + "_from_cut", <item:${linedSlabItem}> * 4, [
  [<item:${linedItem}>, <item:${linedItem}>]
  ]);

  stoneCutter.addRecipe(linedSlab[1] + "_from_lined_stonecut", <item:${linedSlabItem}> * 2, <item:${linedItem}>);
  stoneCutter.addRecipe(linedSlab[1] + "_from_cubed_stonecut", <item:${linedSlabItem}> * 2, <item:${cubedItem}>);
  stoneCutter.addRecipe(linedSlab[1] + "_from_cut_stonecut", <item:${linedSlabItem}> * 2, <item:${cutItem}>);
  stoneCutter.addRecipe(linedSlab[1] + "_from_carved_stonecut", <item:${linedSlabItem}> * 2, <item:${carvedItem}>);
  stoneCutter.addRecipe(linedSlab[1] + "_from_block_stonecut", <item:${linedSlabItem}> * 4, <item:${blockItem}>);

  craftingTable.addShaped(linedWall[1] + "_from_cut", <item:${linedWallItem}> * 3, [
  [<item:${linedItem}>, <item:${linedItem}>, <item:${linedItem}>]
  ]);

  stoneCutter.addRecipe(linedWall[1] + "_from_lined_stonecut", <item:${linedWallItem}>, <item:${linedItem}>);
  stoneCutter.addRecipe(linedWall[1] + "_from_cubed_stonecut", <item:${linedWallItem}>, <item:${cubedItem}>);
  stoneCutter.addRecipe(linedWall[1] + "_from_cut_stonecut", <item:${linedWallItem}>, <item:${cutItem}>);
  stoneCutter.addRecipe(linedWall[1] + "_from_carved_stonecut", <item:${linedWallItem}>, <item:${carvedItem}>);
  stoneCutter.addRecipe(linedWall[1] + "_from_block_stonecut", <item:${linedWallItem}> * 2, <item:${blockItem}>);
}



for oreSet in oreSets {
  val Oingot = oreSet[0];
  val OingotItem = Oingot[0] + ":" + Oingot[1];
  val Onugget = oreSet[1];
  val OnuggetItem = Onugget[0] + ":" + Onugget[1];
  val Osheet = oreSet[2];
  val OsheetItem = Osheet[0] + ":" + Osheet[1];
  val Oblock = oreSet[3];
  val OblockItem = Oblock[0] + ":" + Oblock[1];
  val OsheetBlock = oreSet[4];
  val OsheetBlockItem = OsheetBlock[0] + ":" + OsheetBlock[1];
  val Ofuel = oreSet[21];
  val OfuelTag = Ofuel[0] + ":" + Ofuel[1];
  val OrawNugget = oreSet[22];
  val OrawNuggetItem = OrawNugget[0] + ":" + OrawNugget[1];
  val Oraw = oreSet[23];
  val OrawItem = Oraw[0] + ":" + Oraw[1];
  val Odust = oreSet[24];
  val OdustItem = Odust[0] + ":" + Odust[1];

  // Ores

  furnace.addRecipe(Oingot[1] + "_from_" + Oraw[1], <item:${OingotItem}>, <item:${OrawItem}>, 0.4, 200);
  furnace.addRecipe(Oingot[1] + "_from_" + Odust[1], <item:${OingotItem}>, <item:${OdustItem}>, 0.2, 200);
  furnace.addRecipe(Onugget[1] + "_from_" + OrawNugget[1], <item:${OnuggetItem}>, <item:${OrawNuggetItem}>, 0.04, 50);
  furnace.addRecipe(Oingot[1] + "_from_" + Osheet[1], <item:${OingotItem}>, <item:${OsheetItem}>, 0.4, 200);
}