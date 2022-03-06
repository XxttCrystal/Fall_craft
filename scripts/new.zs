import crafttweaker.util.NameUtils;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredientWithAmount;

recipes.removeRecipe(<item:steampowered:alternator>);
recipes.removeRecipe(<item:createaddition:alternator>);

//各种混合配方
var usualinputs as IIngredientWithAmount[][] = [
    [<item:minecraft:coal> * 9],
    [<item:minecraft:coal_block>]
];

for item in usualinputs {
    var name as string = NameUtils.fixing(item[0].ingredient.items[0].registryName);

    <recipetype:immersiveengineering:mixer>.addRecipe(name, <tag:fluids:minecraft:water>, item , 5000, <fluid:mekanism:sulfuric_acid>, 900);
}

//制取硫酸
var yc_inputs as IIngredientWithAmount[][] = [
    [<tag:items:minecraft:flowers>],
    [<tag:items:minecraft:saplings>],
    [<item:minecraft:cactus>],
    [<item:minecraft:bamboo>],
    [<item:minecraft:kelp>],
    [<item:minecraft:sugar_cane>],
    [<tag:items:minecraft:leaves>],
    [<tag:items:forge:mushrooms>],
    [<item:minecraft:vine>],
    [<item:minecraft:lily_pad>]
];

for j in yc_inputs {
    var names as string = NameUtils.fixing(j[0].ingredient.items[0].registryName);
    
    <recipetype:create:mixing>.addRecipe(names, "none", <fluid:immersiveengineering:ethanol> * 100, j, [<fluid:mekanism:sulfuric_acid> * 50]);
}
//制取乙醇

<recipetype:create:mixing>.addRecipe("nyq_new", "none", <item:minecraft:slime_ball> * 4, [<tag:items:forge:ores>, <tag:items:minecraft:leaves>], [<fluid:mekanism:sulfuric_acid> * 50]);
//粘液球
<recipetype:create:mixing>.addRecipe("mt", "none", <item:contenttweaker:coal_crystal>, [<item:minecraft:coal_block>], [<fluid:minecraft:water> * 1000]);
<recipetype:create:crushing>.addRecipe("hopes_and_dreams_____", [<item:minecraft:coal_block>,<item:minecraft:coal>,<item:minecraft:coal> % 50], <item:contenttweaker:coal_crystal>);
//煤炭催生
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_test")
    .transitionTo(<item:minecraft:sand>)
    .require(<item:minecraft:sand>)
    .loops(5)
    .addOutput(<item:minecraft:quartz>, 1)
    .addStep(<recipetype:create:pressing>.factory(), (rb) => rb.duration(500)));
//无限石英来源
<recipetype:create:crushing>.addRecipe("hopes_and_dreams_red", [<item:contenttweaker:redstone_crystal>], <item:minecraft:redstone_block>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_test2")
    .transitionTo(<item:contenttweaker:redstone_crystal>)
    .require(<item:contenttweaker:redstone_crystal>)
    .loops(1)
    .addOutput(<item:minecraft:redstone> * 10, 1)
    .addStep(<recipetype:create:pressing>.factory(), (rb) => rb.duration(5))
    .addStep(<recipetype:create:cutting>.factory(), (rb) => rb.duration(5))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:minecraft:sand>))
    .addStep(<recipetype:create:cutting>.factory(), (rb) => rb.duration(5))
    );
//无限红石
<recipetype:create:compacting>.addRecipe("com2", "heated", <item:create:copper_ingot>, [<item:minecraft:emerald_block>]);
//无限铜
<recipetype:create:compacting>.addRecipe("com3", "none", <item:contenttweaker:ys_crystal>, [<item:minecraft:glowstone>]);
<recipetype:create:crushing>.addRecipe("hopes_", [<item:minecraft:glowstone_dust> * 5,<item:mekanism:fluorite_gem> * 2,<item:mekanism:clump_uranium> % 60], <item:contenttweaker:ys_crystal>);
//无限萤石F石
<recipetype:create:mixing>.addRecipe("ss", "heated", <fluid:watersource:purified_water> * 1000, [], [<fluid:minecraft:water> * 1000]);
//烧水
recipes.removeRecipe(<item:create:andesite_alloy>);
craftingTable.addShaped("aa", <item:contenttweaker:not_ok_aa>*6, [
    [<item:minecraft:iron_ore>,<tag:items:forge:ores/copper>],
    [<item:minecraft:andesite>, <item:minecraft:air>]
]);
<recipetype:create:crushing>.addRecipe("hopes_1", [<item:contenttweaker:not_ok_aa>,<item:contenttweaker:not_ok_aa> % 10], <item:minecraft:andesite>);

<item:notreepunching:ceramic_bucket>.withTag({Fluid: {FluidName: "minecraft:water" as string, Amount: 1000 as int}}).transformReplace(<item:notreepunching:ceramic_bucket>);
<recipetype:create:mixing>.addRecipe("aaaaaa", "none", <item:create:andesite_alloy>, [<item:contenttweaker:not_ok_aa>], [<fluid:minecraft:water> * 300]);
<recipetype:create:splashing>.addRecipe("splashing_aa", [<item:create:andesite_alloy>, <item:create:crushed_zinc_ore> % 25], <item:contenttweaker:not_ok_aa>);
//所有安山合金配方
craftingTable.removeRecipe(<item:watersource:coconut_tree_planks>);
craftingTable.addShapeless("yh", <item:minecraft:campfire>, 
[<item:notreepunching:fire_starter>,<tag:items:minecraft:logs>,<tag:items:minecraft:logs>,<tag:items:forge:rods/wooden>,<item:notreepunching:plant_fiber>,<item:minecraft:charcoal>]);
//营火配方