//<profession:minecraft:librarian>
import crafttweaker.api.villagers.VillagerTrades;
import crafttweaker.api.item.IItemStack;
for i in 0 .. 5 {
    villagerTrades.removeAllTrades(<profession:minecraft:librarian>, i + 1);
}
// villagerTrades.addTrade(<profession:minecraft:librarian>, villagerLevel as int, input1 as ItemStack, forSale as ItemStack, 5, 10, 0.05);
//以物换物/绿宝石
// villagerTrades.addTrade(<profession:minecraft:librarian>, villagerLevel as int, input1 as ItemStack, input2 as ItemStack, forSale as ItemStack, 5, 10, 0.05);
//双输入
// villagerTrades.addTrade(<profession:minecraft:librarian>, villagerLevel as int, emeralds as int, forSale as ItemStack, 5, 10, 0.05);
//以绿宝石买物
villagerTrades.addTrade(<profession:minecraft:librarian>, 1, <item:minecraft:book> * 7, <item:minecraft:emerald> * 8, 5, 10, 0.05);
villagerTrades.addTrade(<profession:minecraft:librarian>, 1, 3, <item:minecraft:bookshelf>, 5, 10, 0.05);
//一级交易
//恐怖的交易，我想需要重构代码了（
var input2 as IItemStack[] = [
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: "minecraft:efficiency" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "minecraft:silk_touch" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "minecraft:unbreaking" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "minecraft:fortune" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "minecraft:luck_of_the_sea" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "minecraft:lure" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "minecraft:mending" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:last_sweet_dream" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:guidens_regret" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:cleansing_before_using" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:regular_customer_program" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:cutting_watermelon_dream" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: "flowingagony:outrageous_spirit" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:fresh_revenge" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: "flowingagony:trickster" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:savor_the_tasted" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:morirs_deathwish" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:morirs_lifebound" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: "flowingagony:carefully_identified" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:nimble_finger" as string}]})
];
for i in input2{
    villagerTrades.addTrade(<profession:minecraft:librarian>, 2, <item:minecraft:book>, <item:minecraft:emerald> * 17, i, 5, 20, 0.05);
}
//二级交易
var input3 as IItemStack[] = [
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "minecraft:depth_strider" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "minecraft:thorns" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "minecraft:aqua_affinity" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "minecraft:respiration" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: "minecraft:projectile_protection" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: "minecraft:blast_protection" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: "minecraft:feather_falling" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: "minecraft:fire_protection" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: "minecraft:protection" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "minecraft:sweeping" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "minecraft:looting" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: "minecraft:fire_aspect" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: "minecraft:knockback" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: "minecraft:bane_of_arthropods" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: "minecraft:smite" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: "minecraft:sharpness" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "minecraft:soul_speed" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: "minecraft:frost_walker" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "minecraft:multishot" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "minecraft:channeling" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "minecraft:riptide" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: "minecraft:impaling" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "minecraft:loyalty" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "minecraft:flame" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: "minecraft:power" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: "minecraft:punch" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "minecraft:infinity" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: "minecraft:piercing" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "minecraft:quick_charge" as string}]})
];
for i in input3{
        villagerTrades.addTrade(<profession:minecraft:librarian>, 3, <item:minecraft:book>, <item:minecraft:emerald> * 18, i, 5, 20, 0.05);
}
//三级交易
var input4 as IItemStack[] = [
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: "flowingagony:corrupted_kindred" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:lightburn_fungal_parasitic" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:scholar_of_original_sin" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:original_sin_erosion" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: "flowingagony:trickster" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:an_enchanted_golden_apple_a_day" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:deathpunk" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:savor_the_tasted" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: "flowingagony:exotic_healer" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:back_and_fill" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:resentful_soul" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:too_resentful_to_die" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: "flowingagony:outrageous_spirit" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:hatred_bloodline" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:fresh_revenge" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:shadowborn" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:prototype_chaotic" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:prototype_chaotic_type_beta" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:i_see_you_now" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:infectious_malice" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: "flowingagony:perceived_malice" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: "flowingagony:vengeance" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "create:capacity" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "create:potato_recovery" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:survival_ruse" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: "flowingagony:malice_outbreak" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:drowning_phobia" as string}]})
];
for i in input4{
    villagerTrades.addTrade(<profession:minecraft:librarian>, 4, <item:minecraft:book>, <item:minecraft:emerald> * 22, i, 5, 20, 0.05);
}
var input5 as IItemStack[] = [
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:piercing_fever" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:destruction_worship" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: "flowingagony:source_of_envy" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:covert_knife" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:thorn_in_flesh" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:eyesore" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:encious_kind" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:survival_shortcut" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:constrained_heart" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:prayer_of_pain" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:burning_phobia" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:shock_therapy" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:paper_brain" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: "flowingagony:insane_poet" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:armor_up" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:regular_customer_program" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:come_back_at_dusk" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: "flowingagony:dirty_money" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:pilferage_creed" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:nimble_finger" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:agony_screamer" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:miraculous_escape" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:cleansing_before_using" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:necessary_evil" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:morirs_deathwish" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:morirs_lifebound" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:guidens_regret" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "flowingagony:last_sweet_dream" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: "flowingagony:potential_burst" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: "flowingagony:stubborn_step" as string}]}),
    <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: "flowingagony:frivolous_step" as string}]})
];
for i in input5{
    villagerTrades.addTrade(<profession:minecraft:librarian>, 5, <item:minecraft:book>, <item:minecraft:emerald> * 24, i, 5, 20, 0.05);
}