//<profession:minecraft:weaponsmith>
import crafttweaker.api.villagers.VillagerTrades;
import crafttweaker.api.item.IItemStack;
for i in 0 .. 5 {
    villagerTrades.removeAllTrades(<profession:minecraft:weaponsmith>, i + 1);
}
//villagerTrades.addTrade(<profession:minecraft:weaponsmith>, villagerLevel as int, input1 as ItemStack, forSale as ItemStack, 5, 10, 0.05);
//以物换物/绿宝石
//villagerTrades.addTrade(<profession:minecraft:weaponsmith>, villagerLevel as int, input1 as ItemStack, input2 as ItemStack, forSale as ItemStack, 5, 10, 0.05);
//双输入
//villagerTrades.addTrade(<profession:minecraft:weaponsmith>, villagerLevel as int, emeralds as int, forSale as ItemStack, 5, 10, 0.05);
//以绿宝石买物
var input1 as IItemStack[] = [
    <item:minecraft:iron_sword>,
    <item:minecraft:shield>
];
for i in input1{
    villagerTrades.addTrade(<profession:minecraft:weaponsmith>, 1, i, <item:minecraft:emerald> * 6, 5, 10, 0.05); 
}

villagerTrades.addTrade(<profession:minecraft:weaponsmith>, 1, <item:minecraft:diamond_sword>, <item:minecraft:emerald> * 17, 5, 10, 0.05); 
//一级交易


var output2 as IItemStack[] = [
    <item:minecraft:totem_of_undying>,
    <item:minecraft:netherite_sword>,
    <item:minecraft:trident>
];
for i in output2{
    villagerTrades.addTrade(<profession:minecraft:weaponsmith>, 2, 22, i, 5, 10, 0.05);
}
//二级交易



var output3 as IItemStack[] = [
    <item:dungeons_gear:jailors_scythe>,
    <item:dungeons_gear:dancers_sword>,
    <item:dungeons_gear:sparkler>,
    <item:dungeons_gear:diamond_sword>,
    <item:dungeons_gear:hawkbrand>,
    <item:dungeons_gear:nameless_blade>,
    <item:dungeons_gear:frost_scythe>,
    <item:dungeons_gear:bee_stinger>,
    <item:dungeons_gear:freezing_foil>,
    <item:dungeons_gear:moon_dagger>,
    <item:dungeons_gear:shear_dagger>,
    <item:dungeons_gear:nightmares_bite>,
    <item:dungeons_gear:the_last_laugh>,
    <item:dungeons_gear:fighters_binding>,
    <item:dungeons_gear:mauler>,
    <item:dungeons_gear:fang_of_frost>,
    <item:dungeons_gear:soul_fist>,
    <item:dungeons_gear:stormlander>,
    <item:dungeons_gear:hammer_of_gravity>,
    <item:dungeons_gear:suns_grace>,
    <item:dungeons_gear:flail>,
    <item:dungeons_gear:whirlwind>,
    <item:dungeons_gear:cursed_axe>,
    <item:dungeons_gear:highland_axe>,
    <item:dungeons_gear:firebrand>,
    <item:dungeons_gear:battlestaff_of_terror>,
    <item:dungeons_gear:dark_katana>,
    <item:dungeons_gear:encrusted_anchor>,
    <item:dungeons_gear:eternal_knife>,
    <item:dungeons_gear:truthseeker>,
    <item:dungeons_gear:broadsword>,
    <item:dungeons_gear:heartstealer>,
    <item:dungeons_gear:great_axeblade>,
    <item:dungeons_gear:frost_slayer>,
    <item:dungeons_gear:fortune_spear>,
    <item:dungeons_gear:sponge_striker>,
    <item:dungeons_gear:mechanized_sawblade>,
    <item:dungeons_gear:bone_cudgel>,
    <item:dungeons_gear:chill_gale_knife>,
    <item:dungeons_gear:resolute_tempest_knife>,
    <item:dungeons_gear:vine_whip>,
    <item:dungeons_gear:venom_glaive>,
    <item:dungeons_gear:grave_bane>,
    <item:dungeons_gear:whispering_spear>
];
for i in output3{
    villagerTrades.addTrade(<profession:minecraft:weaponsmith>, 3, 16, i, 5, 10, 0.05);
}
//三级交易






var output4 as IItemStack[] = [
    <item:minecraft:elytra>,
    <item:mekanism:scuba_mask>.withTag({HideFlags: 2 as int})
];
for i in output4{
    villagerTrades.addTrade(<profession:minecraft:weaponsmith>, 4, 48, i, 5, 10, 0.05);
}
//四级交易







var outputMekTool as IItemStack[] = [
    <item:mekanism:meka_tool>,
    <item:mekanism:flamethrower>
];
for i in outputMekTool{
    villagerTrades.addTrade(<profession:minecraft:weaponsmith>, 5, <item:minecraft:emerald> * 64, <item:mekanism:pellet_polonium>, i, 5, 10, 0.05);
}
var outputBasic as IItemStack[] = [
    <item:mekanism:module_shearing_unit>,
    <item:mekanism:module_farming_unit>,
    <item:mekanism:module_attack_amplification_unit>,
    <item:mekanism:module_excavation_escalation_unit>,
    <item:mekanism:module_energy_unit>
];
for i in outputBasic{
    villagerTrades.addTrade(<profession:minecraft:weaponsmith>, 5, <item:mekanism:module_base>, <item:mekanism:advanced_control_circuit> * 6, i, 5, 10, 0.05);
}
var outputImproved as IItemStack[] = [
    <item:mekanism:module_silk_touch_unit>,
    <item:mekanism:module_vein_mining_unit>
];
for i in outputBasic{
    villagerTrades.addTrade(<profession:minecraft:weaponsmith>, 5, <item:mekanism:module_base>, <item:mekanism:elite_control_circuit> * 5, i, 5, 10, 0.05);
}
villagerTrades.addTrade(<profession:minecraft:weaponsmith>, 5, <item:mekanism:module_base>, <item:mekanism:ultimate_control_circuit> * 4, <item:mekanism:module_teleportation_unit>, 5, 10, 0.05);
//五级交易