import mods.farmersdelight.CookingPot;
import crafttweaker.api.recipe.StoneCutterManager;
//import mods.clayworks.Kiln;




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

    var anyTerracottaPillarName = "fundamentallyfixed:terracottas_pillars";
    var anyTerracottaPillarTag = <tagmanager:items>.tag(anyTerracottaPillarName);
    var terracottaPillarName = "fundamentallyfixed:" + colour + "_terracotta_pillar";
    var terracottaPillarItem = <item:${terracottaPillarName}>;

    var anyShinglesWallName = "fundamentallyfixed:terracottas_walls";
    var anyShinglesWallTag = <tagmanager:items>.tag(anyShinglesWallName);
    var shinglesWallName = "clayworks:" + colour + "_terracotta_wall";
    var shinglesWallItem = <item:${shinglesWallName}>;

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

    //craftingTable.addShaped(colour + "_shingles", shinglesItem * 2, [
    //[terracottaItem],
    //[terracottaItem]]);

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

    //craftingTable.addShaped(colour + "_terra_bricks", terracottaBricksItem * 2, [
    //[terracottaItem, terracottaItem],
    //[terracottaItem, terracottaItem]]);

    //craftingTable.addShaped(colour + "chiseled", chiseledTerracottaBricksItem * 2, [
    //[terracottaItem],
    //[terracottaItem]
    //]);

    //stoneCutter.addRecipe(colour + "cut_chiseled_", chiseledTerracottaBricksItem, terracottaItem);
    //stoneCutter.addRecipe(colour + "cut_chiseled_shingle", chiseledTerracottaBricksItem, shinglesItem);
    //stoneCutter.addRecipe(colour + "cut_chiseled_brick", chiseledTerracottaBricksItem, terracottaBricksItem);

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

    //craftingTable.addShaped(colour + "_candle_holder", candleHolderItem, [
    //[candleItem],
    //[<item:minecraft:iron_ingot>]]);

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
    //var terracottaStairsList = [colour + "_terracotta_stairs_dyed", terracottaStairsName, anyTerracottaStairsName] as string[];
    var terracottaPillarList = [colour + "_terracotta_pillar_dyed", terracottaPillarName, anyTerracottaPillarName] as string[];
    //var shingleWallList = [colour + "_shingle_wall_dyed", terracottaWallName, anyTerracottaWallName] as string[];
    var shinglesList = [colour + "_shingles_dyed", shinglesName, anyShinglesName] as string[];
    var shinglesStairsList = [colour + "_shingles_stairs_dyed", shinglesStairsName, anyShinglesStairsName] as string[];
    var shinglesSlabList = [colour + "_shingles_slab_dyed", shinglesSlabName, anyShinglesSlabName] as string[];
    var shingleWallList = [colour + "_shingle_wall_dyed", shinglesWallName, anyShinglesWallName] as string[];
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

    var dyeablesList = [bedrollList, bedList, hammockList, woolList, carpetList, seatList, concretePowderList, terracottaList, terracottaPillarList, shingleWallList,
    shinglesList, shinglesStairsList, shinglesSlabList, terracottaBricksList, terracottaBricksStairsList,
    terracottaBricksSlabList, terracottaBricksWallList, chiseledTerracottaBricksWallList, glassList, shulkerList, railList, signalList, bannerList,
    flagList, sackList, candleList, candleHolderList, sofaList, tallStoolList, LampList, CurtainList, SignList, TrappedPresentList] as string[][];

    var dyeablesListMulti = [bedrollList, bedList, hammockList, woolList, carpetList, seatList, concretePowderList, terracottaList, terracottaPillarList, shingleWallList,
    shinglesList, shinglesStairsList, shinglesSlabList, terracottaBricksList, terracottaBricksStairsList,
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

