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

//合成肽种类

//Tier.WORKTABLE
//Tier.WORKSTATION
//Tier.WORKSHOP
//  .restrict(Tier.WORKTABLE, Tier.WORKTABLE)
import mods.artisanworktables.Recipe;

//合成肽等级

//Recipe.type(Type.BASIC)
//  .shapeless([<item:minecraft:dirt>])
//  .output(<item:minecraft:cobblestone>)
//  .register();
//无序配方

//Recipe.type(Type.BASIC)
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


Recipe.type(Type.BASIC)
  .shaped([
    [<item:extendedcrafting:basic_catalyst>, <tag:items:forge:plates/brass>, <item:extendedcrafting:basic_catalyst>],
    [<item:extendedcrafting:black_iron_slate>, <item:artisanworktables:workshop_basic>, <item:extendedcrafting:black_iron_slate>],
    [<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_block>,<item:extendedcrafting:black_iron_slate>]])
  .output(<item:extendedcrafting:basic_table>)
  .tool(<item:artisantools:handsaw_diamond>, 300)
  .extra(<item:extendedcrafting:black_iron_ingot>, 0.75)
  .register();
  //基础工作台

Recipe.type(Type.BASIC)
  .shaped([
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<tag:items:forge:ingots/copper>, <item:extendedcrafting:basic_component>,<item:minecraft:air>],
    [<tag:items:forge:ingots/copper>, <item:minecraft:crafting_table>,<item:extendedcrafting:black_iron_slate>]])
  .output(<item:artisanworktables:workstation_basic>)
  .tool(<item:artisantools:hammer_iron>, 50)
  .register();
  //基础工作站

Recipe.type(Type.BASIC)
  .shapeless([<item:minecraft:crafting_table>,<item:extendedcrafting:basic_component>])
  .output(<item:artisanworktables:workshop_basic>)
  .tool(<item:artisantools:carver_diamond>, 300)
  .tool(<item:artisantools:cutters_iron>, 50)
  .register();
//工作站


Recipe.type(Type.BASIC)
  .shaped([
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>,<tag:items:forge:plates/iron>,<tag:items:forge:plates/iron>,<tag:items:forge:plates/iron>],
    [<tag:items:forge:plates/iron>, <item:extendedcrafting:black_iron_slate>,<item:minecraft:crafting_table>,<item:extendedcrafting:black_iron_slate>,<tag:items:forge:plates/iron>],
    [<item:minecraft:air>,<item:extendedcrafting:black_iron_slate>,<item:minecraft:air>,<item:extendedcrafting:black_iron_slate>,<item:minecraft:air>],
    [<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>,<item:minecraft:air>,<item:extendedcrafting:black_iron_slate>,<item:extendedcrafting:black_iron_slate>]])
  .output(<item:artisanworktables:worktable_blacksmith>)
  .tool(<item:artisantools:carver_diamond>, 300)
  .tool(<item:artisantools:lens_diamond>, 10)
  .tool(<item:artisantools:tsquare_diamond>, 300)
  .register();
  //钢铁工作台

Recipe.type(Type.BASIC)
  .shaped([
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:bricks>, <item:minecraft:bricks>, <item:minecraft:bricks>, <item:minecraft:air>],
    [<item:minecraft:bricks>, <item:minecraft:bricks>, <item:minecraft:bricks>, <item:minecraft:bricks>, <item:minecraft:bricks>],
    [<item:minecraft:air>, <item:extendedcrafting:black_iron_ingot>, <item:minecraft:crafting_table>, <item:extendedcrafting:black_iron_ingot>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:extendedcrafting:black_iron_slate>, <item:minecraft:air>, <item:extendedcrafting:black_iron_slate>, <item:minecraft:air>]])
  .output(<item:artisanworktables:worktable_mason>)
  .fluid(<fluid:immersiveengineering:concrete> * 2000)
  .tool(<item:artisantools:trowel_diamond>, 300)
  .tool(<item:artisantools:chisel_diamond>, 300)
  .tool(<item:artisantools:tsquare_diamond>, 300)
  .extra(<item:immersiveengineering:concrete>, 0.25)
  .extra(<item:minecraft:clay_ball>, 0.65)
  .extra(<item:minecraft:brick>, 0.1)
  .register();
//砖瓦工作台

Recipe.type(Type.BASIC)
  .shaped([
    [<tag:items:forge:leather>, <tag:items:forge:leather>, <tag:items:forge:leather>],
    [<item:minecraft:oak_planks>, <item:minecraft:oak_planks>, <item:minecraft:oak_planks>],
    [<item:minecraft:oak_planks>, <item:extendedcrafting:black_iron_ingot>,<item:minecraft:oak_planks>]])
  .output(<item:artisanworktables:worktable_tanner>)
  .tool(<item:artisantools:needle_diamond>, 20)
  .tool(<item:artisantools:punch_diamond>, 20)
  .fluid(<fluid:minecraft:water> * 250)
  .restrict(Tier.WORKSTATION,Tier.WORKSTATION)
  .register();
//皮革工作台
Recipe.type(Type.BLACKSMITH)
  .shaped([
    [<tag:items:forge:ingots/zinc>, <tag:items:forge:plates/copper>, <tag:items:forge:ingots/zinc>],
    [<item:create:andesite_casing>, <item:extendedcrafting:black_iron_block>, <item:create:andesite_casing>],
    [<item:create:andesite_alloy>, <item:minecraft:air>,<item:create:andesite_alloy>]])
  .output(<item:artisanworktables:worktable_engineer>)
  .tool(<item:artisantools:file_diamond>, 20)
  .register();
//机械师工作台

