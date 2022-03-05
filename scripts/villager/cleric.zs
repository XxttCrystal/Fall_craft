//牧师
import crafttweaker.api.villager.MCVillagerProfession;
import crafttweaker.api.villagers.VillagerTrades;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;
// villagerTrades.addTrade(<profession:minecraft:cleric>, villagerLevel as int, input1 as ItemStack, forSale as ItemStack, maxTrades as int, xp as int, priceMult as float) as void
//以物换物/绿宝石
// villagerTrades.addTrade(<profession:minecraft:cleric>, villagerLevel as int, input1 as ItemStack, input2 as ItemStack, forSale as ItemStack, maxTrades as int, xp as int, priceMult as float) as void
//双输入
// villagerTrades.addTrade(<profession:minecraft:cleric>, villagerLevel as int, emeralds as int, forSale as ItemStack, maxTrades as int, xp as int, priceMult as float) as void
//以绿宝石买物
var level as int[] = [1,2,3,4,5];

for i in 0 .. level.length{
    villagerTrades.removeAllTrades(<profession:minecraft:cleric>, level[i]);
}
//删除交易
var buyIn1 as IItemStack[] = [
    <item:minecraft:string> * 7,
    <item:minecraft:spider_eye> * 7,
    <item:minecraft:rotten_flesh> * 7,
    <item:minecraft:bone> * 7,
    <item:tconstruct:sky_slime_ball> * 4,
    <item:minecraft:coal> * 9,
    <item:minecraft:iron_ingot> * 7,
    <item:minecraft:quartz> * 7,
    <item:minecraft:gunpowder> * 7
];
for i in buyIn1 {
    villagerTrades.addTrade(<profession:minecraft:cleric>, 1, i, <item:minecraft:emerald> * 8, 5, 10, 0.08);
}
//一级交易
var buyIn2 as IItemStack[] = [
    <item:minecraft:glowstone_dust> * 7,
    <item:minecraft:magma_cream> * 6,
    <item:minecraft:poisonous_potato>,
    <item:minecraft:blaze_powder> * 4,
    <item:minecraft:ghast_tear> * 3,
    <item:minecraft:gold_ingot> * 6,
    <item:minecraft:lapis_lazuli> * 7,
    <item:minecraft:ink_sac> * 7,
    <item:minecraft:nether_wart> * 7
];
for i in buyIn2 {
    villagerTrades.addTrade(<profession:minecraft:cleric>, 2, i, <item:minecraft:emerald> * 8, 5, 10, 0.02);
}
//2级交易
var buyIn3 as IItemStack[] = [
    <item:minecraft:prismarine_crystals> * 3,
    <item:minecraft:prismarine_shard> * 3,
    <item:minecraft:name_tag>,
    <item:minecraft:ender_pearl> * 5,
    <item:minecraft:glistering_melon_slice> * 2,
    <item:minecraft:nautilus_shell>,
    <item:minecraft:golden_carrot> * 4,
    <item:minecraft:fermented_spider_eye> * 2,
    <item:minecraft:slime_ball> * 3
];
for i in buyIn3 {
    villagerTrades.addTrade(<profession:minecraft:cleric>, 3, i, <item:minecraft:emerald> * 8, 5, 10, 0.02);
}
//三级交易
var sellOut4 as IItemStack[] = [
    <item:dungeons_gear:corrupted_pumpkin>,
    <item:dungeons_gear:thundering_quiver>,
    <item:dungeons_gear:powershaker>,
    <item:dungeons_gear:eye_of_the_guardian>,
    <item:dungeons_gear:updraft_tome>,
    <item:dungeons_gear:satchel_of_elements>,
    <item:dungeons_gear:satchel_of_snacks>,
    <item:dungeons_gear:satchel_of_elixirs>,
    <item:dungeons_gear:harpoon_quiver>,
    <item:dungeons_gear:harvester>,
    <item:dungeons_gear:ghost_cloak>,
    <item:dungeons_gear:torment_quiver>,
    <item:dungeons_gear:totem_of_regeneration>,
    <item:dungeons_gear:totem_of_shielding>,
    <item:dungeons_gear:corrupted_beacon>,
    <item:dungeons_gear:buzzy_nest>,
    <item:dungeons_gear:enchanted_grass>,
    <item:dungeons_gear:iron_hide_amulet>,
    <item:dungeons_gear:love_medallion>,
    <item:dungeons_gear:flaming_quiver>,
    <item:dungeons_gear:light_feather>,
    <item:dungeons_gear:soul_healer>,
    <item:dungeons_gear:wind_horn>,
    <item:dungeons_gear:ice_wand>,
    <item:dungeons_gear:corrupted_seeds>,
    <item:dungeons_gear:shock_powder>,
    <item:dungeons_gear:lightning_rod>,
    <item:dungeons_gear:gong_of_weakening>,
    <item:dungeons_gear:wonderful_wheat>,
    <item:dungeons_gear:tasty_bone>,
    <item:dungeons_gear:death_cap_mushroom>,
    <item:dungeons_gear:golem_kit>,
    <item:dungeons_gear:boots_of_swiftness>
];
for i in sellOut4 {
    villagerTrades.addTrade(<profession:minecraft:cleric>, 4, 15, i, 5, 10, 0.02);
}
//四级交易
var buyIn5 as IItemStack[] = [
    <item:minecraft:dragon_breath>,
    <item:minecraft:dragon_head>,
    <item:minecraft:shulker_shell> * 3,
    <item:minecraft:rabbit_foot>,
    <item:minecraft:nether_star>,
    <item:minecraft:scute>*2,
    <item:minecraft:heart_of_the_sea>,
    <item:minecraft:diamond> * 4,
    <item:minecraft:netherite_scrap> * 3
];
for i in buyIn5 {
    villagerTrades.addTrade(<profession:minecraft:cleric>, 5, i, <item:minecraft:emerald> * 14, 5, 10, 0.02);
}
var sellOut5 as IItemStack[] = [
    <item:minecraft:shulker_shell>,
    <item:create:refined_radiance>,
    <item:create:shadow_steel>
];
for i in sellOut5 {
    villagerTrades.addTrade(<profession:minecraft:cleric>, 4, 8, i, 5, 10, 0.02);
}
//五级交易
