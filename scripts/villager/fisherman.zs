//<profession:minecraft:fisherman>
import crafttweaker.api.villagers.VillagerTrades;
import crafttweaker.api.item.IItemStack;
for i in 0 .. 5 {
    villagerTrades.removeAllTrades(<profession:minecraft:fisherman>, i + 1);
}
// villagerTrades.addTrade(<profession:minecraft:fisherman>, villagerLevel as int, input1 as ItemStack, forSale as ItemStack, 5, 10, 0.05);
//以物换物/绿宝石
// villagerTrades.addTrade(<profession:minecraft:fisherman>, villagerLevel as int, input1 as ItemStack, input2 as ItemStack, forSale as ItemStack, 5, 10, 0.05);
//双输入
// villagerTrades.addTrade(<profession:minecraft:fisherman>, villagerLevel as int, emeralds as int, forSale as ItemStack, 5, 10, 0.05);
//以绿宝石买物
villagerTrades.addTrade(<profession:minecraft:fisherman>, 1, <item:minecraft:cod> * 7, <item:minecraft:emerald> * 8, 5, 10, 0.05);
villagerTrades.addTrade(<profession:minecraft:fisherman>, 1, <item:minecraft:salmon> * 7, <item:minecraft:emerald> * 8, 5, 10, 0.05);
//一级交易


villagerTrades.addTrade(<profession:minecraft:fisherman>, 2, <item:minecraft:tropical_fish> * 7, <item:minecraft:emerald> * 8, 5, 10, 0.05);
villagerTrades.addTrade(<profession:minecraft:fisherman>, 2, <item:minecraft:ink_sac> * 7, <item:minecraft:emerald> * 8, 5, 10, 0.05);
//二级交易



villagerTrades.addTrade(<profession:minecraft:fisherman>, 3, <item:minecraft:tropical_fish_bucket>, <item:minecraft:emerald> * 9, 5, 10, 0.05);
villagerTrades.addTrade(<profession:minecraft:fisherman>, 3, <item:minecraft:cod_bucket>, <item:minecraft:emerald> * 8, 5, 10, 0.05);
villagerTrades.addTrade(<profession:minecraft:fisherman>, 3, <item:minecraft:salmon_bucket>, <item:minecraft:emerald> * 8, 5, 10, 0.05);
//三级交易


villagerTrades.addTrade(<profession:minecraft:fisherman>, 4, 2, <item:minecraft:fishing_rod>, 5, 10, 0.05);
villagerTrades.addTrade(<profession:minecraft:fisherman>, 4, 1, <item:minecraft:string> * 2, 5, 10, 0.05);
villagerTrades.addTrade(<profession:minecraft:fisherman>, 4, <item:minecraft:pufferfish> * 7, <item:minecraft:emerald> * 8, 5, 10, 0.05);
//四级交易





villagerTrades.addTrade(<profession:minecraft:fisherman>, 5, 1, <item:minecraft:cooked_salmon> * 2, 5, 10, 0.05);
villagerTrades.addTrade(<profession:minecraft:fisherman>, 5, 1, <item:minecraft:cooked_cod> * 2, 5, 10, 0.05);
villagerTrades.addTrade(<profession:minecraft:fisherman>, 5, <item:minecraft:campfire> * 2 , <item:minecraft:emerald> * 8, 5, 10, 0.05);
//五级交易