//<profession:minecraft:toolsmith>
import crafttweaker.api.villagers.VillagerTrades;
import crafttweaker.api.item.IItemStack;
for i in 0 .. 5 {
    villagerTrades.removeAllTrades(<profession:minecraft:toolsmith>, i + 1);
}
// villagerTrades.addTrade(<profession:minecraft:toolsmith>, villagerLevel as int, input1 as ItemStack, forSale as ItemStack, 5, 10, 0.05);
//以物换物/绿宝石
// villagerTrades.addTrade(<profession:minecraft:toolsmith>, villagerLevel as int, input1 as ItemStack, input2 as ItemStack, forSale as ItemStack, 5, 10, 0.05);
//双输入
// villagerTrades.addTrade(<profession:minecraft:toolsmith>, villagerLevel as int, emeralds as int, forSale as ItemStack, 5, 10, 0.05);
//以绿宝石买物
var input1 as IItemStack[] = [
    <item:minecraft:iron_pickaxe>,
    <item:minecraft:iron_shovel>
];
var inputDiamond as IItemStack[] = [
    <item:minecraft:diamond_pickaxe>,
    <item:minecraft:diamond_shovel>
];
for i in input1{
    villagerTrades.addTrade(<profession:minecraft:toolsmith>, 1, i, <item:minecraft:emerald> * 8, 5, 10, 0.05); 
}
for i in inputDiamond{
    villagerTrades.addTrade(<profession:minecraft:toolsmith>, 1, i, <item:minecraft:emerald> * 17, 5, 10, 0.05); 
}
//一级交易





var output2 as IItemStack[] = [
    <item:create_stuff_additions:brass_portable_drill>,
    <item:create_stuff_additions:blaze_flame_thrower>,
    <item:watersource:paper_strainer>,
    <item:minecraft:lead>,
    <item:minecraft:name_tag>,
    <item:minecraft:compass>,
    <item:minecraft:clock>,
    <item:minecraft:shears>
];
for i in output2{
    villagerTrades.addTrade(<profession:minecraft:toolsmith>, 2, 6, i, 5, 10, 0.05);
}
//二级交易






var input3 as IItemStack[] = [
    <item:tconstruct:cobalt_ingot>*8,
    <item:tconstruct:tinkers_bronze_ingot>*8,
    <item:tconstruct:slimesteel_ingot>*8
];
for i in input3{
    villagerTrades.addTrade(<profession:minecraft:toolsmith>, 3, i, <item:minecraft:emerald> * 17, 5, 10, 0.05); 
}
var output3 as IItemStack[] = [
    <item:tconstruct:copper_can>,
    <item:tconstruct:earth_slime_sling>,
    <item:tconstruct:piggy_backpack> * 6,
    <item:tconstruct:efln_ball> * 3
];
for i in output3{
    villagerTrades.addTrade(<profession:minecraft:toolsmith>, 3, 9, i, 5, 10, 0.05);
}
//三级交易







var output4 as IItemStack[] = [
    <item:tconstruct:silky_cloth>,
    <item:tconstruct:necronium_bone>,
    <item:tconstruct:blazing_bone>,
    <item:tconstruct:bronze_reinforcement>,
    <item:tconstruct:cobalt_reinforcement>,
    <item:tconstruct:creative_slot>.withTag({slot: "upgrades" as string}),
    <item:tconstruct:creative_slot>.withTag({slot: "defense" as string}),
    <item:tconstruct:creative_slot>.withTag({slot: "abilities" as string}),
    <item:tconstruct:creative_slot>.withTag({slot: "souls" as string}),
    <item:create:extendo_grip>,
    <item:tconstruct:pattern> * 32,
    <item:tconstruct:necrotic_bone>,
    <item:tconstruct:bloodbone>,
    <item:tconstruct:emerald_reinforcement>,
    <item:tconstruct:gold_reinforcement>,
    <item:tconstruct:seared_reinforcement>,
    <item:tconstruct:slimesteel_reinforcement>,
    <item:tconstruct:iron_reinforcement>,
    <item:create:wand_of_symmetry>,
    <item:create:wrench>,
    <item:immersiveengineering:toolbox>
];
for i in output4{
    villagerTrades.addTrade(<profession:minecraft:toolsmith>, 4, 12, i, 5, 10, 0.05);
}
//四级交易




var output5 as IItemStack[] = [
    <item:tconstruct:dragon_scale>,
    <item:create_stuff_additions:quartz_crusher>
];
for i in output5{
    villagerTrades.addTrade(<profession:minecraft:toolsmith>, 5, 64, i, 5, 10, 0.05);
}