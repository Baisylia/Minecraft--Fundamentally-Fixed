import crafttweaker.api.resource.ResourceLocation;
import mods.jeitweaker.Jei;
import crafttweaker.api.loot.modifier.LootModifierManager;

<recipetype:create:haunting>.removeAll();
<recipetype:create:crushing>.removeAll();
<recipetype:create:deploying>.removeAll();
<recipetype:create:mixing>.removeAll();
<recipetype:create:compacting>.removeAll();
<recipetype:create:sandpaper_polishing>.removeAll();
<recipetype:create:cutting>.removeAll();
<recipetype:create:item_application>.removeAll();
<recipetype:woodworks:sawing>.removeAll();
<recipetype:miningmaster:forging>.removeAll();

recipes.removeByModid("sullysmod", (name as string) => {
return name == "polished_andesite";
});

Jei.hideCategory(<resource:create:spout_filling>);
Jei.hideCategory(<resource:create:automatic_brewing>);
Jei.hideCategory(<resource:create:automatic_shaped>);
Jei.hideCategory(<resource:create:automatic_packing>);
Jei.hideCategory(<resource:create:crushing>);
Jei.hideCategory(<resource:create:automatic_shapeless>);
Jei.hideCategory(<resource:create:item_application>);
Jei.hideCategory(<resource:create:mystery_conversion>);
Jei.hideCategory(<resource:create:mechanical_crafting>);
Jei.hideCategory(<resource:create:block_cutting>);
//Jei.hideCategory(<resource:create:fan_blasting>);
//Jei.hideCategory(<resource:create:sequenced_assembly>);
Jei.hideCategory(<resource:minecraft:brewing>);
Jei.hideCategory(<resource:minecraft:smoking>);
Jei.hideCategory(<resource:minecraft:blasting>);
Jei.hideCategory(<resource:clayworks:baking>);
Jei.hideCategory(<resource:alexsmobs:capsid>);
Jei.hideCategory(<resource:brewinandchewin:flaxen_cheese_ripening>);
Jei.hideCategory(<resource:brewinandchewin:scarlet_cheese_ripening>);
Jei.hideCategory(<resource:aether:accessory_freezable>);
Jei.hideCategory(<resource:aether:ambrosium_enchanting>);
//Jei.hideCategory(<resource:aether:block_placement_ban>);
Jei.hideCategory(<resource:aether:enchanting>);
//Jei.hideCategory(<resource:aether:freezing>);
//Jei.hideCategory(<resource:aether:fuel>);
Jei.hideCategory(<resource:aether:icestone_freezable>);
Jei.hideCategory(<resource:aether:incubation>);
//Jei.hideCategory(<resource:aether:item_placement_ban>);
//Jei.hideCategory(<resource:aether:placement_conversion>);
Jei.hideCategory(<resource:aether:repairing>);
Jei.hideCategory(<resource:aether:swet_ball_conversion>);

// -----------------------------------------------------------------------------

