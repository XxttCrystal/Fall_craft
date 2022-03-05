import mods.artisanworktables.Type;
import mods.artisanworktables.Tier;
import mods.artisanworktables.Recipe;

//Recipe.type(Type.BLACKSMITH)
//  .shapeless([<item:minecraft:dirt>])
//  .output(<item:minecraft:cobblestone>)
//  .register();
//无序配方

//  .fluid(<fluid:minecraft:water> * 250)添加流体
//  .extra(<item:minecraft:string>, 0.75)额外凋落物
//  .tool(<tag:items:artisantools:type/hammer>, 10)添加工具
//Type.BLACKSMITH


Recipe.type(Type.BLACKSMITH)
  .shapeless([<item:artisanworktables:worktable_blacksmith>,<item:minecraft:iron_ingot>,<tag:items:forge:plates/iron>])
  .output(<item:artisanworktables:workstation_blacksmith>)
  .tool(<item:artisantools:pliers_diamond>, 200)
  .register();

Recipe.type(Type.BLACKSMITH)
  .shapeless([<item:artisanworktables:worktable_blacksmith>,<item:minecraft:iron_ingot>,<tag:items:forge:plates/iron>])
  .output(<item:artisanworktables:workshop_blacksmith>)
  .fluid(<fluid:mekanism:sulfuric_acid> * 1000)
  .tool(<item:artisantools:groover_diamond>, 200)
  .tool(<item:create:super_glue>, 30)
  .register();
//合成台

recipes.removeRecipe(<item:immersiveengineering:component_steel>);
Recipe.type(Type.BLACKSMITH)
  .shapeless([<tag:items:forge:plates/steel>])
  .output(<item:immersiveengineering:component_steel> * 3)
  .tool(<item:artisantools:driver_diamond>, 1)
  .fluid(<fluid:mekanism:sulfuric_acid>)
  .register();
//钢质零件

recipes.removeRecipe(<item:immersiveengineering:sheetmetal_steel>);
Recipe.type(Type.BLACKSMITH)
  .shapeless([<tag:items:forge:plates/steel>,<tag:items:forge:plates/steel>])
  .output(<item:immersiveengineering:sheetmetal_steel>)
  .tool(<item:artisantools:spanner_diamond>, 1)
  .fluid(<fluid:mekanism:sulfuric_acid>)
  .register();
//钢金属板块

recipes.removeRecipe(<item:immersiveengineering:steel_fence>);
Recipe.type(Type.BLACKSMITH)
  .shapeless([<item:immersiveengineering:sheetmetal_steel>])
  .output(<item:immersiveengineering:steel_fence> * 3)
  .tool(<item:artisantools:groover_diamond>, 1)
  .fluid(<fluid:mekanism:sulfuric_acid>)
  .register();
//钢栅栏

recipes.removeRecipe(<item:immersiveengineering:stick_steel>);
Recipe.type(Type.BLACKSMITH)
  .shapeless([<item:immersiveengineering:ingot_steel>])
  .output(<item:immersiveengineering:stick_steel> * 6)
  .tool(<item:artisantools:carver_diamond>, 1)
  .fluid(<fluid:mekanism:sulfuric_acid>)
  .register();
//钢棍

recipes.removeRecipe(<item:immersiveengineering:steel_post>);
Recipe.type(Type.BLACKSMITH)
  .shapeless([<item:immersiveengineering:storage_steel>])
  .output(<item:immersiveengineering:steel_post>)
  .tool(<item:artisantools:handsaw_diamond>, 1)
  .tool(<item:artisantools:groover_diamond>, 1)
  .fluid(<fluid:mekanism:sulfuric_acid>)
  .register();
//钢支架

recipes.removeRecipe(<item:immersiveengineering:steel_scaffolding_standard>);
Recipe.type(Type.BLACKSMITH)
  .shapeless([<item:immersiveengineering:stick_steel> * 4])
  .output(<item:immersiveengineering:steel_scaffolding_standard>)
  .tool(<item:artisantools:driver_diamond>, 1)
  .fluid(<fluid:mekanism:sulfuric_acid>)
  .register();
//钢支架

recipes.removeRecipe(<item:mekanism:atomic_disassembler>);

Recipe.type(Type.BLACKSMITH)
  .shaped([
    [<item:minecraft:air>, <item:mekanism:alloy_atomic>,<item:mekanism:alloy_atomic>, <item:mekanism:alloy_atomic>, <item:mekanism:alloy_atomic>],
    [<item:mekanism:alloy_atomic>, <item:mekanismgenerators:turbine_blade>,<item:mekanism:alloy_atomic>, <item:mekanism:enriched_diamond>, <item:mekanism:enriched_diamond>],
    [<item:minecraft:air>, <item:mekanism:alloy_atomic>, <item:mekanism:hdpe_rod>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:mekanism:hdpe_rod>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:immersiveengineering:steel_post>, <item:minecraft:air>, <item:minecraft:air>]])
  .output(<item:mekanism:atomic_disassembler>)
  .tool(<item:artisantools:carver_diamond>, 300)
  .tool(<item:artisantools:groover_diamond>, 300)
  .tool(<item:artisantools:handsaw_diamond>, 300)
  .register();
//原子分解机

recipes.removeRecipe(<item:mekanism:electric_bow>);

Recipe.type(Type.BLACKSMITH)
  .shaped([
    [<item:minecraft:air>, <item:mekanism:alloy_infused>, <item:mekanism:alloy_infused>, <item:mekanism:enriched_diamond>, <item:minecraft:air>],
    [<item:mekanism:alloy_infused>, <item:minecraft:air>, <item:minecraft:air>, <item:mekanism:hdpe_rod>, <item:minecraft:air>],
    [<item:mekanism:energy_tablet>, <item:minecraft:air>, <item:minecraft:air>, <item:mekanism:hdpe_rod>, <item:minecraft:air>],
    [<item:mekanism:alloy_infused>, <item:minecraft:air>, <item:minecraft:air>, <item:mekanism:hdpe_rod>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:mekanism:alloy_infused>, <item:mekanism:alloy_infused>, <item:mekanism:enriched_diamond>, <item:minecraft:air>]])
  .output(<item:mekanism:electric_bow>)
  .tool(<item:artisantools:spanner_diamond>, 300)
  .tool(<item:artisantools:groover_diamond>, 300)
  .tool(<item:artisantools:driver_diamond>, 300)
  .register();
//电动弓

recipes.removeRecipe(<item:mekanism:jetpack>);

Recipe.type(Type.BLACKSMITH)
  .shaped([
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:mekanism:alloy_infused>, <item:mekanism:alloy_infused>, <item:immersiveengineering:steel_scaffolding_standard>,<item:mekanism:alloy_infused>, <item:mekanism:alloy_infused>],
    [<item:mekanism:enriched_diamond>, <item:mekanism:advanced_chemical_tank>, <item:minecraft:air>, <item:mekanism:advanced_chemical_tank>, <item:mekanism:enriched_diamond>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]])
  .output(<item:mekanism:jetpack>)
  .tool(<item:artisantools:spanner_diamond>, 300)
  .tool(<item:artisantools:groover_diamond>, 300)
  .tool(<item:artisantools:driver_diamond>, 300)
  .register();
//喷气背包
