// priority: 0

// Block Tags

ServerEvents.tags('block', event => {
    event.removeAll('minecraft:planks')

    event.get('minecraft:mineable/pickaxe')
    	.add('quark:chute')
    	.add('minecraft:jukebox')
    	.add('minecraft:note_block')
    	.add('supplementaries:speaker_block')
    	.add('xercamusic:music_box')

	event.get('minecraft:mineable/axe')
		.remove('create:gearbox')
    	.remove('create:andesite_casing')
    	.remove('create:brass_casing')
    	.remove('create:mechanical_press')
    	.remove('create:encased_chain_drive')
    	.remove('create:adjustable_chain_gearshift')
    	.remove('create:gearshift')
    	.remove('create:clutch')
    	.remove('create:portable_storage_interface')
    	.remove('create:portable_fluid_interface')
    	.remove('create:mechanical_saw')
    	.remove('create:mechanical_drill')
    	.remove('create:mechanical_plough')
    	.remove('create:mechanical_harvester')
    	.remove('create:encased_fan')
    	.remove('create:gantry_shaft')
    	.remove('create:gantry_carriage')
    	.remove('create:rope_pulley')
    	.remove('quark:chute')
    	.remove('create:cart_assembler')
    	.remove('minecraft:jukebox')
    	.remove('minecraft:note_block')
    	.remove('supplementaries:speaker_block')
    	.remove('xercamusic:music_box')

	event.get('minecraft:needs_diamond_tool')
    	.add('savage_and_ravage:blast_proof_plates')
    	.add('oreganized:electrum_block')

	event.get('minecraft:needs_iron_tool')
    	.add('alloyed:steel_block')
    	.add('minecraft:iron_block')
    	.remove('savage_and_ravage:blast_proof_plates')
    	.remove('create:brass_block')
    	.remove('create:zinc_block')

	event.get('minecraft:needs_stone_tool')
    	.add('create:brass_block')
    	.add('create:zinc_block')
    	.remove('alloyed:steel_block')
    	.remove('minecraft:iron_block')
})



ServerEvents.recipes (event => {
    // Recipe Removal
    event.remove({mod: 'abnormalmining'});
    event.remove({mod: 'abnormals_delight'});
    event.remove({mod: 'aether'});
    event.remove({mod: 'alexsabnormalities'});
    event.remove({mod: 'alexsdelight'});
    event.remove({mod: 'alexsmobs'});
    event.remove({mod: 'alloyed'});
    event.remove({mod: 'allurement'});
    event.remove({mod: 'another_furniture'});
    event.remove({mod: 'appleskin'});
    event.remove({mod: 'architects_palette'});
    event.remove({mod: 'atmospheric'});
    event.remove({mod: 'autoreglib'});
    event.remove({mod: 'autumnity'});
    event.remove({mod: 'berry_good'});
    event.remove({mod: 'bettercombat'});
    event.remove({mod: 'blueprint'});
    event.remove({mod: 'boatload'});
    event.remove({mod: 'brewinandchewin'});
    event.remove({mod: 'buzzier_bees'});
    event.remove({mod: 'camera'});
    event.remove({mod: 'caverns_and_chasms'});
    event.remove({mod: 'clayworks'});
    event.remove({mod: 'cloth_config'});
    event.remove({mod: 'cold_sweat'});
    event.remove({mod: 'copperandtuffbackport'});
    event.remove({mod: 'craftingautomat'});
    event.remove({mod: 'create'});
    event.remove({mod: 'culturaldelights'});
    event.remove({mod: 'davespotioneering'});
    event.remove({mod: 'delightfulmining'});
    event.remove({mod: 'dungeons_mobs'});
    event.remove({mod: 'ecologics'});
    event.remove({mod: 'endergetic'});
    event.remove({mod: 'environmental'});
    event.remove({mod: 'etched'});
    event.remove({mod: 'everycomp'});
    event.remove({mod: 'farmersdelight'});
    event.remove({mod: 'farmersrespite'});
    event.remove({mod: 'flywheel'});
    event.remove({mod: 'forge'});
    event.remove({mod: 'geckolib3'});
    event.remove({mod: 'heartstone'});
    event.remove({mod: 'hnh'});
    event.remove({mod: 'incubation'});
    event.remove({mod: 'infernalexp'});
    event.remove({mod: 'inventorio'});
    event.remove({mod: 'jei'});
    event.remove({mod: 'minecraft'});
    event.remove({mod: 'miningmaster'});
    event.remove({mod: 'modestmining'});
    event.remove({mod: 'moonlight'});
    event.remove({mod: 'morecreativetabs'});
    event.remove({mod: 'moreminecarts'});
    event.remove({mod: 'naturalist'});
    event.remove({mod: 'neapolitan'});
    event.remove({mod: 'nethersdelight'});
    event.remove({mod: 'oreganized'});
    event.remove({mod: 'paletteblocks'});
    event.remove({mod: 'personality'});
    event.remove({mod: 'pet_cemetery'});
    event.remove({mod: 'playeranimator'});
    event.remove({mod: 'pyrotastic'});
    event.remove({mod: 'quark'});
    event.remove({mod: 'rottencreatures'});
    event.remove({mod: 'savage_and_ravage'});
    event.remove({mod: 'shieldexp'});
    event.remove({mod: 'shutupexperimentalsettings'});
    event.remove({mod: 'sleep_tight'});
    event.remove({mod: 'sortilege'});
    event.remove({mod: 'spelunkery'});
    event.remove({mod: 'sullysmod'});
    event.remove({mod: 'supplementaries'});
    event.remove({mod: 'suppsquared'});
    event.remove({mod: 'thebreeze'});
    event.remove({mod: 'thirst'});
    event.remove({mod: 'twigs'});
    event.remove({mod: 'upgrade_aquatic'});
    event.remove({mod: 'windswept'});
    event.remove({mod: 'woodworks'});
    event.remove({mod: 'xercamusic'});


    // Metals
    const aluminium = [
        ["fundamentallyfixed", "aluminium_ingot"], ["fundamentallyfixed", "aluminium_nugget"], ["fundamentallyfixed", "aluminium_sheet"],
        ["fundamentallyfixed", "aluminium_block"], ["fundamentallyfixed", "aluminium_sheet_block"], ["fundamentallyfixed", "carved_aluminium"],
        ["fundamentallyfixed", "carved_aluminium_stairs"], ["fundamentallyfixed", "carved_aluminium_slab"], ["fundamentallyfixed", "carved_aluminium_wall"],
        ["fundamentallyfixed", "cut_aluminium"], ["fundamentallyfixed", "cut_aluminium_stairs"], ["fundamentallyfixed", "cut_aluminium_slab"],
        ["fundamentallyfixed", "cut_aluminium_wall"], ["fundamentallyfixed", "cubed_aluminium"], ["fundamentallyfixed", "cubed_aluminium_stairs"],
        ["fundamentallyfixed", "cubed_aluminium_slab"], ["fundamentallyfixed", "cubed_aluminium_wall"], ["fundamentallyfixed", "lined_aluminium"],
        ["fundamentallyfixed", "lined_aluminium_stairs"], ["fundamentallyfixed", "lined_aluminium_slab"], ["fundamentallyfixed", "lined_aluminium_wall"],
        ["fundamentallyfixed", "forging_fuels_zero"],
                                                    ["fundamentallyfixed", "raw_aluminium_nugget"], ["fundamentallyfixed", "raw_aluminium"], ["fundamentallyfixed", "aluminium_dust"]
    ];

    const copper = [
        ["minecraft", "copper_ingot"], ["modestmining", "copper_nugget"], ["create", "copper_sheet"],
        ["minecraft", "copper_block"], ["copperandtuffbackport", "chiseled_copper"], ["alloyed", "bronze_block"],
        ["fundamentallyfixed", "carved_copper_stairs"], ["fundamentallyfixed", "carved_copper_slab"], ["fundamentallyfixed", "carved_copper_wall"],
        ["minecraft", "cut_copper"], ["minecraft", "cut_copper_stairs"], ["minecraft", "cut_copper_slab"],
        ["fundamentallyfixed", "cut_copper_wall"], ["create", "copper_shingles"], ["create", "copper_shingle_stairs"],
        ["create", "copper_shingle_slab"], ["fundamentallyfixed", "cubed_copper_wall"], ["create", "copper_tiles"],
        ["create", "copper_tile_stairs"], ["create", "copper_tile_slab"], ["fundamentallyfixed", "lined_copper_wall"],
        ["fundamentallyfixed", "forging_fuels_zero"],
                                                    ["fundamentallyfixed", "raw_copper_nugget"], ["minecraft", "raw_copper"], ["modestmining", "copper_dust"]
    ];

    const exposed_copper = [
        ["minecraft", "copper_ingot"], ["modestmining", "copper_nugget"], ["create", "copper_sheet"],
        ["minecraft", "exposed_copper"], ["copperandtuffbackport", "exposed_chiseled_copper"], ["alloyed", "exposed_bronze_block"],
        ["fundamentallyfixed", "carved_exposed_copper_stairs"], ["fundamentallyfixed", "carved_exposed_copper_slab"], ["fundamentallyfixed", "carved_exposed_copper_wall"],
        ["minecraft", "exposed_cut_copper"], ["minecraft", "exposed_cut_copper_stairs"], ["minecraft", "exposed_cut_copper_slab"],
        ["fundamentallyfixed", "cut_exposed_copper_wall"], ["create", "exposed_copper_shingles"], ["create", "exposed_copper_shingle_stairs"],
        ["create", "exposed_copper_shingle_slab"], ["fundamentallyfixed", "cubed_exposed_copper_wall"], ["create", "exposed_copper_tiles"],
        ["create", "exposed_copper_tile_stairs"], ["create", "exposed_copper_tile_slab"], ["fundamentallyfixed", "lined_exposed_copper_wall"],
        ["fundamentallyfixed", "forging_fuels_zero"],
                                                    ["fundamentallyfixed", "raw_copper_nugget"], ["minecraft", "raw_copper"], ["modestmining", "copper_dust"]
    ];

    const weathered_copper = [
            ["minecraft", "copper_ingot"], ["modestmining", "copper_nugget"], ["create", "copper_sheet"],
            ["minecraft", "weathered_copper"], ["copperandtuffbackport", "weathered_chiseled_copper"], ["alloyed", "weathered_bronze_block"],
            ["fundamentallyfixed", "carved_weathered_copper_stairs"], ["fundamentallyfixed", "carved_weathered_copper_slab"], ["fundamentallyfixed", "carved_weathered_copper_wall"],
            ["minecraft", "weathered_cut_copper"], ["minecraft", "weathered_cut_copper_stairs"], ["minecraft", "weathered_cut_copper_slab"],
            ["fundamentallyfixed", "cut_weathered_copper_wall"], ["create", "weathered_copper_shingles"], ["create", "weathered_copper_shingle_stairs"],
            ["create", "weathered_copper_shingle_slab"], ["fundamentallyfixed", "cubed_weathered_copper_wall"], ["create", "weathered_copper_tiles"],
            ["create", "weathered_copper_tile_stairs"], ["create", "weathered_copper_tile_slab"], ["fundamentallyfixed", "lined_weathered_copper_wall"],
            ["fundamentallyfixed", "forging_fuels_zero"],
                                                        ["fundamentallyfixed", "raw_copper_nugget"], ["minecraft", "raw_copper"], ["modestmining", "copper_dust"]
        ];

    const oxidized_copper = [
            ["minecraft", "copper_ingot"], ["modestmining", "copper_nugget"], ["create", "copper_sheet"],
            ["minecraft", "oxidized_copper"], ["copperandtuffbackport", "oxidized_chiseled_copper"], ["alloyed", "oxidized_bronze_block"],
            ["fundamentallyfixed", "carved_oxidized_copper_stairs"], ["fundamentallyfixed", "carved_oxidized_copper_slab"], ["fundamentallyfixed", "carved_oxidized_copper_wall"],
            ["minecraft", "oxidized_cut_copper"], ["minecraft", "oxidized_cut_copper_stairs"], ["minecraft", "oxidized_cut_copper_slab"],
            ["fundamentallyfixed", "cut_oxidized_copper_wall"], ["create", "oxidized_copper_shingles"], ["create", "oxidized_copper_shingle_stairs"],
            ["create", "oxidized_copper_shingle_slab"], ["fundamentallyfixed", "cubed_oxidized_copper_wall"], ["create", "oxidized_copper_tiles"],
            ["create", "oxidized_copper_tile_stairs"], ["create", "oxidized_copper_tile_slab"], ["fundamentallyfixed", "lined_oxidized_copper_wall"],
            ["fundamentallyfixed", "forging_fuels_zero"],
                                                        ["fundamentallyfixed", "raw_copper_nugget"], ["minecraft", "raw_copper"], ["modestmining", "copper_dust"]
        ];

    const waxed_copper = [
            ["minecraft", "copper_ingot"], ["modestmining", "copper_nugget"], ["create", "copper_sheet"],
            ["minecraft", "waxed_copper_block"], ["copperandtuffbackport", "waxed_chiseled_copper"], ["alloyed", "waxed_bronze_block"],
            ["fundamentallyfixed", "waxed_carved_copper_stairs"], ["fundamentallyfixed", "waxed_carved_copper_slab"], ["fundamentallyfixed", "waxed_carved_copper_wall"],
            ["minecraft", "waxed_cut_copper"], ["minecraft", "waxed_cut_copper_stairs"], ["minecraft", "waxed_cut_copper_slab"],
            ["fundamentallyfixed", "waxed_cut_copper_wall"], ["create", "waxed_copper_shingles"], ["create", "waxed_copper_shingle_stairs"],
            ["create", "waxed_copper_shingle_slab"], ["fundamentallyfixed", "waxed_cubed_copper_wall"], ["create", "waxed_copper_tiles"],
            ["create", "waxed_copper_tile_stairs"], ["create", "waxed_copper_tile_slab"], ["fundamentallyfixed", "waxed_lined_copper_wall"],
            ["fundamentallyfixed", "forging_fuels_zero"],
            ["fundamentallyfixed", "raw_copper_nugget"], ["minecraft", "raw_copper"], ["modestmining", "copper_dust"]
        ];

        const waxed_exposed_copper = [
            ["minecraft", "copper_ingot"], ["modestmining", "copper_nugget"], ["create", "copper_sheet"],
            ["minecraft", "waxed_exposed_copper"], ["copperandtuffbackport", "waxed_exposed_chiseled_copper"], ["alloyed", "waxed_exposed_bronze_block"],
            ["fundamentallyfixed", "waxed_carved_exposed_copper_stairs"], ["fundamentallyfixed", "waxed_carved_exposed_copper_slab"], ["fundamentallyfixed", "waxed_carved_exposed_copper_wall"],
            ["minecraft", "waxed_exposed_cut_copper"], ["minecraft", "waxed_exposed_cut_copper_stairs"], ["minecraft", "waxed_exposed_cut_copper_slab"],
            ["fundamentallyfixed", "waxed_cut_exposed_copper_wall"], ["create", "waxed_exposed_copper_shingles"], ["create", "waxed_exposed_copper_shingle_stairs"],
            ["create", "waxed_exposed_copper_shingle_slab"], ["fundamentallyfixed", "waxed_cubed_exposed_copper_wall"], ["create", "waxed_exposed_copper_tiles"],
            ["create", "waxed_exposed_copper_tile_stairs"], ["create", "waxed_exposed_copper_tile_slab"], ["fundamentallyfixed", "waxed_lined_exposed_copper_wall"],
            ["fundamentallyfixed", "forging_fuels_zero"],
            ["fundamentallyfixed", "raw_copper_nugget"], ["minecraft", "raw_copper"], ["modestmining", "copper_dust"]
        ];

        const waxed_weathered_copper = [
                ["minecraft", "copper_ingot"], ["modestmining", "copper_nugget"], ["create", "copper_sheet"],
                ["minecraft", "waxed_weathered_copper"], ["copperandtuffbackport", "waxed_weathered_chiseled_copper"], ["alloyed", "waxed_weathered_bronze_block"],
                ["fundamentallyfixed", "waxed_carved_weathered_copper_stairs"], ["fundamentallyfixed", "waxed_carved_weathered_copper_slab"], ["fundamentallyfixed", "waxed_carved_weathered_copper_wall"],
                ["minecraft", "waxed_weathered_cut_copper"], ["minecraft", "waxed_weathered_cut_copper_stairs"], ["minecraft", "waxed_weathered_cut_copper_slab"],
                ["fundamentallyfixed", "waxed_cut_weathered_copper_wall"], ["create", "waxed_weathered_copper_shingles"], ["create", "waxed_weathered_copper_shingle_stairs"],
                ["create", "waxed_weathered_copper_shingle_slab"], ["fundamentallyfixed", "waxed_cubed_weathered_copper_wall"], ["create", "waxed_weathered_copper_tiles"],
                ["create", "waxed_weathered_copper_tile_stairs"], ["create", "waxed_weathered_copper_tile_slab"], ["fundamentallyfixed", "waxed_lined_weathered_copper_wall"],
                ["fundamentallyfixed", "forging_fuels_zero"],
                ["fundamentallyfixed", "raw_copper_nugget"], ["minecraft", "raw_copper"], ["modestmining", "copper_dust"]
            ];

        const waxed_oxidized_copper = [
                ["minecraft", "copper_ingot"], ["modestmining", "copper_nugget"], ["create", "copper_sheet"],
                ["minecraft", "waxed_oxidized_copper"], ["copperandtuffbackport", "waxed_oxidized_chiseled_copper"], ["alloyed", "waxed_oxidized_bronze_block"],
                ["fundamentallyfixed", "waxed_carved_oxidized_copper_stairs"], ["fundamentallyfixed", "waxed_carved_oxidized_copper_slab"], ["fundamentallyfixed", "waxed_carved_oxidized_copper_wall"],
                ["minecraft", "waxed_oxidized_cut_copper"], ["minecraft", "waxed_oxidized_cut_copper_stairs"], ["minecraft", "waxed_oxidized_cut_copper_slab"],
                ["fundamentallyfixed", "waxed_cut_oxidized_copper_wall"], ["create", "waxed_oxidized_copper_shingles"], ["create", "waxed_oxidized_copper_shingle_stairs"],
                ["create", "waxed_oxidized_copper_shingle_slab"], ["fundamentallyfixed", "waxed_cubed_oxidized_copper_wall"], ["create", "waxed_oxidized_copper_tiles"],
                ["create", "waxed_oxidized_copper_tile_stairs"], ["create", "waxed_oxidized_copper_tile_slab"], ["fundamentallyfixed", "waxed_lined_oxidized_copper_wall"],
                ["fundamentallyfixed", "forging_fuels_zero"],
                ["fundamentallyfixed", "raw_copper_nugget"], ["minecraft", "raw_copper"], ["modestmining", "copper_dust"]
            ];

        const bronze = [
        ["fundamentallyfixed", "bronze_ingot"], ["fundamentallyfixed", "bronze_nugget"], ["fundamentallyfixed", "bronze_sheet"],
        ["create", "brass_block"], ["create", "zinc_block"], ["fundamentallyfixed", "carved_bronze"],
        ["fundamentallyfixed", "carved_bronze_stairs"], ["fundamentallyfixed", "carved_bronze_slab"], ["fundamentallyfixed", "carved_bronze_wall"],
        ["fundamentallyfixed", "cut_bronze"], ["fundamentallyfixed", "cut_bronze_stairs"], ["fundamentallyfixed", "cut_bronze_slab"],
        ["fundamentallyfixed", "cut_bronze_wall"], ["fundamentallyfixed", "cubed_bronze"], ["fundamentallyfixed", "cubed_bronze_stairs"],
        ["fundamentallyfixed", "cubed_bronze_slab"], ["fundamentallyfixed", "cubed_bronze_wall"], ["fundamentallyfixed", "lined_bronze"],
        ["fundamentallyfixed", "lined_bronze_stairs"], ["fundamentallyfixed", "lined_bronze_slab"], ["fundamentallyfixed", "lined_bronze_wall"],
        ["fundamentallyfixed", "forging_fuels_zero"]
    ];

    const iron = [
        ["minecraft", "iron_ingot"], ["minecraft", "iron_nugget"], ["create", "iron_sheet"],
        ["minecraft", "iron_block"], ["fundamentallyfixed", "iron_sheet_block"], ["fundamentallyfixed", "carved_iron"],
        ["fundamentallyfixed", "carved_iron_stairs"], ["fundamentallyfixed", "carved_iron_slab"], ["fundamentallyfixed", "carved_iron_wall"],
        ["fundamentallyfixed", "cut_iron"], ["fundamentallyfixed", "cut_iron_stairs"], ["fundamentallyfixed", "cut_iron_slab"],
        ["fundamentallyfixed", "cut_iron_wall"], ["fundamentallyfixed", "cubed_iron"], ["fundamentallyfixed", "cubed_iron_stairs"],
        ["fundamentallyfixed", "cubed_iron_slab"], ["fundamentallyfixed", "cubed_iron_wall"], ["quark", "iron_plate"],
        ["quark", "iron_plate_stairs"], ["quark", "iron_plate_slab"], ["fundamentallyfixed", "lined_iron_wall"],
        ["fundamentallyfixed", "forging_fuels_zero"],
                                                    ["fundamentallyfixed", "raw_iron_nugget"], ["minecraft", "raw_iron"], ["modestmining", "iron_dust"]
    ];

    const lead = [
        ["oreganized", "lead_ingot"], ["fundamentallyfixed", "raw_lead_nugget"], ["fundamentallyfixed", "lead_sheet"],
        ["oreganized", "lead_block"], ["fundamentallyfixed", "lead_sheet_block"], ["fundamentallyfixed", "carved_lead"],
        ["fundamentallyfixed", "carved_lead_stairs"], ["fundamentallyfixed", "carved_lead_slab"], ["fundamentallyfixed", "carved_lead_wall"],
        ["fundamentallyfixed", "cut_lead"], ["fundamentallyfixed", "cut_lead_stairs"], ["fundamentallyfixed", "cut_lead_slab"],
        ["fundamentallyfixed", "cut_lead_wall"], ["fundamentallyfixed", "cubed_lead"], ["fundamentallyfixed", "cubed_lead_stairs"],
        ["fundamentallyfixed", "cubed_lead_slab"], ["fundamentallyfixed", "cubed_lead_wall"], ["fundamentallyfixed", "lined_lead"],
        ["fundamentallyfixed", "lined_lead_stairs"], ["fundamentallyfixed", "lined_lead_slab"], ["fundamentallyfixed", "lined_lead_wall"],
        ["fundamentallyfixed", "forging_fuels_zero"],
                                                    ["oreganized", "lead_nugget"], ["oreganized", "raw_lead"], ["fundamentallyfixed", "lead_dust"]
    ];

    const steel = [
        ["modestmining", "steel_ingot"], ["modestmining", "steel_nugget"], ["fundamentallyfixed", "steel_sheet"],
        ["modestmining", "steel_block"], ["alloyed", "steel_block"], ["quark", "rusty_iron_plate"],
        ["quark", "rusty_iron_plate_stairs"], ["quark", "rusty_iron_plate_slab"], ["fundamentallyfixed", "carved_steel_wall"],
        ["fundamentallyfixed", "cut_steel"], ["fundamentallyfixed", "cut_steel_stairs"], ["fundamentallyfixed", "cut_steel_slab"],
        ["fundamentallyfixed", "cut_steel_wall"], ["fundamentallyfixed", "cubed_steel"], ["fundamentallyfixed", "cubed_steel_stairs"],
        ["fundamentallyfixed", "cubed_steel_slab"], ["fundamentallyfixed", "cubed_steel_wall"], ["fundamentallyfixed", "lined_steel"],
        ["fundamentallyfixed", "lined_steel_stairs"], ["fundamentallyfixed", "lined_steel_slab"], ["fundamentallyfixed", "lined_steel_wall"],
        ["fundamentallyfixed", "forging_fuels_zero"]
    ];

    const gold = [
        ["minecraft", "gold_ingot"], ["minecraft", "gold_nugget"], ["create", "golden_sheet"],
        ["minecraft", "gold_block"], ["fundamentallyfixed", "gold_sheet_block"], ["fundamentallyfixed", "carved_gold"],
        ["fundamentallyfixed", "carved_gold_stairs"],["fundamentallyfixed", "carved_gold_slab"], ["fundamentallyfixed", "carved_gold_wall"],
        ["fundamentallyfixed", "cut_gold"], ["fundamentallyfixed", "cut_gold_stairs"], ["fundamentallyfixed", "cut_gold_slab"],
        ["fundamentallyfixed", "cut_gold_wall"], ["fundamentallyfixed", "cubed_gold"], ["fundamentallyfixed", "cubed_gold_stairs"],
        ["fundamentallyfixed", "cubed_gold_slab"], ["fundamentallyfixed", "cubed_gold_wall"], ["fundamentallyfixed", "lined_gold"],
        ["fundamentallyfixed", "lined_gold_stairs"], ["fundamentallyfixed", "lined_gold_slab"], ["fundamentallyfixed", "lined_gold_wall"],
        ["fundamentallyfixed", "forging_fuels_zero"],
                                                    ["fundamentallyfixed", "raw_gold_nugget"], ["minecraft", "raw_gold"], ["modestmining", "gold_dust"]
    ];

    const silver = [
        ["oreganized", "silver_ingot"], ["oreganized", "silver_nugget"], ["fundamentallyfixed", "silver_sheet"],
        ["oreganized", "silver_block"], ["fundamentallyfixed", "silver_sheet_block"], ["fundamentallyfixed", "carved_silver"],
        ["fundamentallyfixed", "carved_silver_stairs"], ["fundamentallyfixed", "carved_silver_slab"], ["fundamentallyfixed", "carved_silver_wall"],
        ["fundamentallyfixed", "cut_silver"], ["fundamentallyfixed", "cut_silver_stairs"], ["fundamentallyfixed", "cut_silver_slab"],
        ["fundamentallyfixed", "cut_silver_wall"], ["fundamentallyfixed", "cubed_silver"], ["fundamentallyfixed", "cubed_silver_stairs"],
        ["fundamentallyfixed", "cubed_silver_slab"], ["fundamentallyfixed", "cubed_silver_wall"], ["fundamentallyfixed", "lined_silver"],
        ["fundamentallyfixed", "lined_silver_stairs"], ["fundamentallyfixed", "lined_silver_slab"], ["fundamentallyfixed", "lined_silver_wall"],
        ["fundamentallyfixed", "forging_fuels_zero"],
                                                    ["fundamentallyfixed", "raw_silver_nugget"], ["oreganized", "raw_silver"], ["fundamentallyfixed", "silver_dust"]
    ];

    const stoldum = [
        ["fundamentallyfixed", "stoldum_ingot"], ["fundamentallyfixed", "stoldum_nugget"], ["fundamentallyfixed", "stoldum_sheet"],
        ["fundamentallyfixed", "stoldum_block"], ["fundamentallyfixed", "stoldum_sheet_block"], ["fundamentallyfixed", "carved_stoldum"],
        ["fundamentallyfixed", "carved_stoldum_stairs"], ["fundamentallyfixed", "carved_stoldum_slab"], ["fundamentallyfixed", "carved_stoldum_wall"],
        ["fundamentallyfixed", "cut_stoldum"], ["fundamentallyfixed", "cut_stoldum_stairs"], ["fundamentallyfixed", "cut_stoldum_slab"],
        ["fundamentallyfixed", "cut_stoldum_wall"], ["fundamentallyfixed", "cubed_stoldum"], ["fundamentallyfixed", "cubed_stoldum_stairs"],
        ["fundamentallyfixed", "cubed_stoldum_slab"], ["fundamentallyfixed", "cubed_stoldum_wall"], ["fundamentallyfixed", "lined_stoldum"],
        ["fundamentallyfixed", "lined_stoldum_stairs"], ["fundamentallyfixed", "lined_stoldum_slab"], ["fundamentallyfixed", "lined_stoldum_wall"],
        ["fundamentallyfixed", "forging_fuels_zero"]
    ];

    const prismarite = [
        ["modestmining", "prismarite_ingot"], ["modestmining", "prismarite_nugget"], ["fundamentallyfixed", "prismarite_sheet"],
        ["modestmining", "prismarite_block"], ["fundamentallyfixed", "prismarite_sheet_block"], ["fundamentallyfixed", "carved_prismarite"],
        ["fundamentallyfixed", "carved_prismarite_stairs"], ["fundamentallyfixed", "carved_prismarite_slab"], ["fundamentallyfixed", "carved_prismarite_wall"],
        ["fundamentallyfixed", "cut_prismarite"], ["fundamentallyfixed", "cut_prismarite_stairs"], ["fundamentallyfixed", "cut_prismarite_slab"],
        ["fundamentallyfixed", "cut_prismarite_wall"], ["fundamentallyfixed", "cubed_prismarite"], ["fundamentallyfixed", "cubed_prismarite_stairs"],
        ["fundamentallyfixed", "cubed_prismarite_slab"], ["fundamentallyfixed", "cubed_prismarite_wall"], ["fundamentallyfixed", "lined_prismarite"],
        ["fundamentallyfixed", "lined_prismarite_stairs"], ["fundamentallyfixed", "lined_prismarite_slab"], ["fundamentallyfixed", "lined_prismarite_wall"],
        ["fundamentallyfixed", "forging_fuels_zero"]
    ];

    const netherite = [
        ["minecraft", "netherite_ingot"], ["oreganized", "netherite_nugget"], ["fundamentallyfixed", "netherite_sheet"],
        ["minecraft", "netherite_block"], ["fundamentallyfixed", "netherite_sheet_block"], ["fundamentallyfixed", "carved_netherite"],
        ["fundamentallyfixed", "carved_netherite_stairs"], ["fundamentallyfixed", "carved_netherite_slab"], ["fundamentallyfixed", "carved_netherite_wall"],
        ["fundamentallyfixed", "cut_netherite"], ["fundamentallyfixed", "cut_netherite_stairs"], ["fundamentallyfixed", "cut_netherite_slab"],
        ["fundamentallyfixed", "cut_netherite_wall"], ["fundamentallyfixed", "cubed_netherite"], ["fundamentallyfixed", "cubed_netherite_stairs"],
        ["fundamentallyfixed", "cubed_netherite_slab"], ["fundamentallyfixed", "cubed_netherite_wall"], ["fundamentallyfixed", "lined_netherite"],
        ["fundamentallyfixed", "lined_netherite_stairs"], ["fundamentallyfixed", "lined_netherite_slab"], ["fundamentallyfixed", "lined_netherite_wall"],
        ["fundamentallyfixed", "forging_fuels_zero"]
    ];

    const electrum = [
        ["oreganized", "electrum_ingot"], ["oreganized", "electrum_nugget"], ["fundamentallyfixed", "electrum_sheet"],
        ["oreganized", "electrum_block"], ["fundamentallyfixed", "electrum_sheet_block"], ["fundamentallyfixed", "carved_electrum"],
        ["fundamentallyfixed", "carved_electrum_stairs"], ["fundamentallyfixed", "carved_electrum_slab"], ["fundamentallyfixed", "carved_electrum_wall"],
        ["fundamentallyfixed", "cut_electrum"], ["fundamentallyfixed", "cut_electrum_stairs"], ["fundamentallyfixed", "cut_electrum_slab"],
        ["fundamentallyfixed", "cut_electrum_wall"], ["fundamentallyfixed", "cubed_electrum"], ["fundamentallyfixed", "cubed_electrum_stairs"],
        ["fundamentallyfixed", "cubed_electrum_slab"], ["fundamentallyfixed", "cubed_electrum_wall"], ["fundamentallyfixed", "lined_electrum"],
        ["fundamentallyfixed", "lined_electrum_stairs"], ["fundamentallyfixed", "lined_electrum_slab"], ["fundamentallyfixed", "lined_electrum_wall"],
        ["fundamentallyfixed", "forging_fuels_zero"]
    ];

    const chlorophite = [
        ["fundamentallyfixed", "chlorophite_ingot"], ["fundamentallyfixed", "chlorophite_nugget"], ["fundamentallyfixed", "chlorophite_sheet"],
        ["savage_and_ravage", "blast_proof_plates"], ["fundamentallyfixed", "chlorophite_sheet_block"], ["fundamentallyfixed", "carved_chlorophite"],
        ["fundamentallyfixed", "carved_chlorophite_stairs"], ["fundamentallyfixed", "carved_chlorophite_slab"], ["fundamentallyfixed", "carved_chlorophite_wall"],
        ["fundamentallyfixed", "cut_chlorophite"], ["fundamentallyfixed", "cut_chlorophite_stairs"], ["fundamentallyfixed", "cut_chlorophite_slab"],
        ["fundamentallyfixed", "cut_chlorophite_wall"], ["fundamentallyfixed", "cubed_chlorophite"], ["fundamentallyfixed", "cubed_chlorophite_stairs"],
        ["fundamentallyfixed", "cubed_chlorophite_slab"], ["fundamentallyfixed", "cubed_chlorophite_wall"], ["fundamentallyfixed", "lined_chlorophite"],
        ["fundamentallyfixed", "lined_chlorophite_stairs"], ["fundamentallyfixed", "lined_chlorophite_slab"], ["fundamentallyfixed", "lined_chlorophite_wall"],
        ["fundamentallyfixed", "forging_fuels_zero"]
    ];

    const mythril = [
        ["fundamentallyfixed", "mythril_ingot"], ["fundamentallyfixed", "mythril_nugget"], ["fundamentallyfixed", "mythril_sheet"],
        ["fundamentallyfixed", "mythril_block"], ["fundamentallyfixed", "mythril_sheet_block"], ["fundamentallyfixed", "carved_mythril"],
        ["fundamentallyfixed", "carved_mythril_stairs"], ["fundamentallyfixed", "carved_mythril_slab"], ["fundamentallyfixed", "carved_mythril_wall"],
        ["fundamentallyfixed", "cut_mythril"], ["fundamentallyfixed", "cut_mythril_stairs"], ["fundamentallyfixed", "cut_mythril_slab"],
        ["fundamentallyfixed", "cut_mythril_wall"], ["fundamentallyfixed", "cubed_mythril"], ["fundamentallyfixed", "cubed_mythril_stairs"],
        ["fundamentallyfixed", "cubed_mythril_slab"], ["fundamentallyfixed", "cubed_mythril_wall"], ["fundamentallyfixed", "lined_mythril"],
        ["fundamentallyfixed", "lined_mythril_stairs"], ["fundamentallyfixed", "lined_mythril_slab"], ["fundamentallyfixed", "lined_mythril_wall"],
        ["fundamentallyfixed", "forging_fuels_zero"]
    ];

    const hallowed = [
        ["fundamentallyfixed", "hallowed_ingot"], ["fundamentallyfixed", "hallowed_nugget"], ["fundamentallyfixed", "hallowed_sheet"],
        ["fundamentallyfixed", "hallowed_block"], ["fundamentallyfixed", "hallowed_sheet_block"], ["fundamentallyfixed", "carved_hallowed"],
        ["fundamentallyfixed", "carved_hallowed_stairs"], ["fundamentallyfixed", "carved_hallowed_slab"], ["fundamentallyfixed", "carved_hallowed_wall"],
        ["fundamentallyfixed", "cut_hallowed"], ["fundamentallyfixed", "cut_hallowed_stairs"], ["fundamentallyfixed", "cut_hallowed_slab"],
        ["fundamentallyfixed", "cut_hallowed_wall"], ["fundamentallyfixed", "cubed_hallowed"], ["fundamentallyfixed", "cubed_hallowed_stairs"],
        ["fundamentallyfixed", "cubed_hallowed_slab"], ["fundamentallyfixed", "cubed_hallowed_wall"], ["fundamentallyfixed", "lined_hallowed"],
        ["fundamentallyfixed", "lined_hallowed_stairs"], ["fundamentallyfixed", "lined_hallowed_slab"], ["fundamentallyfixed", "lined_hallowed_wall"],
        ["fundamentallyfixed", "forging_fuels_zero"]
    ];

    const gravitite = [
        ["fundamentallyfixed", "gravitite_ingot"], ["fundamentallyfixed", "gravitite_nugget"], ["fundamentallyfixed", "gravitite_sheet"],
        ["fundamentallyfixed", "gravitite_block"], ["fundamentallyfixed", "gravitite_sheet_block"], ["fundamentallyfixed", "carved_gravitite"],
        ["fundamentallyfixed", "carved_gravitite_stairs"], ["fundamentallyfixed", "carved_gravitite_slab"], ["fundamentallyfixed", "carved_gravitite_wall"],
        ["fundamentallyfixed", "cut_gravitite"], ["fundamentallyfixed", "cut_gravitite_stairs"], ["fundamentallyfixed", "cut_gravitite_slab"],
        ["fundamentallyfixed", "cut_gravitite_wall"], ["fundamentallyfixed", "cubed_gravitite"], ["fundamentallyfixed", "cubed_gravitite_stairs"],
        ["fundamentallyfixed", "cubed_gravitite_slab"], ["fundamentallyfixed", "cubed_gravitite_wall"], ["fundamentallyfixed", "lined_gravitite"],
        ["fundamentallyfixed", "lined_gravitite_stairs"], ["fundamentallyfixed", "lined_gravitite_slab"], ["fundamentallyfixed", "lined_gravitite_wall"],
        ["fundamentallyfixed", "forging_fuels_zero"]
    ];

    const voidendum = [
        ["fundamentallyfixed", "voidendum_ingot"], ["fundamentallyfixed", "voidendum_nugget"], ["fundamentallyfixed", "voidendum_sheet"],
        ["fundamentallyfixed", "voidendum_block"], ["fundamentallyfixed", "voidendum_sheet_block"], ["fundamentallyfixed", "carved_voidendum"],
        ["fundamentallyfixed", "carved_voidendum_stairs"], ["fundamentallyfixed", "carved_voidendum_slab"], ["fundamentallyfixed", "carved_voidendum_wall"],
        ["fundamentallyfixed", "cut_voidendum"], ["fundamentallyfixed", "cut_voidendum_stairs"], ["fundamentallyfixed", "cut_voidendum_slab"],
        ["fundamentallyfixed", "cut_voidendum_wall"], ["fundamentallyfixed", "cubed_voidendum"], ["fundamentallyfixed", "cubed_voidendum_stairs"],
        ["fundamentallyfixed", "cubed_voidendum_slab"], ["fundamentallyfixed", "cubed_voidendum_wall"], ["fundamentallyfixed", "lined_voidendum"],
        ["fundamentallyfixed", "lined_voidendum_stairs"], ["fundamentallyfixed", "lined_voidendum_slab"], ["fundamentallyfixed", "lined_voidendum_wall"],
        ["fundamentallyfixed", "forging_fuels_zero"]
    ];

    // Define all metal sets
    const metalSets = [
        aluminium, copper, exposed_copper, weathered_copper, oxidized_copper, waxed_copper, waxed_exposed_copper, waxed_weathered_copper, waxed_oxidized_copper, bronze, iron, lead, steel, gold, silver, stoldum, prismarite, netherite, electrum, chlorophite, mythril, hallowed, gravitite, voidendum
    ];
    const ingotSets = [
        aluminium, copper, bronze, iron, lead, steel, gold, silver, stoldum, prismarite, netherite, electrum, chlorophite, mythril, hallowed, gravitite, voidendum
    ];
    const oreSets = [
        aluminium, copper, iron, lead, gold, silver
    ];

    for (let ingotSet of ingotSets) {
        let ingot = ingotSet[0];
        let ingotItem = `${ingot[0]}:${ingot[1]}`;
        let nugget = ingotSet[1];
        let nuggetItem = `${nugget[0]}:${nugget[1]}`;
        let sheet = ingotSet[2];
        let sheetItem = `${sheet[0]}:${sheet[1]}`;
        let block = ingotSet[3];
        let blockItem = `${block[0]}:${block[1]}`;
        let sheetBlock = ingotSet[4];
        let sheetBlockItem = `${sheetBlock[0]}:${sheetBlock[1]}`;
        let carved = ingotSet[5];
        let carvedItem = `${carved[0]}:${carved[1]}`;
        let carvedStair = ingotSet[6];
        let carvedStairItem = `${carvedStair[0]}:${carvedStair[1]}`;
        let carvedSlab = ingotSet[7];
        let carvedSlabItem = `${carvedSlab[0]}:${carvedSlab[1]}`;
        let carvedWall = ingotSet[8];
        let carvedWallItem = `${carvedWall[0]}:${carvedWall[1]}`;
        let cut = ingotSet[9];
        let cutItem = `${cut[0]}:${cut[1]}`;
        let cutStair = ingotSet[10];
        let cutStairItem = `${cutStair[0]}:${cutStair[1]}`;
        let cutSlab = ingotSet[11];
        let cutSlabItem = `${cutSlab[0]}:${cutSlab[1]}`;
        let cutWall = ingotSet[12];
        let cutWallItem = `${cutWall[0]}:${cutWall[1]}`;
        let cubed = ingotSet[13];
        let cubedItem = `${cubed[0]}:${cubed[1]}`;
        let cubedStair = ingotSet[14];
        let cubedStairItem = `${cubedStair[0]}:${cubedStair[1]}`;
        let cubedSlab = ingotSet[15];
        let cubedSlabItem = `${cubedSlab[0]}:${cubedSlab[1]}`;
        let cubedWall = ingotSet[16];
        let cubedWallItem = `${cubedWall[0]}:${cubedWall[1]}`;
        let lined = ingotSet[17];
        let linedItem = `${lined[0]}:${lined[1]}`;
        let linedStair = ingotSet[18];
        let linedStairItem = `${linedStair[0]}:${linedStair[1]}`;
        let linedSlab = ingotSet[19];
        let linedSlabItem = `${linedSlab[0]}:${linedSlab[1]}`;
        let linedWall = ingotSet[20];
        let linedWallItem = `${linedWall[0]}:${linedWall[1]}`;
        let fuel = ingotSet[21];
        let fuelTag = `${fuel[0]}:${fuel[1]}`;

        // Ingots
        event.custom({
            type: "modestmining:forging",
            cooktime: 18,
            ingredients: [
                { item: ingotItem },
                { item: ingotItem },
                { item: ingotItem },
                { item: ingotItem },
                { item: ingotItem },
                { item: ingotItem },
                { item: ingotItem },
                { item: ingotItem },
                { item: ingotItem }
            ],
            fuel: { tag: fuelTag },
            result: {
                item: blockItem,
                count: 1
            }
        })


        event.custom({
            type: "modestmining:forging",
            cooktime: 18,
            ingredients: [
                { item: nuggetItem },
                { item: nuggetItem },
                { item: nuggetItem },
                { item: nuggetItem },
                { item: nuggetItem },
                { item: nuggetItem },
                { item: nuggetItem },
                { item: nuggetItem },
                { item: nuggetItem }
            ],
            fuel: { tag: fuelTag },
            result: {
                item: ingotItem,
                count: 1
            }
        })
        event.custom({
            type: "modestmining:forging",
            cooktime: 18,
            ingredients: [
                { item: ingotItem }
            ],
            fuel: { tag: fuelTag },
            result: {
                item: nuggetItem,
                count: 9
            }
        })

        event.custom({
            type: "modestmining:forging",
            cooktime: 18,
            ingredients: [
                { item: sheetItem },
                { item: sheetItem },
                { item: sheetItem },
                { item: sheetItem },
                { item: sheetItem },
                { item: sheetItem },
                { item: sheetItem },
                { item: sheetItem },
                { item: sheetItem }
            ],
            fuel: { tag: fuelTag },
            result: {
                item: sheetBlockItem,
                count: 1
            }
        })


        // Carved
        event.custom({
            type: "modestmining:forging_shaped",
            cooktime: 18,
            key:{
                "#": { item: ingotItem }
            },
            pattern: [ "##", "##" ],
            fuel: { tag: fuelTag },
            result: {
                item: carvedItem,
                count: 1
            }
        })

        event.custom({
            type: "modestmining:forging_shaped",
            cooktime: 18,
            key:{
                "#": { item: ingotItem }
            },
            pattern: [ "# ", "##" ],
            fuel: { tag: fuelTag },
            result: {
                item: carvedStairItem,
                count: 1
            }
        })
        event.custom({
            type: "modestmining:forging_shaped",
            cooktime: 18,
            key:{
                "#": { item: ingotItem }
            },
            pattern: [ "##" ],
            fuel: { tag: fuelTag },
            result: {
                item: carvedSlabItem,
                count: 1
            }
        })
        event.custom({
            type: "modestmining:forging_shaped",
            cooktime: 18,
            key:{
                "#": { item: ingotItem }
            },
            pattern: [ "###" ],
            fuel: { tag: fuelTag },
            result: {
                item: carvedWallItem,
                count: 1
            }
        })
    }

    for (let metalSet of metalSets) {
        let ingot = metalSet[0];
        let ingotItem = `${ingot[0]}:${ingot[1]}`;
        let nugget = metalSet[1];
        let nuggetItem = `${nugget[0]}:${nugget[1]}`;
        let sheet = metalSet[2];
        let sheetItem = `${sheet[0]}:${sheet[1]}`;
        let block = metalSet[3];
        let blockItem = `${block[0]}:${block[1]}`;
        let sheetBlock = metalSet[4];
        let sheetBlockItem = `${sheetBlock[0]}:${sheetBlock[1]}`;
        let carved = metalSet[5];
        let carvedItem = `${carved[0]}:${carved[1]}`;
        let carvedStair = metalSet[6];
        let carvedStairItem = `${carvedStair[0]}:${carvedStair[1]}`;
        let carvedSlab = metalSet[7];
        let carvedSlabItem = `${carvedSlab[0]}:${carvedSlab[1]}`;
        let carvedWall = metalSet[8];
        let carvedWallItem = `${carvedWall[0]}:${carvedWall[1]}`;
        let cut = metalSet[9];
        let cutItem = `${cut[0]}:${cut[1]}`;
        let cutStair = metalSet[10];
        let cutStairItem = `${cutStair[0]}:${cutStair[1]}`;
        let cutSlab = metalSet[11];
        let cutSlabItem = `${cutSlab[0]}:${cutSlab[1]}`;
        let cutWall = metalSet[12];
        let cutWallItem = `${cutWall[0]}:${cutWall[1]}`;
        let cubed = metalSet[13];
        let cubedItem = `${cubed[0]}:${cubed[1]}`;
        let cubedStair = metalSet[14];
        let cubedStairItem = `${cubedStair[0]}:${cubedStair[1]}`;
        let cubedSlab = metalSet[15];
        let cubedSlabItem = `${cubedSlab[0]}:${cubedSlab[1]}`;
        let cubedWall = metalSet[16];
        let cubedWallItem = `${cubedWall[0]}:${cubedWall[1]}`;
        let lined = metalSet[17];
        let linedItem = `${lined[0]}:${lined[1]}`;
        let linedStair = metalSet[18];
        let linedStairItem = `${linedStair[0]}:${linedStair[1]}`;
        let linedSlab = metalSet[19];
        let linedSlabItem = `${linedSlab[0]}:${linedSlab[1]}`;
        let linedWall = metalSet[20];
        let linedWallItem = `${linedWall[0]}:${linedWall[1]}`;
        let fuel = metalSet[21];
        let fuelTag = `${fuel[0]}:${fuel[1]}`;

        // Ingots
        event.custom({
            type: "modestmining:forging",
            cooktime: 18,
            ingredients: [
                { item: blockItem }
            ],
            fuel: { tag: fuelTag },
            result: {
                item: ingotItem,
                count: 9
            }
        })

        event.custom({
            type: "modestmining:forging",
            cooktime: 18,
            ingredients: [
                { item: sheetBlockItem }
            ],
            fuel: { tag: fuelTag },
            result: {
                item: sheetItem,
                count: 9
            }
        })
    }

    for (let oreSet of oreSets) {
        let Oingot = oreSet[0];
        let OingotItem = `${Oingot[0]}:${Oingot[1]}`;
        let Onugget = oreSet[1];
        let OnuggetItem = `${Onugget[0]}:${Onugget[1]}`;
        let Osheet = oreSet[2];
        let OsheetItem = `${Osheet[0]}:${Osheet[1]}`;
        let Oblock = oreSet[3];
        let OblockItem = `${Oblock[0]}:${Oblock[1]}`;
        let OsheetBlock = oreSet[4];
        let OsheetBlockItem = `${OsheetBlock[0]}:${OsheetBlock[1]}`;
        let Ofuel = oreSet[21];
        let OfuelTag = `${Ofuel[0]}:${Ofuel[1]}`;
        let OrawNugget = oreSet[22];
        let OrawNuggetItem = `${OrawNugget[0]}:${OrawNugget[1]}`;
        let Oraw = oreSet[23];
        let OrawItem = `${Oraw[0]}:${Oraw[1]}`;
        let Odust = oreSet[24];
        let OdustItem = `${Odust[0]}:${Odust[1]}`;


        // Ores
        event.custom({
            type: "modestmining:forging",
            cooktime: 432,
            ingredients: [
                { item: OrawNuggetItem },
                { item: OrawNuggetItem },
                { item: OrawNuggetItem },
                { item: OrawNuggetItem },
                { item: OrawNuggetItem },
                { item: OrawNuggetItem },
                { item: OrawNuggetItem },
                { item: OrawNuggetItem },
                { item: OrawNuggetItem }
            ],
            fuel: { tag: OfuelTag },
            result: {
                item: OingotItem,
                count: 1
            }
        })
        event.custom({
            type: "modestmining:forging",
            cooktime: 864,
            ingredients: [
                { item: OrawItem },
                { item: OrawItem },
                { item: OrawItem },
                { item: OrawItem },
                { item: OrawItem },
                { item: OrawItem },
                { item: OrawItem },
                { item: OrawItem },
                { item: OrawItem }
            ],
            fuel: { tag: OfuelTag },
            result: {
                item: OblockItem,
                count: 1
            }
        })
        event.custom({
            type: "modestmining:forging",
            cooktime: 864,
            ingredients: [
                { item: OdustItem },
                { item: OdustItem },
                { item: OdustItem },
                { item: OdustItem },
                { item: OdustItem },
                { item: OdustItem },
                { item: OdustItem },
                { item: OdustItem },
                { item: OdustItem }
            ],
            fuel: { tag: OfuelTag },
            result: {
                item: OblockItem,
                count: 1
            }
        })
    }
})