// priority: 0

// Visit the wiki for more info - https://kubejs.com/

console.info('KubeJS Loaded')

ServerEvents.tags('block', event => {
    event.remove('minecraft:mineable/axe', 'create:gearbox')
    event.remove('minecraft:mineable/axe', 'create:andesite_casing')
    event.remove('minecraft:mineable/axe', 'create:brass_casing')
    event.remove('minecraft:mineable/axe', 'create:mechanical_press')
    event.remove('minecraft:mineable/axe', 'create:encased_chain_drive')
    event.remove('minecraft:mineable/axe', 'create:adjustable_chain_gearshift')
    event.remove('minecraft:mineable/axe', 'create:gearshift')
    event.remove('minecraft:mineable/axe', 'create:clutch')
    event.remove('minecraft:mineable/axe', 'create:portable_storage_interface')
    event.remove('minecraft:mineable/axe', 'create:portable_fluid_interface')
    event.remove('minecraft:mineable/axe', 'create:mechanical_saw')
    event.remove('minecraft:mineable/axe', 'create:mechanical_drill')
    event.remove('minecraft:mineable/axe', 'create:mechanical_plough')
    event.remove('minecraft:mineable/axe', 'create:mechanical_harvester')
    event.remove('minecraft:mineable/axe', 'create:encased_fan')
    event.remove('minecraft:mineable/axe', 'create:gantry_shaft')
    event.remove('minecraft:mineable/axe', 'create:gantry_carriage')
    event.remove('minecraft:mineable/axe', 'create:rope_pulley')
    event.remove('minecraft:mineable/axe', 'quark:chute')
    event.remove('minecraft:mineable/axe', 'create:cart_assembler')
    event.add('minecraft:mineable/pickaxe', 'quark:chute')
})