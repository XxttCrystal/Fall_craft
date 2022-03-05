import crafttweaker.api.blocks.MCBlockState;
import crafttweaker.api.world.MCWorld;
import crafttweaker.api.util.BlockPos;
import crafttweaker.api.villagers.VillagerTrades;

var level as int[] = [1,2,3,4,5];

for i in 0 .. level.length{
    villagerTrades.removeAllTrades(<profession:minecraft:farmer>, level[i]);
}


// VillagerTrades.addTrade(profession as MCVillagerProfession, villagerLevel as int, input1 as ItemStack, forSale as ItemStack, maxTrades as int, xp as int, priceMult as float) as void
villagerTrades.addTrade(<profession:minecraft:farmer>, 1, <item:minecraft:water_bucket>, <item:minecraft:emerald> * 2, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 1, <item:minecraft:wheat_seeds> * 9, <item:minecraft:emerald> * 8, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 1, <item:minecraft:wheat> * 7, <item:minecraft:emerald> * 8, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 1, <item:minecraft:carrot> * 7, <item:minecraft:emerald> * 8, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 1, <item:minecraft:potato> * 7, <item:minecraft:emerald> * 8, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 1, <item:farmersdelight:straw> * 7, <item:minecraft:emerald> * 8, 5, 2, 0.05);
// VillagerTrades.addTrade(profession as MCVillagerProfession, villagerLevel as int, emeralds as int, forSale as ItemStack, maxTrades as int, xp as int, priceMult as float) as void
villagerTrades.addTrade(<profession:minecraft:farmer>, 1, 2,<item:minecraft:carrot>, 20, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 1, 2,<item:minecraft:potato>, 20, 20, 0.05);
//一级交易
villagerTrades.addTrade(<profession:minecraft:farmer>, 2, <item:minecraft:sweet_berries> * 7, <item:minecraft:emerald> * 8, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 2, <item:minecraft:beetroot> * 7, <item:minecraft:emerald> * 8, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 2, <item:minecraft:beetroot_seeds> * 9, <item:minecraft:emerald> * 8, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 2, 4 ,<item:minecraft:iron_hoe>, 20, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 2, 2 ,<item:minecraft:beetroot_seeds>, 20, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 2, 2 ,<item:minecraft:composter>, 30, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 2, 2 ,<item:minecraft:bone_meal> * 5, 10, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 2, 1 ,<item:create:wheat_flour>, 10, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 2, <item:create:dough> * 3, <item:minecraft:emerald> * 8, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 2, <item:immersiveengineering:seed> * 9, <item:minecraft:emerald> * 8, 5, 2, 0.05);
//二级交易
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, <item:minecraft:cactus> * 7, <item:minecraft:emerald> * 8, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, <item:minecraft:sugar_cane> * 7, <item:minecraft:emerald> * 8, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, <item:minecraft:kelp> * 7, <item:minecraft:emerald> * 8, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, <item:minecraft:bamboo> * 7, <item:minecraft:emerald> * 8, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, <item:minecraft:milk_bucket>, <item:minecraft:emerald> * 3, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, <item:minecraft:honey_bottle> * 7, <item:minecraft:emerald> * 17, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, <item:farmersdelight:tomato> * 7, <item:minecraft:emerald> * 8, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, <item:farmersdelight:cabbage> * 7, <item:minecraft:emerald> * 8, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, <item:farmersdelight:onion> * 7, <item:minecraft:emerald> * 8, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, 2 ,<item:minecraft:sugar> * 4, 10, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, 2 ,<item:farmersdelight:tomato_seeds>, 10, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, 2 ,<item:farmersdelight:cabbage_seeds>, 10, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, 2 ,<item:farmersdelight:onion>, 10, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, 5 ,<item:minecraft:beehive>, 20, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, 7 ,<item:minecraft:diamond_hoe>, 30, 20, 0.05);
//三级交易
// VillagerTrades.addTrade(profession as MCVillagerProfession, villagerLevel as int, input1 as ItemStack, input2 as ItemStack, forSale as ItemStack, maxTrades as int, xp as int, priceMult as float) as void
villagerTrades.addTrade(<profession:minecraft:farmer>, 4, <item:minecraft:iron_hoe>, <item:minecraft:emerald> * 12, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "minecraft:unbreaking" as string}]}), 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 4, <item:minecraft:brown_mushroom> * 5, <item:minecraft:emerald> * 8, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 4, <item:minecraft:red_mushroom> * 5, <item:minecraft:emerald> * 8, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 4, <item:minecraft:melon_slice> * 7, <item:minecraft:emerald> * 8, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 4, <item:minecraft:poisonous_potato>, <item:minecraft:emerald>, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 4, <item:minecraft:pumpkin>, <item:minecraft:emerald> * 8, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 4, 2,<item:minecraft:melon_seeds>, 20, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 4, 2,<item:minecraft:pumpkin_seeds>, 20, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 4, 3,<item:minecraft:golden_apple>, 20, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 4, 2,<item:minecraft:pumpkin_pie>, 20, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 4, 1,<item:minecraft:beetroot_soup>, 20, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 4, 1,<item:minecraft:baked_potato> * 4, 20, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 4, 1,<item:create:tree_fertilizer> * 4, 20, 20, 0.05);
//四级交易
villagerTrades.addTrade(<profession:minecraft:farmer>, 5, <item:minecraft:cocoa_beans> * 3, <item:minecraft:emerald> * 8, 5, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 5, 1,<item:minecraft:jungle_log> * 4, 20, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 5, 1,<item:minecraft:cookie> * 16, 20, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 5, 2,<item:minecraft:cake>, 20, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 5, 2,<item:minecraft:enchanted_golden_apple>, 20, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 5, 1,<item:minecraft:mushroom_stew>, 20, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 5, 1,<item:minecraft:dried_kelp_block>, 20, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 5, 16,<item:minecraft:netherite_hoe>, 20, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 5, 3,<item:farmersdelight:organic_compost>, 20, 20, 0.05);
//五级交易




















