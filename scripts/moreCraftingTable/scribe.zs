import mods.artisanworktables.Type;
import mods.artisanworktables.Tier;
import mods.artisanworktables.Recipe;
import crafttweaker.api.item.ItemGroup;
//Recipe.type(Type.SCRIBE)
//  .shapeless([<item:minecraft:dirt>])
//  .output(<item:minecraft:air>)
//  .register();
//无序配方

//  .fluid(<fluid:immersiveengineering:concrete> * 1000)添加流体
//  .extra(<item:minecraft:brick>, 0.75)额外凋落物
//  .tool(<tag:items:artisantools:type/hammer>, 10)添加工具
//Type.SCRIBE

//  .shaped([
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]])

//Recipe.type(Type.SCRIBE)
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

Recipe.type(Type.SCRIBE)
  .shapeless([<item:minecraft:book>,<item:mekanism:alloy_infused>,<item:immersiveengineering:generator>,<item:immersiveengineering:dynamo>])
  .output(<item:contenttweaker:bk_basic>)
  .tool(<item:artisantools:pencil_diamond>, 8)
  .restrict(Tier.WORKTABLE,Tier.WORKTABLE)
  .register();
//电学研究
Recipe.type(Type.SCRIBE)
  .shapeless([<item:minecraft:bookshelf>,<tag:items:forge:plates/steel>])
  .output(<item:artisanworktables:workstation_scribe>)
  .tool(<item:contenttweaker:bk_basic>, 0)
  .restrict(Tier.WORKTABLE,Tier.WORKTABLE)
  .register();
//高阶研究台
Recipe.type(Type.SCRIBE)
  .shapeless([<item:minecraft:bookshelf>])
  .output(<item:artisanworktables:workshop_scribe>)
  .tool(<item:artisantools:pencil_diamond>, 20)
  .restrict(Tier.WORKSTATION,Tier.WORKSTATION)
  .register();
//顶级研究台
Recipe.type(Type.SCRIBE)
  .shapeless([<item:minecraft:book>,<item:minecraft:chest>,<item:immersiveengineering:metal_barrel>,<item:create:adjustable_crate>,<item:minecraft:bucket>])
  .output(<item:contenttweaker:bk_iv>)
  .tool(<item:contenttweaker:bk_basic>, 0)
  .restrict(Tier.WORKTABLE,Tier.WORKTABLE)
  .register();
//储存研究
Recipe.type(Type.SCRIBE)
  .shapeless([<item:minecraft:book>,<item:create:cogwheel>,<item:moreminecarts:silica_steel>,<tag:items:forge:circuits>,<item:mekanism:enrichment_chamber>])
  .output(<item:contenttweaker:bk_jx>)
  .tool(<item:contenttweaker:bk_basic>, 0)
  .restrict(Tier.WORKTABLE,Tier.WORKTABLE)
  .register();
//高阶机械学研究
Recipe.type(Type.SCRIBE)
  .shapeless([<item:minecraft:book>,<item:mekanism:dye_base>,<tag:items:forge:dyes>,<tag:items:forge:dyes>,<tag:items:forge:dyes>])
  .output(<item:contenttweaker:bk_color>)
  .tool(<item:contenttweaker:bk_basic>, 0)
  .restrict(Tier.WORKTABLE,Tier.WORKTABLE)
  .register();
//颜料化学研究
//<item:mekanism:basic_chemical_tank>.withTag({mekData: {PigmentTanks: [{Tank: 0 as byte, stored: {amount: 64000 as long, pigmentName: "mekanism:red" as string}}]}})
//<item:mekanism:basic_chemical_tank>.withTag({mekData: {PigmentTanks: [{Tank: 0 as byte, stored: {amount: 64000 as long, pigmentName: "mekanism:blue" as string}}]}})
//<item:mekanism:basic_chemical_tank>.withTag({mekData: {PigmentTanks: [{Tank: 0 as byte, stored: {amount: 64000 as long, pigmentName: "mekanism:white" as string}}]}})
//<item:mekanism:basic_chemical_tank>.withTag({mekData: {GasTanks: [{Tank: 0 as byte, stored: {gasName: "mekanism:fissile_fuel" as string, amount: 64000 as long}}]}})
Recipe.type(Type.SCRIBE)
  .shapeless([<item:minecraft:book>,<tag:items:forge:storage_blocks/uranium>,<item:mekanism:basic_chemical_tank>.withTag({mekData: {PigmentTanks: [{Tank: 0 as byte, stored: {amount: 64000 as long, pigmentName: "mekanism:white" as string}}]}})])
  .output(<item:contenttweaker:bk_lb>)
  .tool(<item:contenttweaker:bk_color>, 0)
  .restrict(Tier.WORKSTATION,Tier.WORKSTATION)
  .register();
//裂变研究
Recipe.type(Type.SCRIBE)
  .shapeless([<item:minecraft:book>,<item:steampowered:cast_iron_boiler>,<tag:items:forge:dusts/salt>])
  .output(<item:contenttweaker:bk_zl>)
  .tool(<item:contenttweaker:bk_jx>, 0)
  .restrict(Tier.WORKSTATION,Tier.WORKSTATION)
  .register();
//颜料化学研究
Recipe.type(Type.SCRIBE)
  .shapeless([<item:minecraft:book>,<item:moreminecarts:silica_steel> * 64,<item:minecraft:chest> * 64,<item:mekanism:hdpe_pellet> * 32])
  .output(<item:contenttweaker:bk_imp_iv>)
  .tool(<item:contenttweaker:bk_iv>, 0)
  .restrict(Tier.WORKSTATION,Tier.WORKSTATION)
  .register();
//高阶储存研究
Recipe.type(Type.SCRIBE)
  .shapeless([<item:minecraft:book>,<item:mekanism:advanced_energy_cube>.withTag({mekData: {EnergyContainers: [{Container: 0 as byte, stored: "16000000" as string}]}}),<item:steampowered:cast_iron_steam_engine>,<item:steampowered:cast_iron_flywheel>])
  .output(<item:contenttweaker:bk_e>)
  .tool(<item:contenttweaker:bk_jx>, 0)
  .restrict(Tier.WORKSTATION,Tier.WORKSTATION)
  .register();
//高阶发电研究
//
//
Recipe.type(Type.SCRIBE)
  .shapeless([<item:minecraft:book>,<item:mekanism:elite_chemical_tank>.withTag({mekData: {GasTanks: [{Tank: 0 as byte, stored: {gasName: "mekanism:sulfuric_acid" as string, amount: 1024000 as long}}]}}),<item:mekanism:elite_energy_cube>.withTag({mekData: {EnergyContainers: [{Container: 0 as byte, stored: "64000000" as string}]}})])
  .output(<item:contenttweaker:bk_img_e>)
  .tool(<item:contenttweaker:bk_imp_iv>, 0)
  .tool(<item:contenttweaker:bk_e>, 0)
  .restrict(Tier.WORKSHOP,Tier.WORKSHOP)
  .register();
//理想电储存研究
Recipe.type(Type.SCRIBE)
  .shapeless([<item:minecraft:book>,<item:mekanism:pellet_polonium> * 7,<item:mekanism:pellet_plutonium> * 7,<item:mekanism:elite_energy_cube>.withTag({mekData: {EnergyContainers: [{Container: 0 as byte, stored: "64000000" as string}]}})])
  .output(<item:contenttweaker:bk_jj>)
  .tool(<item:contenttweaker:bk_lb>, 0)
  .restrict(Tier.WORKSHOP,Tier.WORKSHOP)
  .register();
//聚变与激光研究
var zjnllf = <item:mekanism:ultimate_energy_cube>.withTag({mekData: {EnergyContainers: [{Container: 0 as byte, stored: "256000000" as string}]}});
Recipe.type(Type.SCRIBE)
  .shapeless([<item:minecraft:book>,zjnllf,zjnllf,zjnllf])
  .output(<item:contenttweaker:bk_fwz>)
  .tool(<item:contenttweaker:bk_img_e>, 0)
  .tool(<item:contenttweaker:bk_jj>, 0)
  .restrict(Tier.WORKSHOP,Tier.WORKSHOP)
  .register();
//反物质研究！
Recipe.type(Type.SCRIBE)
  .shapeless([<item:minecraft:book>,zjnllf,<item:minecraft:ender_pearl> * 16,<item:minecraft:ender_pearl> * 16])
  .output(<item:contenttweaker:bk_tp>)
  .tool(<item:contenttweaker:bk_img_e>, 0)
  .restrict(Tier.WORKSHOP,Tier.WORKSHOP)
  .register();
//传送学研究！