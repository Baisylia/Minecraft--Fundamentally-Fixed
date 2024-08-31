// priority: 0

// Visit the wiki for more info - https://kubejs.com/

console.info('KubeJS Loaded')

ItemEvents.modification(event => {
    // Add Foods
            event.modify([
                'farmersdelight:rice',
                'sullysmod:lanternfish_slice',
                'fundamentallyfixed:worm',
                'minecraft:sugar',
                'fundamentallyfixed:wheat_flour',
                'fundamentallyfixed:cocoa_powder',
                'alexsmobs:maggot',
                'minecraft:sugar_cane',
                'culturaldelights:cut_avocado',
                'alexsmobs:mungal_spores',

                'farmersdelight:cabbage_leaf',
                'minecraft:melon_slice',
                'farmersdelight:pumpkin_slice',
                'culturaldelights:popcorn',
                'minecraft:sweet_berries',
                'neapolitan:dried_banana',
                'farmersdelight:bacon',
                'farmersdelight:chicken_cuts',
                'culturaldelights:white_eggplant',
                'brewinandchewin:flaxen_cheese_wedge',
                'minecraft:brown_mushroom',
                'minecraft:red_mushroom',
                'minecraft:crimson_fungus',
                'minecraft:warped_fungus',
                'quark:glow_shroom',
                'farmersdelight:raw_pasta',
                'spelunkery:conk_fungus',
                'alexsmobs:mint_leaves',
                'infernalexp:luminous_fungus',
                'infernalexp:shroomlight_fungus',
                'farmersdelight:salmon_slice',
                'abnormalsdelight:perch_slice',
                'minecraft:rotten_flesh',
                'minecraft:dried_kelp',

                'farmersdelight:tomato',
                'minecraft:carrot',
                'minecraft:apple',
                'minecraft:potato',
                'culturaldelights:avocado',
                'ecologics:coconut_slice',
                'ecologics:prickly_pear',
                'neapolitan:banana',
                'minecraft:chorus_fruit',
                'alexsmobs:gongylidia',
                'culturaldelights:cut_eggplant',
                'farmersdelight:minced_beef',
                'farmersdelight:mutton_chops',
                'alexsmobs:blobfish',
                'endergetic:bolloom_fruit',
                'minecraft:tropical_fish',
                'minecraft:pufferfish',
                'sullysmod:lanternfish',
                'culturaldelights:raw_calamari',
                'farmersdelight:wheat_dough',
                'culturaldelights:corn_dough',
                'naturalist:lizard_tail',
                'minecraft:phantom_membrane',
                'alexsmobs:lobster_tail',

                'farmersdelight:cabbage',
                'culturaldelights:corn_cob',
                'upgrade_aquatic:pike',
                'upgrade_aquatic:perch',
                'environmental:koi',
                'naturalist:catfish',
                'quark:crab_leg',
                'farmersdelight:fried_egg',
                'culturaldelights:tortilla_chips',
                'farmersdelight:tomato_sauce',
                'minecraft:honey_bottle',
                'autumnity:syrup_bottle',
                'upgrade_aquatic:mulberry_jam_bottle',
                'neapolitan:milk_bottle',
                'minecraft:rabbit_foot',
                'modestmining:flesh',
                'neapolitan:mint_candies',

                'culturaldelights:eggplant',
                'minecraft:porkchop',
                'minecraft:chicken',
                'minecraft:cod',
                'minecraft:salmon',
                'upgrade_aquatic:lionfish',
                'alexsmobs:flying_fish',
                'alexsmobs:cosmic_cod',
                'dolt_compat:glowshroom_colony',
                'farmersdelight:brown_mushshroom_colony',
                'farmersdelight:red_mushshroom_colony',
                'nethersdelight:crimson_fungus_colony',
                'farmersdelight:warped_fungus_colony',
                'minecraft:shroomlight',


                'minecraft:beef',
                'minecraft:mutton',
                'culturaldelights:squid',
                'culturaldelights:glow_squid',
                'sullysmod:cooked_lanternfish_slice',
                'neapolitan:chocolate_bar',
                'culturaldelights:tropical_roll',
                'culturaldelights:avocado_toast',
                'brewinandchewin:quiche_slice',
                'minecraft:cookie',
                'farmersdelight:honey_cookie',
                'farmersdelight:sweet_berry_cookie',
                'abnormals_delight:maple_cookie',
                'neapolitan:chocolate_spider_eye',
                'farmersdelight:melon_popsicle',
                'alexsmobs:boiled_emu_egg',
                'alexsmobs:lost_tentacle',

                'farmersdelight:ham',
                'farmersdelight:cooked_bacon',
                'farmersdelight:cooked_chicken_cuts',
                'culturaldelights:smoked_white_eggplant',
                'abnormals_delight:cooked_pike_slice',
                'farmersdelight:kelp_roll_slice',
                'culturaldelights:midori_roll_slice',
                'farmersdelight:cod_roll',
                'culturaldelights:egg_roll',
                'culturaldelights:rice_ball',
                'farmersdelight:apple_pie_slice',
                'farmersdelight:chocolate_pie_slice',
                'farmersdelight:sweet_berry_cheesecake_slice',
                'neapolitan:mint_chocolate',
                'minecraft:glistering_melon_slice',
                'buzzier_bees:honey_apple',
                'minecraft:melon',
                'minecraft:pumpkin',
                'neapolitan:chocolate_strawberries',


                'ecologics:cooked_prickly_pear',
                'culturaldelights:smoked_cut_eggplant',
                'farmersdelight:beef_patty',
                'farmersdelight:cooked_mutton_chops',
                'farmersdelight:cooked_salmon_slice',
                'abnormals_delight:cooked_perch_slice',
                'culturaldelights:cooked_calamari',
                'sullysmod:cooked_lanternfish',
                'naturalist:cooked_lizard_tail',
                'culturaldelights:tortilla',
                'culturaldelights:chicken_roll_slice',
                'farmersdelight:salmon_roll',
                'sullysmod:lanternfish_roll',
                'minecraft:bread',
                'brewinandchewin:pizza_slice',
                'abnormals_delight:vanilla_cake_slice',
                'abnormals_delight:chocolate_cake_slice',
                'abnormals_delight:strawberry_cake_slice',
                'farmersdelight:cabbage_rolls',
                'farmersdelight:dumplings',
                'minecraft:golden_apple',
                'minecraft:golden_carrot',
                'alexsmobs:cooked_lobster_tail',
                'neapolitan:banana_bundle',
                'alexsdelight:cooked_centipede_leg',

                'farmersdelight:cooked_rice',
                'upgrade_aquatic:cooked_pike',
                'quark:cooked_crab_leg',
                'brewinandchewin:flaxen_cheese_wheel',
                'culturaldelights:calamari_roll',
                'create:sweet_roll',
                'supplementaries:pancake',
                'abnormals_delight:maple_glazed_bacon',
                'culturaldelights:elote',
                'culturaldelights:creamed_corn',
                'minecraft:enchanted_golden_apple',
                'neapolitan:strawberry_scones',
                'neapolitan:magic_beans',
                'brewinandchewin:kimchi',
                'brewinandchewin:jerky',
                'brewinandchewin:pickled_pickles',
                'brewinandchewin:cocoa_fudge',
                'minecraft:milk_bucket',
                'incubation:scrambled_eggs',
                'neapolitan:chocolate_brick_slabs',
                'neapolitan:chocolate_tile_slab',

                'culturaldelights:smoked_eggplant',
                'minecraft:cooked_porkchop',
                'minecraft:cooked_chicken',
                'minecraft:cooked_salmon',
                'upgrade_aquatic:cooked_perch',
                'farmersdelight:kelp_roll',
                'culturaldelights:midori_roll',
                'autumnity:pumpkin_bread',
                'neapolitan:banana_bread',
                'create:honey_bucket',
                'create:chocolate_bucket',
                'brewinandchewin:kippers',

                'minecraft:cooked_mutton',
                'minecraft:cooked_beef',
                'culturaldelights:cooked_squid',
                'culturaldelights:chicken_roll',
                'farmersdelight:egg_sandwich',
                'culturaldelights:empanada',
                'farmersdelight:stuffed_potato',
                'abnormals_delight:escargot',
                'neapolitan:vanilla_milkshake',
                'neapolitan:chocolate_milkshake',
                'neapolitan:strawberry_milkshake',
                'neapolitan:vanilla_pudding',

                'farmersdelight:smoked_ham',
                'farmersdelight:fried_rice',
                'culturaldelights:fish_taco',
                'farmersdelight:barbecue_stick',
                'farmersdelight:mixed_salad',
                'neapolitan:vanilla_ice_cream',
                'neapolitan:chocolate_ice_cream',
                'neapolitan:strawberry_ice_cream',
                'neapolitan:neapolitan_ice_cream',
                'alexsdelight:maggot_salad',
                'neapolitan:chocolate_brick_stairs',
                'neapolitan:chocolate_tile_stairs',

                'farmersdelight:chicken_sandwich',
                'culturaldelights:eggplant_burger',
                'farmersdelight:bacon_sandwich',
                'culturaldelights:pork_wrap',
                'culturaldelights:chicken_taco',
                'brewinandchewin:quiche',
                'culturaldelights:hearty_salad',
                'alexsdelight:bunfungus_sandwich',
                'alexsdelight:gongylidia_bruschetta',
                'architects_palette:bread_slab',

                'farmersdelight:hamburger',
                'culturaldelights:mutton_sandwich',
                'farmersdelight:mutton_wrap',
                'culturaldelights:beef_burrito',
                'minecraft:pumpkin_pie',
                'farmersdelight:apple_pie',
                'farmersdelight:chocolate_pie',
                'farmersdelight:sweet_berry_cheesecake',
                'farmersdelight:bacon_and_eggs',

                'brewinandchewin:ham_and_cheese_sandwich',
                'brewinandchewin:pizza',
                'neapolitan:vanilla_cake',
                'neapolitan:chocolate_cake',
                'neapolitan:strawberry_cake',
                'farmersdelight:noodle_soup',
                'farmersdelight:pumpkin_soup',
                'farmersdelight:vegetable_soup',
                'farmersdelight:fish_stew',
                'delightfulmining:clam_chowder',
                'brewinandchewin:creamy_onion_soup',
                'alexsdelight:acacia_blossom_soup',
                'minecraft:mushroom_stew',
                'neapolitan:chocolate_brick_wall',
                'neapolitan:chocolate_tile_wall',

                'farmersdelight:mushroom_rice',
                'brewinandchewin:scarlet_pierogies',
                'farmersdelight:baked_cod_stew',
                'farmersdelight:bone_broth',
                'farmersdelight:ratatouille',
                'farmersdelight:squid_ink_pasta',
                'abnormals_delight:perch_with_mushrooms',
                'farmersdelight:stuffed_pumpkin',
                'farmersdelight:vegetable_noodles',
                'brewinandchewin:vegetable_omelet',
                'neapolitan:chocolate_tiles',
                'neapolitan:chocolate_bricks',
                'neapolitan:chiseled_chocolate_bricks',

                'culturaldelights:spicy_curry',
                'windswept:goat_stew',
                'farmersdelight:beef_stew',
                'farmersrespite:blazing_chili',
                'farmersdelight:roast_chicken',
                'farmersdelight:honey_glazed_ham',
                'farmersrespite:black_cod',

                'farmersdelight:roasted_mutton_chops',
                'farmersdelight:steak_and_potatoes',
                'farmersdelight:shepherds_pie',
                'culturaldelights:fried_eggplant_pasta',
                'abnormals_delight:duck_noodles',
                'alexsdelight:lobster_pasta',
                'brewinandchewin:cheesy_pasta',

                'farmersdelight:pasta_with_meatballs',
                'farmersdelight:pasta_with_mutton_chop',
                'brewinandchewin:horror_lasagna',
                'nethersdelight:warped_moldy_meat',

                'farmersdelight:horse_feed',
                'farmersdelight:dog_food',
                'abnormals_delight:slabdish',

                'architects_palette:bread_block',
                'architects_palette:crustless_bread_block',
                'caverns_and_chasms:rotten_flesh_block',
                'neapolitan:chocolate_block',
                'neapolitan:vanilla_ice_cream_block',
                'neapolitan:chocolate_ice_cream_block',
                'neapolitan:strawberry_ice_cream_block',
                'neapolitan:banana_ice_cream_block',

                'farmersdelight:stuffed_pumpkin_block',

                'farmersdelight:roast_chicken_block',
                'farmersdelight:honey_glazed_ham_block',

                'farmersdelight:shepherds_pie_block',


                'quark:clear_shard',
                'quark:white_shard',
                'quark:light_gray_shard',
                'quark:gray_shard',
                'quark:black_shard',
                'quark:brown_shard',
                'quark:red_shard',
                'quark:orange_shard',
                'quark:yellow_shard',
                'quark:lime_shard',
                'quark:green_shard',
                'quark:cyan_shard',
                'quark:light_blue_shard',
                'quark:blue_shard',
                'quark:purple_shard',
                'quark:magenta_shard',
                'quark:pink_shard'

                ], item => {
                    item.foodProperties = food => {
                        food.alwaysEdible().hunger(0).saturation(0)
                    }
                })

    // Add Level One
        event.modify([
            'farmersdelight:rice',
            'sullysmod:lanternfish_slice',
            'fundamentallyfixed:worm',
            'minecraft:sugar',
            'fundamentallyfixed:wheat_flour',
            'fundamentallyfixed:cocoa_powder',
            'alexsmobs:maggot',
            'minecraft:sugar_cane',
            'culturaldelights:cut_avocado',
            'alexsmobs:mungal_spores'
            ], item => {
                item.foodProperties = food => {
                    food.effect('feathers:energized', 40, 10, 1)
                }
            })

    // Add Level Two
            event.modify([
                'farmersdelight:cabbage_leaf',
                'minecraft:melon_slice',
                'farmersdelight:pumpkin_slice',
                'culturaldelights:popcorn',
                'minecraft:sweet_berries',
                'neapolitan:dried_banana',
                'farmersdelight:bacon',
                'farmersdelight:chicken_cuts',
                'culturaldelights:white_eggplant',
                'brewinandchewin:flaxen_cheese_wedge',
                'minecraft:brown_mushroom',
                'minecraft:red_mushroom',
                'minecraft:crimson_fungus',
                'minecraft:warped_fungus',
                'quark:glow_shroom',
                'farmersdelight:raw_pasta',
                'spelunkery:conk_fungus',
                'alexsmobs:mint_leaves',
                'infernalexp:luminous_fungus',
                'infernalexp:shroomlight_fungus',
                'farmersdelight:salmon_slice',
                'abnormalsdelight:perch_slice',
                'minecraft:rotten_flesh',
                'minecraft:dried_kelp'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 80, 10, 1)
                    }
                })

    // Add Level Three
            event.modify([
                'farmersdelight:tomato',
                'minecraft:carrot',
                'minecraft:apple',
                'minecraft:potato',
                'culturaldelights:avocado',
                'ecologics:coconut_slice',
                'ecologics:prickly_pear',
                'neapolitan:banana',
                'minecraft:chorus_fruit',
                'alexsmobs:gongylidia',
                'culturaldelights:cut_eggplant',
                'farmersdelight:minced_beef',
                'farmersdelight:mutton_chops',
                'alexsmobs:blobfish',
                'endergetic:bolloom_fruit',
                'minecraft:tropical_fish',
                'minecraft:pufferfish',
                'sullysmod:lanternfish',
                'culturaldelights:raw_calamari',
                'farmersdelight:wheat_dough',
                'culturaldelights:corn_dough',
                'naturalist:lizard_tail',
                'minecraft:phantom_membrane',
                'alexsmobs:lobster_tail'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 120, 10, 1)
                    }
                })

    // Add Level Four
            event.modify([
                'farmersdelight:cabbage',
                'culturaldelights:corn_cob',
                'upgrade_aquatic:pike',
                'upgrade_aquatic:perch',
                'environmental:koi',
                'naturalist:catfish',
                'quark:crab_leg',
                'farmersdelight:fried_egg',
                'culturaldelights:tortilla_chips',
                'farmersdelight:tomato_sauce',
                'minecraft:honey_bottle',
                'autumnity:syrup_bottle',
                'upgrade_aquatic:mulberry_jam_bottle',
                'neapolitan:milk_bottle',
                'minecraft:rabbit_foot',
                'modestmining:flesh',
                'neapolitan:mint_candies'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 160, 10, 1)
                    }
                })

    // Add Level Five
            event.modify([
                'culturaldelights:eggplant',
                'minecraft:porkchop',
                'minecraft:chicken',
                'minecraft:cod',
                'minecraft:salmon',
                'upgrade_aquatic:lionfish',
                'alexsmobs:flying_fish',
                'alexsmobs:cosmic_cod',
                'dolt_compat:glowshroom_colony',
                'farmersdelight:brown_mushshroom_colony',
                'farmersdelight:red_mushshroom_colony',
                'nethersdelight:crimson_fungus_colony',
                'farmersdelight:warped_fungus_colony',
                'minecraft:shroomlight'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 200, 10, 1)
                    }
                })

    // Add Level Six
            event.modify([
                'minecraft:beef',
                'minecraft:mutton',
                'culturaldelights:squid',
                'culturaldelights:glow_squid',
                'sullysmod:cooked_lanternfish_slice',
                'neapolitan:chocolate_bar',
                'culturaldelights:tropical_roll',
                'culturaldelights:avocado_toast',
                'brewinandchewin:quiche_slice',
                'minecraft:cookie',
                'farmersdelight:honey_cookie',
                'farmersdelight:sweet_berry_cookie',
                'abnormals_delight:maple_cookie',
                'neapolitan:chocolate_spider_eye',
                'farmersdelight:melon_popsicle',
                'alexsmobs:boiled_emu_egg',
                'alexsmobs:lost_tentacle'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 240, 10, 1)
                    }
                })

    // Add Level Seven
            event.modify([
                'farmersdelight:ham',
                'farmersdelight:cooked_bacon',
                'farmersdelight:cooked_chicken_cuts',
                'culturaldelights:smoked_white_eggplant',
                'abnormals_delight:cooked_pike_slice',
                'farmersdelight:kelp_roll_slice',
                'culturaldelights:midori_roll_slice',
                'farmersdelight:cod_roll',
                'culturaldelights:egg_roll',
                'culturaldelights:rice_ball',
                'farmersdelight:apple_pie_slice',
                'farmersdelight:chocolate_pie_slice',
                'farmersdelight:sweet_berry_cheesecake_slice',
                'neapolitan:mint_chocolate',
                'minecraft:glistering_melon_slice',
                'buzzier_bees:honey_apple',
                'minecraft:melon',
                'minecraft:pumpkin',
                'neapolitan:chocolate_strawberries'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 280, 10, 1)
                    }
                })

    // Add Level Eight
            event.modify([
                'ecologics:cooked_prickly_pear',
                'culturaldelights:smoked_cut_eggplant',
                'farmersdelight:beef_patty',
                'farmersdelight:cooked_mutton_chops',
                'farmersdelight:cooked_salmon_slice',
                'abnormals_delight:cooked_perch_slice',
                'culturaldelights:cooked_calamari',
                'sullysmod:cooked_lanternfish',
                'naturalist:cooked_lizard_tail',
                'culturaldelights:tortilla',
                'culturaldelights:chicken_roll_slice',
                'farmersdelight:salmon_roll',
                'sullysmod:lanternfish_roll',
                'minecraft:bread',
                'brewinandchewin:pizza_slice',
                'abnormals_delight:vanilla_cake_slice',
                'abnormals_delight:chocolate_cake_slice',
                'abnormals_delight:strawberry_cake_slice',
                'farmersdelight:cabbage_rolls',
                'farmersdelight:dumplings',
                'minecraft:golden_apple',
                'minecraft:golden_carrot',
                'alexsmobs:cooked_lobster_tail',
                'neapolitan:banana_bundle',
                'alexsdelight:cooked_centipede_leg'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 320, 10, 1)
                    }
                })

    // Add Level Nine
            event.modify([
                'farmersdelight:cooked_rice',
                'upgrade_aquatic:cooked_pike',
                'quark:cooked_crab_leg',
                'brewinandchewin:flaxen_cheese_wheel',
                'culturaldelights:calamari_roll',
                'create:sweet_roll',
                'supplementaries:pancake',
                'abnormals_delight:maple_glazed_bacon',
                'culturaldelights:elote',
                'culturaldelights:creamed_corn',
                'minecraft:enchanted_golden_apple',
                'neapolitan:strawberry_scones',
                'neapolitan:magic_beans',
                'brewinandchewin:kimchi',
                'brewinandchewin:jerky',
                'brewinandchewin:pickled_pickles',
                'brewinandchewin:cocoa_fudge',
                'minecraft:milk_bucket',
                'incubation:scrambled_eggs',
                'neapolitan:chocolate_brick_slabs',
                'neapolitan:chocolate_tile_slab'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 320, 15, 1)
                    }
                })

    // Add Level Ten
            event.modify([
                'culturaldelights:smoked_eggplant',
                'minecraft:cooked_porkchop',
                'minecraft:cooked_chicken',
                'minecraft:cooked_salmon',
                'upgrade_aquatic:cooked_perch',
                'farmersdelight:kelp_roll',
                'culturaldelights:midori_roll',
                'autumnity:pumpkin_bread',
                'neapolitan:banana_bread',
                'create:honey_bucket',
                'create:chocolate_bucket',
                'brewinandchewin:kippers'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 360, 15, 1)
                    }
                })

    // Add Level Eleven
            event.modify([
                'minecraft:cooked_mutton',
                'minecraft:cooked_beef',
                'culturaldelights:cooked_squid',
                'culturaldelights:chicken_roll',
                'farmersdelight:egg_sandwich',
                'culturaldelights:empanada',
                'farmersdelight:stuffed_potato',
                'abnormals_delight:escargot',
                'neapolitan:vanilla_milkshake',
                'neapolitan:chocolate_milkshake',
                'neapolitan:strawberry_milkshake',
                'neapolitan:vanilla_pudding'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 400, 15, 1)
                    }
                })

    // Add Level Twelve
            event.modify([
                'farmersdelight:smoked_ham',
                'farmersdelight:fried_rice',
                'culturaldelights:fish_taco',
                'farmersdelight:barbecue_stick',
                'farmersdelight:mixed_salad',
                'neapolitan:vanilla_ice_cream',
                'neapolitan:chocolate_ice_cream',
                'neapolitan:strawberry_ice_cream',
                'neapolitan:neapolitan_ice_cream',
                'alexsdelight:maggot_salad',
                'neapolitan:chocolate_brick_stairs',
                'neapolitan:chocolate_tile_stairs'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 400, 20, 1)
                    }
                })

    // Add Level Thirteen
            event.modify([
                'farmersdelight:chicken_sandwich',
                'culturaldelights:eggplant_burger',
                'farmersdelight:bacon_sandwich',
                'culturaldelights:pork_wrap',
                'culturaldelights:chicken_taco',
                'brewinandchewin:quiche',
                'culturaldelights:hearty_salad',
                'alexsdelight:bunfungus_sandwich',
                'alexsdelight:gongylidia_bruschetta',
                'architects_palette:bread_slab'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 440, 20, 1)
                    }
                })

    // Add Level Fourteen
            event.modify([
                'farmersdelight:hamburger',
                'culturaldelights:mutton_sandwich',
                'farmersdelight:mutton_wrap',
                'culturaldelights:beef_burrito',
                'minecraft:pumpkin_pie',
                'farmersdelight:apple_pie',
                'farmersdelight:chocolate_pie',
                'farmersdelight:sweet_berry_cheesecake',
                'farmersdelight:bacon_and_eggs'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 480, 20, 1)
                    }
                })

    // Add Level Fifteen
            event.modify([
                'brewinandchewin:ham_and_cheese_sandwich',
                'brewinandchewin:pizza',
                'neapolitan:vanilla_cake',
                'neapolitan:chocolate_cake',
                'neapolitan:strawberry_cake',
                'farmersdelight:noodle_soup',
                'farmersdelight:pumpkin_soup',
                'farmersdelight:vegetable_soup',
                'farmersdelight:fish_stew',
                'delightfulmining:clam_chowder',
                'brewinandchewin:creamy_onion_soup',
                'alexsdelight:acacia_blossom_soup',
                'minecraft:mushroom_stew',
                'neapolitan:chocolate_brick_wall',
                'neapolitan:chocolate_tile_wall'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 480, 25, 1)
                    }
                })

    // Add Level Sixteen
            event.modify([
                'farmersdelight:mushroom_rice',
                'brewinandchewin:scarlet_pierogies',
                'farmersdelight:baked_cod_stew',
                'farmersdelight:bone_broth',
                'farmersdelight:ratatouille',
                'farmersdelight:squid_ink_pasta',
                'abnormals_delight:perch_with_mushrooms',
                'farmersdelight:stuffed_pumpkin',
                'farmersdelight:vegetable_noodles',
                'brewinandchewin:vegetable_omelet',
                'neapolitan:chocolate_tiles',
                'neapolitan:chocolate_bricks',
                'neapolitan:chiseled_chocolate_bricks'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 520, 25, 1)
                    }
                })

    // Add Level Seventeen
            event.modify([
                'culturaldelights:spicy_curry',
                'windswept:goat_stew',
                'farmersdelight:beef_stew',
                'farmersrespite:blazing_chili',
                'farmersdelight:roast_chicken',
                'farmersdelight:honey_glazed_ham',
                'farmersrespite:black_cod'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 560, 25, 1)
                    }
                })

    // Add Level Eighteen
            event.modify([
                'farmersdelight:roasted_mutton_chops',
                'farmersdelight:steak_and_potatoes',
                'farmersdelight:shepherds_pie',
                'culturaldelights:fried_eggplant_pasta',
                'abnormals_delight:duck_noodles',
                'alexsdelight:lobster_pasta',
                'brewinandchewin:cheesy_pasta'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 560, 25, 1)
                    }
                })

    // Add Level Nineteen
            event.modify([
                'farmersdelight:pasta_with_meatballs',
                'farmersdelight:pasta_with_mutton_chop',
                'brewinandchewin:horror_lasagna',
                'nethersdelight:warped_moldy_meat'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 560, 30, 1)
                    }
                })

    // Add Level Twenty
            event.modify([
                'farmersdelight:horse_feed',
                'farmersdelight:dog_food',
                'abnormals_delight:slabdish'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 600, 30, 1)
                    }
                })

    // Add Level Twenty-One
            event.modify([
                'architects_palette:bread_block',
                'architects_palette:crustless_bread_block',
                'caverns_and_chasms:rotten_flesh_block',
                'neapolitan:chocolate_block',
                'neapolitan:vanilla_ice_cream_block',
                'neapolitan:chocolate_ice_cream_block',
                'neapolitan:strawberry_ice_cream_block',
                'neapolitan:banana_ice_cream_block'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 560, 30, 1)
                    }
                 })

    // Add Level Twenty-Two
            event.modify([
                'farmersdelight:stuffed_pumpkin_block'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 560, 35, 1)
                    }
                 })

    // Add Level Twenty-Three
            event.modify([
                'farmersdelight:roast_chicken_block',
                'farmersdelight:honey_glazed_ham_block'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 600, 35, 1)
                    }
                 })

    // Add Level Twenty-Four
            event.modify([
                'farmersdelight:shepherds_pie_block'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:energized', 640, 35, 1)
                    }
                 })

    //------------------------------

    // Add Cold Level One
            event.modify([
                'minecraft:rotten_flesh',
                'minecraft:spider_eye',
                'neapolitan:chocolate_spider_eye'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:cold', 400, 1, 1)
                    }
                 })

    // Add Cold Level Two
            event.modify([
                'minecraft:pufferfish'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:cold', 400, 2, 1)
                    }
                 })

    // Add Cold Level Three
            event.modify([
                'caverns_and_chasms:rotten_flesh_block'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:cold', 800, 3, 1)
                    }
                 })


    // Add Endurance Level One
            event.modify([
                'farmersdelight:bacon_and_eggs'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:endurance', 400, 1, 1)
                    }
                 })

    // Add Endurance Level Two
            event.modify([
                'abnormals_delight:duck_noodles',
                'brewinandchewin:cheesy_pasta',
                'alexsdelight:lobster_pasta',
                'farmersdelight:mushroom_rice',
                'brewinandchewin:scarlet_pierogies',
                'farmersdelight:ratatouille',
                'abnormals_delight:perch_with_mushrooms',
                'brewinandchewin:vegetable_omelet'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:endurance', 600, 1, 1)
                    }
                 })

    // Add Endurance Level Three
            event.modify([
                'farmersdelight:pasta_with_meatballs',
                'farmersdelight:pasta_with_mutton_chops',
                'brewinandchewin:horror_lasagna',
                'nethersdelight:warped_moldy_meat',
                'farmersdelight:roasted_mutton_chops',
                'farmersdelight:steak_and_potatoes',
                'farmersdelight:shepherds_pie',
                'culturaldelights:fried_eggplant_pasta',
                'farmersdelight:roast_chicken',
                'farmersdelight:honey_glazed_ham',
                'farmersdelight:squid_ink_pasta',
                'farmersdelight:stuffed_pumpkin',
                'farmersdelight:vegetable_noodles'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:endurance', 600, 2, 1)
                    }
                 })

    // Add Endurance Level Four
            event.modify([
                'farmersdelight:shepherds_pie_block',
                'farmersdelight:roast_chicken_block',
                'farmersdelight:honey_glazed_ham_block',
                'farmersdelight:stuffed_pumpkin_block'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('feathers:endurance', 1000, 2, 1)
                    }
                 })


    // Add Sugar Rush Level One
            event.modify([
                'minecraft:sugar_cane',
                'minecraft:sugar',
                'upgrade_aquatic:mulberry_jam_bottle',
                'abnormals_delight:maple_cookie',
                'farmersdelight:sweet_berry_cookie',
                'farmersdelight:honey_cookie',
                'minecraft:cookie'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('neapolitan:sugar_rush', 400, 1, 1)
                    }
                 })

    // Add Sugar Rush Level Two
            event.modify([
                'neapolitan:chocolate_tile_wall',
                'neapolitan:chocolate_brick_wall',
                'minecraft:pumpkin_pie',
                'farmersdelight:apple_pie',
                'farmersdelight:chocolate_pie',
                'farmersdelight:sweet_berry_cheesecake',
                'neapolitan:vanilla_ice_cream',
                'neapolitan:chocolate_ice_cream',
                'neapolitan:strawberry_ice_cream',
                'neapolitan:neapolitan_ice_cream',
                'neapolitan:vanilla_milkshake',
                'neapolitan:chocolate_milkshake',
                'neapolitan:strawberry_milkshake',
                'neapolitan:vanilla_pudding',
                'create:sweet_roll',
                'supplementaries:pancake',
                'brewinandchewin:cocoa_fudge',
                'neapolitan:vanilla_cake_slice',
                'neapolitan:chocolate_cake_slice',
                'neapolitan:strawberry_cake_slice'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('neapolitan:sugar_rush', 600, 1, 1)
                    }
                 })

    // Add Sugar Rush Level Three
            event.modify([
                'neapolitan:vanilla_ice_cream_block',
                'neapolitan:chocolate_ice_cream_block',
                'neapolitan:strawberry_ice_cream_block',
                'neapolitan:chocolate_bricks',
                'neapolitan:chiseled_chocolate_bricks',
                'neapolitan:chocolate_tiles',
                'neapolitan:vanilla_ice_cream_block',
                'neapolitan:chocolate_ice_cream_block',
                'neapolitan:strawberry_ice_cream_block',
                'create:honey_bucket',
                'create:chocolate_bucket'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('neapolitan:sugar_rush', 800, 2, 1)
                    }
                 })

    // Add Sugar Rush Level Four
            event.modify([
                'neapolitan:chocolate_block'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('neapolitan:sugar_rush', 800, 3, 1)
                    }
                 })


    // Add Poison Level One
            event.modify([
                'upgrade_aquatic:lionfish',
                'minecraft:poisonous_potato'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('minecraft:poison', 400, 1, 1)
                    }
                 })

    // Add Poison Level Two
            event.modify([
                'neapolitan:chocolate_spider_eye',
                'minecraft:pufferfish',
                'farmersdelight:red_mushroom_colony',
                'minecraft:red_mushroom',
                'minecraft:spider_eye'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('minecraft:poison', 600, 1, 1)
                    }
                 })


    // Add Berserking Level One
            event.modify([
                'farmersdelight:smoked_ham',
                'farmersdelight:honey_glazed_ham'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('neapolitan:berserking', 400, 1, 1)
                    }
                 })

    // Add Berserking Level Two
            event.modify([
                'farmersdelight:honey_glazed_ham_block'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('neapolitan:berserking', 800, 1, 1)
                    }
                 })


    // Add Inebriation Level One
            event.modify([
                'minecraft:warped_fungus',
                'quark:glow_shroom'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('aether:inebriation', 400, 1, 1)
                    }
                 })

    // Add Inebriation Level Two
            event.modify([
                'nethersdelight:warped_fungus_colony',
                'dolt_compat:glowshroom_colony'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('aether:inebriation', 800, 1, 1)
                    }
                 })


    // Add Spitting Level One
            event.modify([
                'culturaldelights:corn_cob',
                'culturaldelights:popcorn'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('atmospheric:spitting', 40, 1, 1)
                    }
                 })

    // Add Spitting Level Two
            event.modify([
                'farmersdelight:pumpkin_slice'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('atmospheric:spitting', 80, 1, 1)
                    }
                 })

    // Add Spitting Level Three
            event.modify([
                'minecraft:melon_slice',
                'minecraft:glistering_melon_slice'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('atmospheric:spitting', 120, 1, 1)
                    }
                 })

    // Add Spitting Level Four
            event.modify([
                'minecraft:pumpkin'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('atmospheric:spitting', 120, 2, 1)
                    }
                 })

    // Add Spitting Level Five
            event.modify([
                'minecraft:melon'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('atmospheric:spitting', 600, 4, 1)
                    }
                 })


    // Add Comfort Level One
            event.modify([
                'farmersrespite:blazing_chili',
                'farmersdelight:bone_broth',
                'culturaldelights:creamed_corn',
                'incubation:scrambled_eggs',
                'alexsmobs:boiled_emu_egg'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('farmersdelight:comfort', 120, 1, 1)
                    }
                 })


    // Add Comfort Level Two
            event.modify([
                'farmersrespite:blazing_chili',
                'farmersdelight:bone_broth',
                'culturaldelights:creamed_corn',
                'incubation:scrambled_eggs',
                'alexsmobs:boiled_emu_egg'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('farmersdelight:comfort', 400, 1, 1)
                    }
                 })

    // Add Comfort Level Three
            event.modify([
                'culturaldelights:spicy_curry',
                'windswept:goat_stew',
                'farmersdelight:baked_cod_stew',
                'farmersdelight:pumpkin_soup',
                'farmersdelight:vegetable_soup',
                'farmersdelight:fish_stew',
                'delightfulmining:clam_chowder',
                'brewinandchewin:creamy_onion_soup',
                'minecraft:mushroom_stew',
                'farmersdelight:fried_rice'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('farmersdelight:comfort', 600, 1, 1)
                    }
                 })

    // Add Comfort Level Four
            event.modify([
                'farmersdelight:beef_stew',
                'farmersdelight:noodle_soup',
                'alexsdelight:acacia_blossom_soup'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('farmersdelight:comfort', 600, 2, 1)
                    }
                 })


    // Add Nausea Level One
            event.modify([
                'alexsdelight:maggot_salad',
                'abnormals_delight:escargot',
                'minecraft:tropical_fish',
                'naturalist:lizard_tail',
                'minecraft:brown_mushroom',
                'minecraft:crimson_fungus',
                'infernalexp:luminous_fungus',
                'spelunkery:conk_fungus',
                'alexsmobs:rattlesnake_rattle',
                'infernalexp:shroomlight_fungus',
                'fundamentallyfixed:worm',
                'alexsmobs:maggot',
                'autumnity:sap_bottle',
                'atmospheric:aloe_gel_bottle'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('minecraft:nausea', 400, 1, 1)
                    }
                 })

    // Add Nausea Level Two
            event.modify([
                'farmersdelight:horse_feed',
                'farmersdelight:dog_food',
                'farmersdelight:slabdish',
                'neapolitan:magic_beans',
                'alexsmobs:cosmic_cod',
                'farmersdelight:brown_mushroom_colony',
                'nethersdelight:crimson_fungus_colony',
                'minecraft:shroomlight',
                'minecraft:phantom_membrane',
                'minecraft:red_mushroom',
                'minecraft:warped_fungus',
                'quark:glow_shroom',
                'alexsmobs:mungal_spores'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('minecraft:nausea', 600, 1, 1)
                    }
                 })

    // Add Nausea Level Three
            event.modify([
                'dolt_compat:glowshroom_colony',
                'farmersdelight:red_mushroom_colony',
                'farmersdelight:warped_fungus_colony',
                'minecraft:pufferfish',
                'upgrade_aquatic:lionfish'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('minecraft:nausea', 800, 2, 1)
                    }
                 })


    // Add Bleeding Level One
            event.modify([
                'quark:clear_shard',
                'quark:white_shard',
                'quark:light_gray_shard',
                'quark:gray_shard',
                'quark:black_shard',
                'quark:brown_shard',
                'quark:red_shard',
                'quark:orange_shard',
                'quark:yellow_shard',
                'quark:lime_shard',
                'quark:green_shard',
                'quark:cyan_shard',
                'quark:light_blue_shard',
                'quark:blue_shard',
                'quark:purple_shard',
                'quark:magenta_shard',
                'quark:pink_shard'
                ], item => {
                    item.foodProperties = food => {
                        food.effect('alexsmobs:exsanguination', 400, 0, 1)
                    }
                 })

    // Add Hearts
    event.modify([
        'minecraft:beetroot'
        ], item => {
            item.foodProperties = food => {
                food.hunger(6)
            }
        })

})