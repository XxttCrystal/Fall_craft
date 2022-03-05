//<profession:minecraft:fletcher>
import crafttweaker.api.villagers.VillagerTrades;
import crafttweaker.api.item.IItemStack;
for i in 0 .. 5 {
    villagerTrades.removeAllTrades(<profession:minecraft:fletcher>, i + 1);
}
// villagerTrades.addTrade(<profession:minecraft:fletcher>, villagerLevel as int, input1 as ItemStack, forSale as ItemStack, 5, 10, 0.05);
//以物换物/绿宝石
// villagerTrades.addTrade(<profession:minecraft:fletcher>, villagerLevel as int, input1 as ItemStack, input2 as ItemStack, forSale as ItemStack, 5, 10, 0.05);
//双输入
// villagerTrades.addTrade(<profession:minecraft:fletcher>, villagerLevel as int, emeralds as int, forSale as ItemStack, 5, 10, 0.05);
//以绿宝石买物

var buyIn1 as IItemStack[] = [
    <item:minecraft:stick> * 7,
    <item:minecraft:flint> * 7,
    <item:minecraft:feather> * 7
];
for i in buyIn1 {
    villagerTrades.addTrade(<profession:minecraft:fletcher>, 1, i , <item:minecraft:emerald> * 8, 8, 10, 0.02);
}
//一级交易





var sellOut2 as IItemStack[] = [
    <item:minecraft:arrow> * 3,
    <item:minecraft:crossbow>,
    <item:minecraft:bow>
];
for i in sellOut2 {
    villagerTrades.addTrade(<profession:minecraft:fletcher>, 2, 2, i, 5, 10, 0.05);
}
villagerTrades.addTrade(<profession:minecraft:fletcher>, 2, <item:minecraft:arrow> * 3, <item:minecraft:emerald>, <item:minecraft:spectral_arrow> * 3, 5, 10, 0.05);
//二级交易





var sellOut3 as IItemStack[] = [
    <item:dungeons_gear:bonebow>,
    <item:dungeons_gear:twin_bow>,
    <item:dungeons_gear:haunted_bow>,
    <item:dungeons_gear:soul_bow>,
    <item:dungeons_gear:bow_of_lost_souls>,
    <item:dungeons_gear:nocturnal_bow>,
    <item:dungeons_gear:shivering_bow>,
    <item:dungeons_gear:power_bow>,
    <item:dungeons_gear:elite_power_bow>,
    <item:dungeons_gear:sabrewing>,
    <item:dungeons_gear:longbow>,
    <item:dungeons_gear:guardian_bow>,
    <item:dungeons_gear:red_snake>,
    <item:dungeons_gear:hunters_promise>,
    <item:dungeons_gear:hunting_bow>,
    <item:dungeons_gear:masters_bow>,
    <item:dungeons_gear:ancient_bow>,
    <item:dungeons_gear:shortbow>,
    <item:dungeons_gear:winters_touch>,
    <item:dungeons_gear:snow_bow>,
    <item:dungeons_gear:sugar_rush>,
    <item:dungeons_gear:the_pink_scoundrel>,
    <item:dungeons_gear:the_green_menace>,
    <item:dungeons_gear:trickbow>,
    <item:dungeons_gear:love_spell_bow>,
    <item:dungeons_gear:purple_storm>,
    <item:dungeons_gear:mechanical_shortbow>,
    <item:dungeons_gear:bubble_burster>,
    <item:dungeons_gear:bubble_bow>,
    <item:dungeons_gear:weeping_vine_bow>,
    <item:dungeons_gear:twisting_vine_bow>,
    <item:dungeons_gear:echo_of_the_valley>,
    <item:dungeons_gear:burst_gale_bow>,
    <item:dungeons_gear:wind_bow>
];
for i in sellOut3 {
    villagerTrades.addTrade(<profession:minecraft:fletcher>, 3, 18, i, 5, 10, 0.05);
}
//三级交易



var sellOut4 as IItemStack[] = [
    <item:dungeons_gear:feral_soul_crossbow>,
    <item:dungeons_gear:soul_crossbow>,
    <item:dungeons_gear:voidcaller>,
    <item:dungeons_gear:rapid_crossbow>,
    <item:dungeons_gear:butterfly_crossbow>,
    <item:dungeons_gear:slayer_crossbow>,
    <item:dungeons_gear:doom_crossbow>,
    <item:dungeons_gear:the_slicer>,
    <item:dungeons_gear:heavy_crossbow>,
    <item:dungeons_gear:burst_crossbow>,
    <item:dungeons_gear:imploding_crossbow>,
    <item:dungeons_gear:firebolt_thrower>,
    <item:dungeons_gear:exploding_crossbow>,
    <item:dungeons_gear:lightning_harp_crossbow>,
    <item:dungeons_gear:harp_crossbow>,
    <item:dungeons_gear:scatter_crossbow>,
    <item:dungeons_gear:auto_crossbow>,
    <item:dungeons_gear:azure_seeker>,
    <item:dungeons_gear:dual_crossbow>,
    <item:dungeons_gear:baby_crossbow>,
    <item:dungeons_gear:cog_crossbow>,
    <item:dungeons_gear:pride_of_the_piglins>,
    <item:dungeons_gear:harpoon_crossbow>,
    <item:dungeons_gear:nautical_crossbow>,
    <item:dungeons_gear:soul_hunter_crossbow>,
    <item:dungeons_gear:corrupted_crossbow>
];
for i in sellOut4 {
    villagerTrades.addTrade(<profession:minecraft:fletcher>, 4, 15, i, 5, 10, 0.05);
}
//四级交易



villagerTrades.addTrade(<profession:minecraft:fletcher>, 5, 2, <item:dungeons_gear:arrow_bundle>, 5, 10, 0.05);
//五级交易



