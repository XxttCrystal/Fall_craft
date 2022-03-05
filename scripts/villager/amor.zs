import crafttweaker.api.villagers.VillagerTrades;
import crafttweaker.api.item.IItemStack;

for i in 0 .. 5 {
    villagerTrades.removeAllTrades(<profession:minecraft:armorer>, i + 1);
}

//移除交易
var itemjiaoyifirst as IItemStack[] = [
    <item:minecraft:chainmail_helmet>,
    <item:minecraft:chainmail_chestplate>,
    <item:minecraft:chainmail_leggings>,
    <item:minecraft:chainmail_boots>,
    <item:minecraft:iron_helmet>,
    <item:minecraft:iron_chestplate>,
    <item:minecraft:iron_leggings>,
    <item:minecraft:iron_boots>,
    <item:minecraft:golden_helmet>,
    <item:minecraft:golden_chestplate>,
    <item:minecraft:golden_leggings>,
    <item:minecraft:golden_boots>,
    <item:minecraft:flint_and_steel>
];

for item in itemjiaoyifirst {
    villagerTrades.addTrade(<profession:minecraft:armorer>, 1, item, <item:minecraft:emerald> * 8, 5, 2, 0.05);
}

//一级交易
var itemsellsecond as IItemStack[] = [
    <item:minecraft:diamond_helmet>,
    <item:minecraft:diamond_chestplate>,
    <item:minecraft:diamond_leggings>,
    <item:minecraft:diamond_boots>
];

for item in itemsellsecond {
    villagerTrades.addTrade(<profession:minecraft:armorer>, 2, 5, item, 10, 20, 0.05);
}

var itemsellsecondXJHJ as IItemStack[] = [
    <item:minecraft:netherite_helmet>,
    <item:minecraft:netherite_chestplate>,
    <item:minecraft:netherite_leggings>,
    <item:minecraft:netherite_boots>
];

for item in itemsellsecondXJHJ {
    villagerTrades.addTrade(<profession:minecraft:armorer>, 2, 16, item, 10, 20, 0.05);
}

//二级交易
var itemjiaoyithird as IItemStack[] = [
    <item:immersiveengineering:armor_faraday_feet>,
    <item:immersiveengineering:armor_faraday_legs>,
    <item:immersiveengineering:armor_faraday_chest>,
    <item:immersiveengineering:armor_faraday_head>,
    <item:immersiveengineering:armor_steel_feet>,
    <item:immersiveengineering:armor_steel_legs>,
    <item:immersiveengineering:armor_steel_chest>,
    <item:immersiveengineering:armor_steel_head>,
    <item:create_stuff_additions:copper_armor_helmet>,
    <item:create_stuff_additions:copper_armor_chestplate>,
    <item:create_stuff_additions:copper_armor_leggings>,
    <item:create_stuff_additions:copper_armor_boots>,
];

for item in itemjiaoyithird{
    villagerTrades.addTrade(<profession:minecraft:armorer>,3, item , <item:minecraft:emerald> * 9, 5, 2, 0.05);
}

villagerTrades.addTrade(<profession:minecraft:armorer>, 3, 7, <item:create_stuff_additions:brass_helmet>, 10, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:armorer>, 3, 9, <item:create_stuff_additions:exoskeleton_chestplate>, 10, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:armorer>, 3, 8, <item:create_stuff_additions:copper_exoskeleton_chestplate>, 10, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:armorer>, 3, 15, <item:create_stuff_additions:refined_radiance_exoskeleton_chestplate>, 10, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:armorer>, 3, 10, <item:create_stuff_additions:encased_jet_chestplate>, 10, 20, 0.05);

//三级交易
var itemsellsecondfourth as IItemStack[] = [
    <item:mekanism:hazmat_mask>,
    <item:mekanism:hazmat_gown>,
    <item:mekanism:hazmat_pants>,
    <item:mekanism:hazmat_boots>
];

for item in itemsellsecondXJHJ {
    villagerTrades.addTrade(<profession:minecraft:armorer>, 1, item, <item:minecraft:emerald> * 9, 5, 2, 0.05);
}

var DLC as IItemStack[] = [
    <item:dungeons_gear:ember_hat>,
    <item:dungeons_gear:ember_robe>,
    <item:dungeons_gear:titans_shroud_helmet>,
    <item:dungeons_gear:titans_shroud_chestplate>,
    <item:dungeons_gear:heros_helmet>,
    <item:dungeons_gear:heros_chestplate>,
    <item:dungeons_gear:splendid_robe>,
    <item:dungeons_gear:archers_hood>,
    <item:dungeons_gear:archers_vest>,
    <item:dungeons_gear:frost_bite_chestplate>,
    <item:dungeons_gear:shadow_walker_hood>,
    <item:dungeons_gear:shadow_walker_vest>,
    <item:dungeons_gear:renegade_helmet>,
    <item:dungeons_gear:renegade_chestplate>,
    <item:dungeons_gear:curious_helmet>,
    <item:dungeons_gear:curious_chestplate>,
    <item:dungeons_gear:wither_helmet>,
    <item:dungeons_gear:wither_chestplate>,
    <item:dungeons_gear:highland_helmet>,
    <item:dungeons_gear:frost_helmet>,
    <item:dungeons_gear:frost_chestplate>,
    <item:dungeons_gear:highland_chestplate>,
    <item:dungeons_gear:stalwart_helmet>,
    <item:dungeons_gear:stalwart_chestplate>,
    <item:dungeons_gear:full_metal_helmet>,
    <item:dungeons_gear:full_metal_chestplate>,
    <item:dungeons_gear:frost_bite_helmet>,
    <item:dungeons_gear:souldancer_robe>,
    <item:dungeons_gear:souldancer_hood>,
    <item:dungeons_gear:cave_crawler_chestplate>,
    <item:dungeons_gear:cave_crawler_helmet>,
    <item:dungeons_gear:spider_vest>,
    <item:dungeons_gear:spider_hood>,
    <item:dungeons_gear:fox_vest>,
    <item:dungeons_gear:fox_hood>
];

for item in DLC {
    villagerTrades.addTrade(<profession:minecraft:armorer>, 4, 8, item, 10, 20, 0.05);
}

//四级交易
villagerTrades.addTrade(<profession:minecraft:armorer>, 5,<item:mekanism:module_base> * 7, <item:minecraft:emerald> * 13, 15, 2, 0.05);
var mekOne as IItemStack[] = [
    <item:mekanism:mekasuit_helmet>.withTag({HideFlags: 2 as int}),
    <item:mekanism:mekasuit_bodyarmor>.withTag({HideFlags: 2 as int}),
    <item:mekanism:mekasuit_pants>.withTag({HideFlags: 2 as int}),
    <item:mekanism:mekasuit_boots>.withTag({HideFlags: 2 as int})
];

for item in mekOne {
    villagerTrades.addTrade(<profession:minecraft:armorer>, 5, <item:minecraft:emerald> * 64, <item:mekanism:pellet_polonium> * 4, item, 25, 2, 0.05);
}

var mekTwo as IItemStack[] = [
        <item:mekanism:module_geiger_unit>,
        <item:mekanism:module_dosimeter_unit>,
        <item:mekanism:module_electrolytic_breathing_unit>,
        <item:mekanism:module_energy_unit>,
        <item:mekanism:module_laser_dissipation_unit>,
        <item:mekanism:module_radiation_shielding_unit>
];

for item in mekTwo {
    villagerTrades.addTrade(<profession:minecraft:armorer>, 5,<item:mekanism:basic_control_circuit> * 12, <item:mekanism:module_base>, item, 25, 2, 0.05);
}

var mekThree as IItemStack[] = [
    <item:mekanism:module_jetpack_unit>,
    <item:mekanism:module_charge_distribution_unit>,
    <item:mekanism:module_nutritional_injection_unit>,
    <item:mekanism:module_solar_recharging_unit>,
    <item:mekanism:module_vision_enhancement_unit>,
    <item:mekanism:module_frost_walker_unit>,
    <item:mekanism:module_magnetic_attraction_unit>,
    <item:mekanism:module_hydraulic_propulsion_unit>,
    <item:mekanism:module_locomotive_boosting_unit>,
    <item:mekanism:module_inhalation_purification_unit>
];

for item in mekThree {
    villagerTrades.addTrade(<profession:minecraft:armorer>, 5, <item:mekanism:elite_control_circuit> * 4, <item:mekanism:module_base>, item, 25, 2, 0.05);
}

var mekFour as IItemStack[] = [
    <item:mekanism:module_elytra_unit>,
    <item:mekanism:module_gravitational_modulating_unit>
];

for item in mekFour {
    villagerTrades.addTrade(<profession:minecraft:armorer>, 5, <item:mekanism:ultimate_control_circuit>,<item:mekanism:module_base>, item, 25, 2, 0.05);
}
