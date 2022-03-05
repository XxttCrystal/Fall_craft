//屠夫
import crafttweaker.api.villager.MCVillagerProfession;
import crafttweaker.api.villagers.VillagerTrades;
import crafttweaker.api.item.IItemStack;
// villagerTrades.addTrade(<profession:minecraft:butcher>, villagerLevel as int, input1 as ItemStack, forSale as ItemStack, maxTrades as int, xp as int, priceMult as float) as void
//以物换物/绿宝石
// villagerTrades.addTrade(<profession:minecraft:butcher>, villagerLevel as int, input1 as ItemStack, input2 as ItemStack, forSale as ItemStack, maxTrades as int, xp as int, priceMult as float) as void
//双输入
// villagerTrades.addTrade(<profession:minecraft:butcher>, villagerLevel as int, emeralds as int, forSale as ItemStack, maxTrades as int, xp as int, priceMult as float) as void
//以绿宝石买物

var level as int[] = [1,2,3,4,5];

for i in 0 .. level.length{
    villagerTrades.removeAllTrades(<profession:minecraft:butcher>, level[i]);
}

//常规操作：删除交易

var buyIn1 as IItemStack[] = [
    <item:minecraft:chicken>*7,
    <item:minecraft:porkchop>*7,
    <item:minecraft:mutton>*7,
    <item:minecraft:beef>*7
];
for i in buyIn1 {
    villagerTrades.addTrade(<profession:minecraft:butcher>, 1, i , <item:minecraft:emerald> * 8, 8, 10, 0.02);
}
//一级交易
villagerTrades.addTrade(<profession:minecraft:butcher>, 1, <item:minecraft:egg>*7 , <item:minecraft:emerald> * 8, 8, 10, 0.02);
var sellOut2 as IItemStack[] = [
    <item:minecraft:cooked_chicken>,
    <item:minecraft:cooked_beef>,
    <item:minecraft:cooked_mutton>,
    <item:minecraft:cooked_porkchop>
];
for i in sellOut2{
    villagerTrades.addTrade(<profession:minecraft:butcher>, 2, 2, i, 8, 10, 0.06);
}
//2级交易

var buyIn3 as IItemStack[] = [
    <item:farmersdelight:minced_beef> * 4,
    <item:minecraft:rabbit> * 2,
    <item:farmersdelight:chicken_cuts> * 7
];
for i in buyIn3 {
    villagerTrades.addTrade(<profession:minecraft:butcher>, 3, i , <item:minecraft:emerald> * 8, 8, 10, 0.02);
}
villagerTrades.addTrade(<profession:minecraft:butcher>, 3, 4, <item:dungeons_mobs:chef_hat>, 8, 10, 0.06);
villagerTrades.addTrade(<profession:minecraft:butcher>, 3, 3, <item:minecraft:iron_axe>, 8, 10, 0.06);
villagerTrades.addTrade(<profession:minecraft:butcher>, 3, 3, <item:minecraft:cooked_rabbit>, 8, 10, 0.06);
//三级交易
var buyIn4 as IItemStack[] = [
    <item:minecraft:milk_bucket>,
    <item:minecraft:charcoal> * 6
];
for i in buyIn4 {
    villagerTrades.addTrade(<profession:minecraft:butcher>, 4, i , <item:minecraft:emerald> * 8, 8, 10, 0.02);
}
villagerTrades.addTrade(<profession:minecraft:butcher>, 4, 12, <item:dungeons_gear:firebrand>, 8, 10, 0.06);
//四级交易
var buyIn5 as IItemStack[] = [
    <item:farmersdelight:ham> * 2,
    <item:watersource:coconut_chicken>
];
for i in buyIn5 {
    villagerTrades.addTrade(<profession:minecraft:butcher>, 5, i , <item:minecraft:emerald> * 8, 8, 10, 0.02);
}
villagerTrades.addTrade(<profession:minecraft:butcher>, 5, 22, <item:farmersdelight:netherite_knife>, 8, 10, 0.06);
villagerTrades.addTrade(<profession:minecraft:butcher>, 5, 22, <item:minecraft:netherite_axe>, 8, 10, 0.06);
//五级交易