import mods.artisanworktables.Type;
import mods.artisanworktables.Tier;
import mods.artisanworktables.Recipe;

//Recipe.type(Type.MASON)
//  .shapeless([<item:minecraft:dirt>])
//  .output(<item:minecraft:air>)
//  .register();
//无序配方

//  .fluid(<fluid:immersiveengineering:concrete> * 1000)添加流体
//  .extra(<item:minecraft:brick>, 0.75)额外凋落物
//  .tool(<tag:items:artisantools:type/hammer>, 10)添加工具
//Type.MASON

//  .shaped([
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]])

//Recipe.type(Type.MASON)
//  .shaped([
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]])
//  .output(<item:minecraft:furnace>)
//  .register();
//规则配方

//Tier.WORKTABLE
//Tier.WORKSTATION
//Tier.WORKSHOP


//_______________________________________________________________


Recipe.type(Type.MASON)
  .shapeless([<item:immersiveengineering:concrete>,<item:minecraft:bricks>,<item:extendedcrafting:black_iron_slate>,<item:extendedcrafting:basic_catalyst>])
  .output(<item:artisanworktables:workstation_mason>)
  .fluid(<fluid:immersiveengineering:concrete> * 1000)
  .tool(<item:artisantools:trowel_diamond>, 300)
  .restrict(Tier.WORKTABLE, Tier.WORKTABLE)
  .register();
//石头工作台2

Recipe.type(Type.MASON)
  .shapeless([<item:immersiveengineering:concrete>,<item:minecraft:bricks>,<item:extendedcrafting:basic_catalyst>])
  .output(<item:artisanworktables:workshop_mason>)
  .fluid(<fluid:immersiveengineering:concrete> * 4000)
  .tool(<item:artisantools:trowel_diamond>, 300)
  .tool(<item:artisantools:sifter_diamond>, 300)
  .restrict(Tier.WORKSTATION,Tier.WORKSTATION)
  .register();
//石头工作台3

recipes.removeRecipe(<item:immersiveengineering:cokebrick>);

Recipe.type(Type.MASON)
  .shapeless([<item:minecraft:bricks>,<item:notreepunching:clay_brick>])
  .output(<item:immersiveengineering:cokebrick> * 3)
  .fluid(<fluid:immersiveengineering:concrete> * 500)
  .tool(<item:artisantools:gemcutter_diamond>, 300)
  .restrict(Tier.WORKTABLE, Tier.WORKTABLE)
  .register();
//焦炉砖

recipes.removeRecipe(<item:immersiveengineering:blastbrick>);

Recipe.type(Type.MASON)
  .shapeless([<item:minecraft:blaze_powder>])
  .output(<item:immersiveengineering:blastbrick> * 3)
  .fluid(<fluid:immersiveengineering:concrete> * 1000)
  .tool(<item:artisantools:sifter_diamond>, 500)
  .restrict(Tier.WORKTABLE, Tier.WORKTABLE)
  .register();
//高炉砖

recipes.removeRecipe(<item:tconstruct:seared_faucet>);

Recipe.type(Type.MASON)
  .shapeless([<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>])
  .output(<item:tconstruct:seared_faucet> * 6)
  .fluid(<fluid:immersiveengineering:concrete> * 100)
  .tool(<item:artisantools:trowel_diamond>, 500)
  .restrict(Tier.WORKTABLE, Tier.WORKTABLE)
  .register();

recipes.removeRecipe(<item:tconstruct:seared_channel>);

Recipe.type(Type.MASON)
  .shapeless([<item:tconstruct:seared_faucet>,<item:tconstruct:seared_faucet>,<item:tconstruct:seared_faucet>])
  .output(<item:tconstruct:seared_channel> * 3)
  .fluid(<fluid:immersiveengineering:concrete> * 100)
  .tool(<item:artisantools:carver_diamond>, 500)
  .restrict(Tier.WORKSTATION,Tier.WORKSTATION)
  .register();
//浇筑二件套

recipes.removeRecipe(<item:tconstruct:seared_fuel_gauge>);

Recipe.type(Type.MASON)
  .shapeless([<item:tconstruct:seared_bricks>,<item:minecraft:glass>])
  .output(<item:tconstruct:seared_fuel_gauge>)
  .fluid(<fluid:immersiveengineering:concrete> * 250)
  .tool(<item:artisantools:carver_diamond>, 500)
  .restrict(Tier.WORKTABLE, Tier.WORKTABLE)
  .register();
//通透储罐

recipes.removeRecipe(<item:tconstruct:seared_ingot_gauge>);

Recipe.type(Type.MASON)
  .shapeless([<item:tconstruct:seared_fuel_gauge>])
  .output(<item:tconstruct:seared_ingot_gauge>)
  .fluid(<fluid:immersiveengineering:concrete> * 250)
  .tool(<item:artisantools:carver_diamond>, 500)
  .restrict(Tier.WORKTABLE, Tier.WORKTABLE)
  .register();
//通透锭储罐

recipes.removeRecipe(<item:tconstruct:seared_melter>);

Recipe.type(Type.MASON)
  .shapeless([<item:tconstruct:seared_bricks>])
  .output(<item:tconstruct:seared_melter>)
  .fluid(<fluid:immersiveengineering:concrete> * 250)
  .tool(<item:artisantools:carver_diamond>, 50)
  .tool(<item:artisantools:chisel_diamond>, 50)
  .tool(<item:artisantools:trowel_diamond>, 50)
  .restrict(Tier.WORKSHOP,Tier.WORKSHOP)
  .register();
//小型冶炼炉

recipes.removeRecipe(<item:tconstruct:seared_heater>);

Recipe.type(Type.MASON)
  .shapeless([<item:minecraft:furnace>,<item:tconstruct:seared_bricks>])
  .output(<item:tconstruct:seared_heater>)
  .fluid(<fluid:immersiveengineering:concrete> * 250)
  .tool(<item:artisantools:trowel_diamond>, 50)
  .restrict(Tier.WORKSHOP,Tier.WORKSHOP)
  .register();
//固体加热器

recipes.removeRecipe(<item:tconstruct:seared_glass>);

Recipe.type(Type.MASON)
  .shapeless([<item:minecraft:glass>,<item:tconstruct:seared_brick>])
  .output(<item:tconstruct:seared_glass> * 2)
  .fluid(<fluid:immersiveengineering:concrete> * 500)
  .tool(<item:artisantools:tsquare_diamond>, 50)
  .restrict(Tier.WORKTABLE, Tier.WORKTABLE)
  .register();
//冶炼炉玻璃

recipes.removeRecipe(<item:tconstruct:seared_fuel_tank>);

Recipe.type(Type.MASON)
  .shapeless([<item:tconstruct:seared_fuel_gauge>])
  .output(<item:tconstruct:seared_fuel_tank>)
  .fluid(<fluid:immersiveengineering:concrete> * 500)
  .tool(<item:artisantools:gemcutter_diamond>, 50)
  .restrict(Tier.WORKSTATION,Tier.WORKSTATION)
  .register();
//焦黑储罐

recipes.removeRecipe(<item:tconstruct:seared_ingot_tank>);

Recipe.type(Type.MASON)
  .shapeless([<item:tconstruct:seared_fuel_tank>])
  .output(<item:tconstruct:seared_ingot_tank>)
  .fluid(<fluid:immersiveengineering:concrete> * 500)
  .tool(<item:artisantools:gemcutter_diamond>, 50)
  .restrict(Tier.WORKSTATION,Tier.WORKSTATION)
  .register();
//焦黑锭储罐

recipes.removeRecipe(<item:tconstruct:seared_basin>);

Recipe.type(Type.MASON)
  .shapeless([<tag:items:tconstruct:seared_bricks>])
  .output(<item:tconstruct:seared_basin>)
  .fluid(<fluid:immersiveengineering:concrete> * 500)
  .tool(<item:artisantools:chisel_diamond>, 50)
  .tool(<item:artisantools:tsquare_diamond>, 50)
  .restrict(Tier.WORKSTATION,Tier.WORKSTATION)
  .register();
//焦黑锅

recipes.removeRecipe(<item:tconstruct:seared_table>);

Recipe.type(Type.MASON)
  .shapeless([<item:tconstruct:seared_stone>])
  .output(<item:tconstruct:seared_table>)
  .fluid(<fluid:immersiveengineering:concrete> * 500)
  .tool(<item:artisantools:chisel_diamond>, 50)
  .tool(<item:artisantools:gemcutter_diamond>, 50)
  .restrict(Tier.WORKSTATION,Tier.WORKSTATION)
  .register();
//焦黑浇筑台

recipes.removeRecipe(<item:tconstruct:seared_lantern>);

Recipe.type(Type.MASON)
  .shapeless([<item:minecraft:glass>,<item:tconstruct:seared_brick>])
  .output(<item:tconstruct:seared_lantern>)
  .fluid(<fluid:immersiveengineering:concrete> * 50)
  .tool(<item:artisantools:gemcutter_diamond>, 50)
  .restrict(Tier.WORKTABLE, Tier.WORKTABLE)
  .register();
//焦黑灯笼

Recipe.type(Type.MASON)
  .shapeless([<item:artisanworktables:workstation_basic>,<item:create:crafting_blueprint>])
  .output(<item:artisanworktables:worktable_designer>)
  .fluid(<fluid:immersiveengineering:concrete> * 2500)
  .tool(<item:artisantools:trowel_diamond>, 500)
  .restrict(Tier.WORKSHOP,Tier.WORKSHOP)
  .register();
//图纸设计台

recipes.removeRecipe(<item:tconstruct:scorched_brick>);

Recipe.type(Type.MASON)
  .shapeless([<item:minecraft:blaze_powder>,<item:tconstruct:seared_brick>])
  .output(<item:tconstruct:scorched_brick> * 4)
  .fluid(<fluid:tconstruct:blazing_blood> * 10)
  .restrict(Tier.WORKSHOP,Tier.WORKSHOP)
  .register();
//地狱焦黑砖
