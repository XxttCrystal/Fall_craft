import mods.artisanworktables.Type;
//Type.BASIC
//Type.BLACKSMITH
//Type.CARPENTER
//Type.CHEF
//Type.CHEMIST
//Type.DESIGNER
//Type.ENGINEER
//Type.FARMER
//Type.JEWELER
//Type.MAGE
//Type.MASON
//Type.POTTER
//Type.SCRIBE
//Type.TAILOR
//Type.TANNER
import mods.artisanworktables.Tier;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
//合成肽种类

//Tier.WORKTABLE
//Tier.WORKSTATION
//Tier.WORKSHOP
//  .restrict(Tier.WORKTABLE, Tier.WORKTABLE)
import mods.artisanworktables.Recipe;

//合成肽等级

//Recipe.type(Type.ENGINEER)
//  .shapeless([<item:minecraft:dirt>])
//  .output(<item:minecraft:cobblestone>)
//  .register();
//无序配方

//Recipe.type(Type.ENGINEER)
//  .shaped([
//    [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>],
//    [<item:minecraft:cobblestone>, <item:minecraft:air>, <item:minecraft:cobblestone>],
//    [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>]])
//  .output(<item:minecraft:furnace>)
//  .register();
//规则配方

//  .restrict(Tier.WORKSHOP)提升等级
//  .tool(<tag:items:artisantools:type/hammer>, 10)添加工具
//  .fluid(<fluid:minecraft:water> * 250)添加流体
//  .extra(<item:minecraft:string>, 0.75)额外凋落物
//  .experience(20)消耗经验
//  .level(30, false)等级需求

//  .shaped([
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]])

//_______________________________________________________________

Recipe.type(Type.ENGINEER)
  .shapeless([<tag:items:forge:sheetmetals/copper>,<item:immersiveengineering:wirecoil_copper>,<tag:items:forge:plates/zinc>])
  .output(<item:artisanworktables:workstation_engineer>)
  .tool(<item:artisantools:burner_diamond>, 10)
  .fluid(<fluid:tconstruct:molten_iron> * 144)
  .restrict(Tier.WORKTABLE, Tier.WORKTABLE)
  .register();

Recipe.type(Type.ENGINEER)
  .shapeless([<tag:items:forge:sheetmetals/copper>,<item:immersiveengineering:wirecoil_copper>,<item:extendedcrafting:frame>])
  .output(<item:artisanworktables:workshop_engineer>)
  .tool(<item:artisantools:file_diamond>, 10)
  .tool(<item:artisantools:pencil_diamond>, 10)
  .fluid(<fluid:tconstruct:molten_iron> * 1440)
  .restrict(Tier.WORKSTATION,Tier.WORKSTATION)
  .register();

//升级工作台
Recipe.type(Type.ENGINEER)
  .shaped([
    [<tag:items:forge:glass>, <tag:items:forge:glass>, <tag:items:forge:glass>],
    [<tag:items:forge:glass>, <item:minecraft:air>, <item:create:cogwheel>],
    [<item:extendedcrafting:black_iron_slate>, <item:create:cogwheel>, <item:create:cogwheel>]])
  .output(<item:easy_villagers:auto_trader>)
  .tool(<item:artisantools:razor_diamond>, 10)
  .fluid(<fluid:tconstruct:molten_zinc> * 144)
  .register();
//自动交易所

var input1 as IItemStack[] = [
  <item:minecraft:iron_ingot>,
  <item:minecraft:gold_ingot>,
  <item:minecraft:blue_dye>,
  <item:minecraft:obsidian>
];
var output as IItemStack[] = [
  <item:pipez:basic_upgrade>,
  <item:pipez:improved_upgrade>,
  <item:pipez:advanced_upgrade>,
  <item:pipez:ultimate_upgrade>
];

var output2 as IItemStack[] = [
  <item:pipez:item_pipe>,
  <item:pipez:fluid_pipe>,
  <item:pipez:energy_pipe>,
  <item:pipez:gas_pipe>
];
public function upgradeWire(a as IIngredient[], b as IItemStack) as void {
  Recipe.type(Type.ENGINEER)
    .shapeless(a)
    .output(b)
    .tool(<item:artisantools:burner_diamond>,2)
    .register();
}

for i in 0 .. 4{
  recipes.removeRecipe(output[i]);
  upgradeWire([input1[i],<item:createaddition:zinc_sheet>,<item:mekanism:alloy_infused>],output[i] * 3);
  recipes.removeRecipe(output2[i]);
}

recipes.removeRecipe(<item:mekanism:basic_pressurized_tube>);
recipes.removeRecipe(<item:pipez:universal_pipe>);
craftingTable.addShaped("basic_pressurized_tube", <item:mekanism:basic_pressurized_tube>*9, [
    [<item:pipez:universal_pipe>, <item:pipez:universal_pipe>, <item:pipez:universal_pipe>],
    [<item:pipez:universal_pipe>, <item:pipez:universal_pipe>, <item:pipez:universal_pipe>],
    [<item:pipez:universal_pipe>, <item:pipez:universal_pipe>, <item:pipez:universal_pipe>]
]);
//三合一变加压
Recipe.type(Type.ENGINEER)
  .shapeless([<item:immersiveengineering:component_steel>,<tag:items:forge:plates/steel>,<tag:items:forge:wires/copper>])
  .output(<item:pipez:universal_pipe> * 6)
  .tool(<item:artisantools:file_diamond>,1)
  .register();
<recipetype:create:mixing>.addRecipe("mixing_obsidian", "none", <item:minecraft:obsidian>,[], [<fluid:minecraft:water> * 500, <fluid:minecraft:lava> * 500]);
//超多黑曜石
recipes.removeRecipe(<item:portality:generator>);
var di as IItemStack[] = [
  <item:portality:module_interdimensional>,
  <item:portality:module_items>,
  <item:portality:module_fluids>,
  <item:portality:module_energy>,
  <item:portality:controller>,
  <item:portality:frame>
];
for i in di{
  recipes.removeRecipe(i);
}
public function CSM(a as IIngredient[], b as IItemStack) as void {
  Recipe.type(Type.ENGINEER)
    .shapeless(a)
    .output(b)
    .tool(<item:artisantools:hammer_diamond>,4)
    .tool(<item:artisantools:chisel_diamond>,4)
    .tool(<item:artisantools:handsaw_diamond>,4)
    .register();
}
var outputSecond as IItemStack[] = [
  <item:portality:frame>,
  <item:portality:controller>,
  <item:portality:module_energy>,
  <item:portality:module_fluids>,
  <item:portality:module_items>,
  <item:portality:module_interdimensional>
];
var inputFirst as IItemStack[] = [
  <item:minecraft:stone>,
  <item:create:electron_tube>,
  <item:immersiveengineering:capacitor_lv>,
  <item:create:fluid_tank>,
  <item:minecraft:chest>,
  <item:moreminecarts:silica_steel>
];
var inputSecond as IItemStack[] = [
  <item:create:andesite_alloy>,
  <item:minecraft:obsidian>,
  <item:create:andesite_alloy>,
  <item:create:andesite_alloy>,
  <item:create:andesite_alloy>,
  <item:create:andesite_alloy>
];
for i in 0 .. 6{
  CSM([inputFirst[i],inputSecond[i]],outputSecond[i]);
}
//传送门配方