import mods.artisanworktables.Type;
import mods.artisanworktables.Tier;
import mods.artisanworktables.Recipe;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
//Recipe.type(Type.DESIGNER)
//  .shapeless([<item:minecraft:dirt>])
//  .output(<item:minecraft:air>)
//  .register();
//无序配方

//  .fluid(<fluid:immersiveengineering:concrete> * 1000)添加流体
//  .extra(<item:minecraft:brick>, 0.75)额外凋落物
//  .tool(<tag:items:artisantools:type/hammer>, 10)添加工具
//Type.DESIGNER

//  .shaped([
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]])

//Recipe.type(Type.DESIGNER)
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

Recipe.type(Type.DESIGNER)
  .shapeless([<item:minecraft:bookshelf>])
  .output(<item:artisanworktables:worktable_scribe>)
  .tool(<item:artisantools:hatchet_diamond>, 8)
  .register();

Recipe.type(Type.DESIGNER)
  .shapeless([<item:minecraft:crafting_table>,<item:create:crafting_blueprint>])
  .output(<item:artisanworktables:workstation_designer>)
  .tool(<item:artisantools:pencil_diamond>, 8)
  .restrict(Tier.WORKTABLE,Tier.WORKTABLE)
  .register();

Recipe.type(Type.DESIGNER)
  .shapeless([<item:minecraft:crying_obsidian>,<item:create:crafting_blueprint>])
  .output(<item:artisanworktables:workstation_designer>)
  .tool(<item:artisantools:pencil_diamond>, 16)
  .tool(<item:artisantools:tsquare_diamond>, 8)
  .restrict(Tier.WORKSTATION,Tier.WORKSTATION)
  .register();

//三个工作台

Recipe.type(Type.DESIGNER)
  .shapeless([<item:minecraft:paper>,<item:minecraft:dragon_breath>])
  .output(<item:immersiveengineering:blueprint>.withTag({blueprint: "specialBullet" as string}))
  .tool(<item:artisantools:pencil_diamond>, 16)
  .register();
//特种子弹


//——————————基础电学
recipes.removeRecipe(<item:mekanismgenerators:solar_generator>);
Recipe.type(Type.DESIGNER)
  .shapeless([<item:mekanismgenerators:solar_panel>,<item:mekanism:steel_casing>,<item:mekanism:basic_control_circuit>,<item:mekanism:dust_quartz>])
  .output(<item:mekanismgenerators:solar_generator>)
  .tool(<item:contenttweaker:bk_basic>, 0)
  .restrict(Tier.WORKTABLE,Tier.WORKTABLE)
  .register();
//基础太阳能发电机
recipes.removeRecipe(<item:mekanismgenerators:heat_generator>);
Recipe.type(Type.DESIGNER)
  .shapeless([<item:createaddition:furnace_burner>,<item:mekanism:steel_casing>,<item:mekanism:ingot_osmium>])
  .output(<item:mekanismgenerators:heat_generator>)
  .tool(<item:contenttweaker:bk_basic>, 0)
  .restrict(Tier.WORKTABLE,Tier.WORKTABLE)
  .register();
//热力发电机
recipes.removeRecipe(<item:mekanismgenerators:wind_generator>);
Recipe.type(Type.DESIGNER)
  .shapeless([<item:mekanismgenerators:turbine_blade>,<item:create:propeller>,<item:mekanism:steel_casing>,<item:minecraft:quartz_block>,<item:minecraft:quartz_block>,<item:mekanism:basic_control_circuit>])
  .output(<item:mekanismgenerators:wind_generator>)
  .tool(<item:contenttweaker:bk_basic>, 0)
  .restrict(Tier.WORKTABLE,Tier.WORKTABLE)
  .register();
//热力发电机
recipes.removeRecipe(<item:mekanismgenerators:gas_burning_generator>);
Recipe.type(Type.DESIGNER)
  .shapeless([<item:mekanism:electrolytic_core>,<item:mekanism:steel_casing>,<item:immersiveengineering:metal_barrel>])
  .output(<item:mekanismgenerators:gas_burning_generator>)
  .tool(<item:contenttweaker:bk_basic>, 0)
  .restrict(Tier.WORKTABLE,Tier.WORKTABLE)
  .register();
//燃气发电机
recipes.removeRecipe(<item:mekanismgenerators:bio_generator>);
Recipe.type(Type.DESIGNER)
  .shapeless([<item:mekanism:bio_fuel>,<item:mekanism:steel_casing>,<item:mekanism:alloy_reinforced>])
  .output(<item:mekanismgenerators:bio_generator>)
  .tool(<item:contenttweaker:bk_basic>, 0)
  .restrict(Tier.WORKTABLE,Tier.WORKTABLE)
  .register();
//生物能发电机
recipes.removeRecipe(<item:mekanismgenerators:advanced_solar_generator>);
Recipe.type(Type.DESIGNER)
  .shapeless([<item:mekanismgenerators:solar_generator>,<item:mekanismgenerators:solar_generator>,<item:mekanism:steel_casing>,<item:minecraft:quartz_block>])
  .output(<item:mekanismgenerators:advanced_solar_generator>)
  .tool(<item:contenttweaker:bk_basic>, 0)
  .restrict(Tier.WORKTABLE,Tier.WORKTABLE)
  .register();
//生物能发电机
<recipetype:create:crushing>.addRecipe("qz_block_to_crystal", [<item:minecraft:quartz> * 4], <item:minecraft:quartz_block>);
//石英反向合成
recipes.removeRecipe(<item:mekanism:chargepad>);
Recipe.type(Type.DESIGNER)
  .shapeless([<item:immersiveengineering:charging_station>,<item:mekanism:steel_casing>,<item:minecraft:polished_blackstone_pressure_plate>])
  .output(<item:mekanism:chargepad>)
  .tool(<item:contenttweaker:bk_basic>, 0)
  .restrict(Tier.WORKTABLE,Tier.WORKTABLE)
  .register();
//充电台
recipes.removeRecipe(<item:mekanism:basic_energy_cube>);
Recipe.type(Type.DESIGNER)
  .shapeless([<item:minecraft:emerald_block>,<item:mekanism:steel_casing>,<item:immersiveengineering:steel_scaffolding_standard>,<item:mekanism:energy_tablet>])
  .output(<item:mekanism:basic_energy_cube>)
  .tool(<item:contenttweaker:bk_basic>, 0)
  .restrict(Tier.WORKTABLE,Tier.WORKTABLE)
  .register();
//基础能量立方
var deleteItems2 as IItemStack[] = [
  <item:mekanism:advanced_energy_cube>,
  <item:mekanism:elite_energy_cube>,
  <item:mekanism:ultimate_energy_cube>,
  <item:mekanism:advanced_chemical_tank>,
  <item:mekanism:elite_chemical_tank>,
  <item:mekanism:ultimate_chemical_tank>,
  <item:mekanism:advanced_fluid_tank>,
  <item:mekanism:elite_fluid_tank>,
  <item:mekanism:ultimate_fluid_tank>
];
for i in deleteItems2{
  recipes.removeRecipe(i);
}
//————————————————储存研究
recipes.removeRecipe(<item:mekanism:basic_chemical_tank>);
Recipe.type(Type.DESIGNER)
  .shapeless([<item:immersiveengineering:metal_barrel>,<item:mekanism:steel_casing>,<item:create:piston_extension_pole>])
  .output(<item:mekanism:basic_chemical_tank>)
  .tool(<item:contenttweaker:bk_iv>, 0)
  .restrict(Tier.WORKTABLE,Tier.WORKTABLE)
  .register();
//化学品储罐
recipes.removeRecipe(<item:mekanism:basic_fluid_tank>);
Recipe.type(Type.DESIGNER)
  .shapeless([<item:tconstruct:seared_glass>,<item:mekanism:steel_casing>])
  .output(<item:mekanism:basic_fluid_tank>)
  .tool(<item:contenttweaker:bk_iv>, 0)
  .restrict(Tier.WORKTABLE,Tier.WORKTABLE)
  .register();
//液体储罐
recipes.removeRecipe(<item:mekanism:logistical_sorter>);
Recipe.type(Type.DESIGNER)
  .shapeless([<item:pipez:universal_pipe>,<item:create:brass_funnel>])
  .output(<item:mekanism:logistical_sorter>)
  .tool(<item:contenttweaker:bk_iv>, 0)
  .restrict(Tier.WORKTABLE,Tier.WORKTABLE)
  .register();
//物流分类机
recipes.removeRecipe(<item:mekanism:dynamic_tank>);
Recipe.type(Type.DESIGNER)
  .shapeless([<item:create:copper_casing>,<item:mekanism:block_osmium>])
  .output(<item:mekanism:dynamic_tank> * 5)
  .tool(<item:contenttweaker:bk_iv>, 0)
  .restrict(Tier.WORKTABLE,Tier.WORKTABLE)
  .register();
//动态储罐
recipes.removeRecipe(<item:mekanism:dynamic_valve>);
Recipe.type(Type.DESIGNER)
  .shapeless([<item:mekanism:dynamic_tank>,<item:create:fluid_pipe>])
  .output(<item:mekanism:dynamic_valve>)
  .tool(<item:contenttweaker:bk_iv>, 0)
  .restrict(Tier.WORKTABLE,Tier.WORKTABLE)
  .register();
//动态储罐阀门
//_____________________________________________________高阶机械学
public function craftingEasyTireTable(a as IIngredient[], b as IItemStack, tool as IItemStack) as void {
  recipes.removeRecipe(b);
  Recipe.type(Type.DESIGNER)
    .shapeless(a)
    .output(b)
    .tool(tool,0)
    .restrict(Tier.WORKTABLE,Tier.WORKTABLE)
    .register();
}


craftingEasyTireTable([<item:create:attribute_filter>,<item:create:filter>,<item:minecraft:hopper>,<item:moreminecarts:silica_steel_block>],
<item:mekanism:oredictionificator>,
<item:contenttweaker:bk_jx>);
//标签转换器
craftingEasyTireTable([<item:moreminecarts:silica_steel_block>,<item:minecraft:crafting_table>,<item:create:brass_hand>,<item:minecraft:chest>],
<item:mekanism:formulaic_assemblicator>,
<item:contenttweaker:bk_jx>);
//公式装配器
craftingEasyTireTable([<item:moreminecarts:silica_steel_block>,<item:mekanism:basic_chemical_tank>,<item:mekanism:enriched_diamond>,<item:mekanismgenerators:turbine_blade>],
<item:mekanism:chemical_oxidizer>,
<item:contenttweaker:bk_jx>);
//化学氧化机
craftingEasyTireTable([<item:moreminecarts:silica_steel_block>,<item:create:spout>,<item:immersiveengineering:fluid_pipe>],
<item:mekanism:chemical_infuser>,
<item:contenttweaker:bk_jx>);
//化学灌注机
craftingEasyTireTable([<item:moreminecarts:silica_steel_block>,<item:mekanism:basic_chemical_tank>,<item:steampowered:cast_iron_boiler>,<item:mekanismgenerators:turbine_blade>],
<item:mekanism:chemical_injection_chamber>,
<item:contenttweaker:bk_jx>);
//化学灌注机
craftingEasyTireTable([<item:moreminecarts:silica_steel_block>,<item:mekanism:enrichment_chamber>,<item:mekanism:enriched_carbon>,<item:mekanismgenerators:turbine_blade>],
<item:mekanism:purification_chamber>,
<item:contenttweaker:bk_jx>);
//提纯仓
craftingEasyTireTable([<item:moreminecarts:silica_steel_block>,<item:mekanismgenerators:turbine_blade>,<item:create:fluid_tank>,<item:minecraft:bucket>],
<item:mekanism:chemical_dissolution_chamber>,
<item:contenttweaker:bk_jx>);
//化学溶解
craftingEasyTireTable([<item:moreminecarts:silica_steel_block>,<item:mekanismgenerators:turbine_blade>,<item:mekanism:basic_chemical_tank>,<item:create:fluid_tank>,<item:create:propeller>],
<item:mekanism:rotary_condensentrator>,
<item:contenttweaker:bk_jx>);
//回旋气液传化器
craftingEasyTireTable([<item:moreminecarts:silica_steel_block>,<item:create:fluid_tank>,<item:minecraft:diamond>,<item:minecraft:water_bucket>],
<item:mekanism:chemical_crystallizer>,
<item:contenttweaker:bk_jx>);
//化学结晶
craftingEasyTireTable([<item:moreminecarts:silica_steel_block>,<item:mekanism:enrichment_chamber>,<item:create:mechanical_piston>],
<item:mekanism:pressurized_reaction_chamber>,
<item:contenttweaker:bk_jx>);
//加压反应
craftingEasyTireTable([<item:moreminecarts:silica_steel_block>,<item:mekanismgenerators:turbine_blade>,<item:mekanism:basic_fluid_tank>,<item:minecraft:water_bucket>],
<item:mekanism:chemical_washer>,
<item:contenttweaker:bk_jx>);
//化学清洗
craftingEasyTireTable([<item:moreminecarts:silica_steel_block>,<item:mekanismgenerators:turbine_blade>,<item:create:fluid_tank>,<item:create:precision_mechanism>],
<item:mekanism:nutritional_liquifier>,
<item:contenttweaker:bk_jx>);
//营养液化
craftingEasyTireTable([<item:moreminecarts:silica_steel_block>,<item:create:fluid_tank>,<item:mekanism:electrolytic_core>,<tag:items:forge:nuggets/copper>,<item:create:zinc_nugget>],
<item:mekanism:electrolytic_separator>,
<item:contenttweaker:bk_jx>);
//电解分离机
//_______________________________________________________________颜料化学、
craftingEasyTireTable([<item:moreminecarts:silica_steel_block>,<item:mekanism:dye_base>,<item:mekanism:basic_chemical_tank>],
<item:mekanism:painting_machine>,
<item:contenttweaker:bk_color>);
//绘画机
craftingEasyTireTable([<item:moreminecarts:silica_steel_block>,<item:create:mechanical_mixer>,<item:mekanism:basic_chemical_tank>],
<item:mekanism:pigment_mixer>,
<item:contenttweaker:bk_color>);
//颜料混合器
//_______________________________________________________________裂变
public function craftingStation(a as IIngredient[], b as IItemStack, tool as IItemStack) as void {
  recipes.removeRecipe(b);
  Recipe.type(Type.DESIGNER)
    .shapeless(a)
    .output(b)
    .tool(tool,0)
    .restrict(Tier.WORKSTATION,Tier.WORKSTATION)
    .register();
}
craftingStation([<item:moreminecarts:silica_steel_block>,<tag:items:forge:ingots/lead>,<item:mekanism:ultimate_control_circuit>,<item:mekanismgenerators:turbine_blade>],
<item:mekanism:radioactive_waste_barrel>,
<item:contenttweaker:bk_lb>);
//废料桶
craftingStation([<item:moreminecarts:silica_steel>,<tag:items:forge:ingots/lead>,<item:mekanism:basic_chemical_tank>],
<item:mekanism:isotopic_centrifuge>,
<item:contenttweaker:bk_lb>);
//同位素离心机
craftingStation([<item:moreminecarts:silica_steel_block>,<item:mekanismgenerators:solar_panel>,<item:mekanism:hdpe_sheet>,<item:mekanism:elite_control_circuit>],
<item:mekanism:solar_neutron_activator>,
<item:contenttweaker:bk_lb>);
//太阳能中子活化机
craftingStation([<item:moreminecarts:silica_steel_block>,<item:mekanismgenerators:fission_reactor_casing>,<item:mekanism:ultimate_control_circuit>,<item:extendedcrafting:redstone_ingot>],
<item:mekanismgenerators:fission_reactor_logic_adapter>,
<item:contenttweaker:bk_lb>);
//裂变反应堆逻辑适配器
craftingStation([<item:moreminecarts:silica_steel>,<tag:items:forge:ingots/lead>],
<item:mekanismgenerators:fission_reactor_casing>,
<item:contenttweaker:bk_lb>);
//裂变外壳
craftingStation([<item:moreminecarts:silica_steel>,<tag:items:forge:storage_blocks/lead>],
<item:mekanismgenerators:control_rod_assembly>,
<item:contenttweaker:bk_lb>);
//控制棒组件
craftingStation([<item:moreminecarts:silica_steel>,<item:extendedcrafting:redstone_ingot>,<tag:items:forge:ingots/lead>,<item:mekanism:basic_chemical_tank>,<item:mekanism:steel_casing>],
<item:mekanismgenerators:control_rod_assembly>,
<item:contenttweaker:bk_lb>);
//控制棒组件
//_______________________________________________________________--蒸馏
craftingStation([<item:moreminecarts:silica_steel>,<item:mekanismgenerators:turbine_blade>,<item:createaddition:furnace_burner>],
<item:mekanism:fuelwood_heater>,
<item:contenttweaker:bk_zl>);
//固体燃料加热器
craftingStation([<item:moreminecarts:silica_steel>,<item:immersiveengineering:connector_hv>,<item:mekanism:basic_thermodynamic_conductor>,<item:immersiveengineering:capacitor_hv>],
<item:mekanism:resistive_heater>,
<item:contenttweaker:bk_zl>);
//电阻加热器
craftingStation([<item:moreminecarts:silica_steel>,<tag:items:forge:storage_blocks/copper>,<tag:items:forge:ingots/copper>],
<item:mekanism:thermal_evaporation_block>,
<item:contenttweaker:bk_zl>);
//热力蒸馏方块
craftingStation([<item:moreminecarts:silica_steel>,<tag:items:forge:storage_blocks/copper>,<item:create:fluid_pipe>],
<item:mekanism:thermal_evaporation_valve>,
<item:contenttweaker:bk_zl>);
//蒸馏阀门
craftingStation([<item:moreminecarts:silica_steel>,<tag:items:forge:storage_blocks/copper>,<item:mekanism:ultimate_control_circuit>,<item:create:precision_mechanism>],
<item:mekanism:thermal_evaporation_controller>,
<item:contenttweaker:bk_zl>);
//热力蒸馏控制器
//____________________________________________________________________高阶储存
var gg = <item:moreminecarts:silica_steel_block>;
var yx = <item:mekanism:hdpe_sheet>;
craftingStation([gg,yx,<item:portality:controller>],
<item:mekanism:qio_drive_array>,
<item:contenttweaker:bk_imp_iv>);
//QIO序列控制器
craftingStation([gg,yx,<item:moreminecarts:chiseled_organic_glass_pane>],
<item:mekanism:qio_dashboard>,
<item:contenttweaker:bk_imp_iv>);
//QIO面板
craftingStation([gg,yx,<item:minecraft:sticky_piston>,<item:mekanism:teleportation_core>],
<item:mekanism:qio_importer>,
<item:contenttweaker:bk_imp_iv>);
//QIO输入
craftingStation([gg,yx,<item:minecraft:piston>,<item:mekanism:teleportation_core>],
<item:mekanism:qio_exporter>,
<item:contenttweaker:bk_imp_iv>);
//QIO输出
craftingStation([gg,yx,<item:mekanism:basic_control_circuit>,<item:immersiveengineering:toolupgrade_drill_waterproof>],
<item:mekanism:qio_drive_base>,
<item:contenttweaker:bk_imp_iv>);
//QIO卡
craftingStation([gg,yx,<item:sophisticatedbackpacks:backpack>],
<item:mekanism:personal_chest>,
<item:contenttweaker:bk_imp_iv>);
//私人箱子
craftingStation([gg,yx,<item:mekanism:qio_importer>,<item:immersiveengineering:rs_engineering>],
<item:mekanism:qio_redstone_adapter>,
<item:contenttweaker:bk_imp_iv>);
//QIO红石适配器
craftingStation([gg,yx,<item:create:mechanical_pump>],
<item:mekanism:electric_pump>,
<item:contenttweaker:bk_imp_iv>);
//电动泵
craftingStation([gg,yx,<item:create:hose_pulley>],
<item:mekanism:fluidic_plenisher>,
<item:contenttweaker:bk_imp_iv>);
//流体填充器
//————————————————————————————————————————————————————————————————————————高阶发电
craftingStation([gg,<item:minecraft:iron_bars>],
<item:mekanismgenerators:turbine_vent>,
<item:contenttweaker:bk_e>);
//涡轮排气
craftingStation([gg,<item:immersiveengineering:fluid_pipe>],
<item:mekanismgenerators:turbine_valve>,
<item:contenttweaker:bk_e>);
//涡轮阀门
craftingStation([gg,<item:extendedcrafting:black_iron_ingot>],
<item:mekanismgenerators:turbine_casing>,
<item:contenttweaker:bk_e>);
//涡轮外壳
craftingStation([gg,<item:immersiveengineering:component_steel>,<item:immersiveengineering:metal_barrel>],
<item:mekanismgenerators:saturating_condenser>,
<item:contenttweaker:bk_e>);
//涡轮冷凝器
craftingStation([gg,<tag:items:forge:ingots/steel>],
<item:mekanism:boiler_casing>,
<item:contenttweaker:bk_e>);
//锅炉外壳
craftingStation([gg,<item:pipez:universal_pipe>],
<item:mekanism:boiler_valve>,
<item:contenttweaker:bk_e>);
//锅炉阀门
craftingStation([gg,<item:mekanism:resistive_heater>,<item:mekanism:elite_control_circuit>],
<item:mekanism:superheating_element>,
<item:contenttweaker:bk_e>);
//加热元件
craftingStation([gg,<item:create:mechanical_piston>,<item:create:piston_extension_pole>,<item:mekanism:elite_control_circuit>],
<item:mekanism:pressure_disperser>,
<item:contenttweaker:bk_e>);
//分压元件
//——————————————————————————————————————————理想电储存研究
public function craftingShop(a as IIngredient[], b as IItemStack, tool as IItemStack) as void {
  recipes.removeRecipe(b);
  Recipe.type(Type.DESIGNER)
    .shapeless(a)
    .output(b)
    .tool(tool,0)
    .restrict(Tier.WORKSHOP,Tier.WORKSHOP)
    .register();
}
craftingShop([gg,yx,yx,yx],
<item:mekanism:induction_casing>,
<item:contenttweaker:bk_img_e>);
//疏导外壳
craftingShop([gg,yx,yx,yx,<item:immersiveengineering:rs_engineering>],
<item:mekanism:induction_port>,
<item:contenttweaker:bk_img_e>);
//输导端口
var jc = <item:mekanism:basic_tier_installer>;
var gj = <item:mekanism:advanced_tier_installer>;
var jy = <item:mekanism:elite_tier_installer>;
var zz = <item:mekanism:ultimate_tier_installer>;
craftingShop([gg,yx,yx,yx,jc,<item:pipez:universal_pipe>,<item:mekanism:basic_control_circuit>],
<item:mekanism:basic_induction_cell>,
<item:contenttweaker:bk_img_e>);
//jc供应端口
craftingShop([gj,<item:mekanism:basic_induction_cell>],
<item:mekanism:advanced_induction_cell>,
<item:contenttweaker:bk_img_e>);
//gj供应端口
craftingShop([jy,<item:mekanism:advanced_induction_cell>],
<item:mekanism:elite_induction_cell>,
<item:contenttweaker:bk_img_e>);
//jy供应端口
craftingShop([zz,<item:mekanism:elite_induction_cell>],
<item:mekanism:ultimate_induction_cell>,
<item:contenttweaker:bk_img_e>);
//zz供应端口
craftingShop([gg,yx,yx,yx,jc,<item:immersiveengineering:coil_hv>],
<item:mekanism:basic_induction_provider>,
<item:contenttweaker:bk_img_e>);
//jc感应
craftingShop([gj,<item:mekanism:basic_induction_provider>],
<item:mekanism:advanced_induction_provider>,
<item:contenttweaker:bk_img_e>);
//gj感应
craftingShop([jy,<item:mekanism:advanced_induction_provider>],
<item:mekanism:elite_induction_provider>,
<item:contenttweaker:bk_img_e>);
//jy感应
craftingShop([zz,<item:mekanism:elite_induction_provider>],
<item:mekanism:ultimate_induction_provider>,
<item:contenttweaker:bk_img_e>);
//zz感应
//_______________________________________________________________________-聚变与激光研究
var pw = <item:mekanism:pellet_polonium>;
var jg = <item:mekanism:structural_glass>;
craftingShop([gg,jg,<tag:items:forge:gems/diamond>],
<item:mekanism:laser>,
<item:contenttweaker:bk_jj>);
//激光发射器
craftingShop([gg,jg,<item:minecraft:compass>],
<item:mekanism:laser_tractor_beam>,
<item:contenttweaker:bk_jj>);
//激光牵引
craftingShop([gg,jg,<tag:items:mekanism:enriched/diamond>,<item:immersiveengineering:coil_hv>],
<item:mekanism:laser_amplifier>,
<item:contenttweaker:bk_jj>);
//激光聚焦
craftingShop([gg,jg,jg,<item:extendedcrafting:redstone_ingot>],
<item:mekanismgenerators:laser_focus_matrix>,
<item:contenttweaker:bk_jj>);
//激光玻璃
craftingShop([gg,jg,pw],
<item:mekanismgenerators:fusion_reactor_frame>,
<item:contenttweaker:bk_jj>);
//聚变外壳
craftingShop([gg,jg,pw,<item:mekanism:ultimate_control_circuit>,<item:mekanism:ultimate_control_circuit>,<item:mekanism:ultimate_control_circuit>,<item:mekanism:energy_tablet>],
<item:mekanismgenerators:fusion_reactor_controller>,
<item:contenttweaker:bk_jj>);
//聚变控制器
craftingShop([gg,jg,pw,<item:immersiveengineering:rs_engineering>],
<item:mekanismgenerators:fusion_reactor_logic_adapter>,
<item:contenttweaker:bk_jj>);
//聚变逻辑适配器
craftingShop([gg,jg,pw,<item:immersiveengineering:rs_engineering>,<item:minecraft:emerald_block>,<item:minecraft:emerald_block>],
<item:mekanismgenerators:fusion_reactor_port>,
<item:contenttweaker:bk_jj>);
//聚变控制端口
craftingShop([<item:immersiveengineering:sheetmetal_electrum>,<tag:items:mekanism:enriched/carbon>,<item:minecraft:bucket>],
<item:mekanismgenerators:hohlraum>,
<item:contenttweaker:bk_jj>);
//黑体辐射腔
//____________________________________________________________反 物 质
craftingShop([gg,yx*16,zz,pw,jg,<item:mekanism:ultimate_control_circuit>,<item:mekanism:pellet_antimatter>],
<item:mekanism:antiprotonic_nucleosynthesizer>,
<item:contenttweaker:bk_fwz>);
//反质子合成器
craftingShop([gg,yx*16,<item:mekanismgenerators:fusion_reactor_frame>],
<item:mekanism:sps_casing>,
<item:contenttweaker:bk_fwz>);
//超临界一项外壳
craftingShop([gg,yx*16,<item:mekanism:energy_tablet>],
<item:mekanism:sps_port>,
<item:contenttweaker:bk_fwz>);
//超临界一项端口
craftingShop([gg,yx*16,<item:mekanism:laser>],
<item:mekanism:supercharged_coil>,
<item:contenttweaker:bk_fwz>);
//增压线圈
//________________________________________-传送学唯一的物品
craftingShop([gg,<item:mekanism:laser>,<item:portality:controller>,<item:portality:module_energy>,<item:portality:module_fluids>,<item:portality:module_items>],
<item:mekanism:quantum_entangloporter>,
<item:contenttweaker:bk_tp>);
//量子传送装置！





//——————————————————————————————————————————————更多的合成
var aa = <item:create:andesite_casing>;
craftingEasyTireTable([aa,<item:create:electron_tube>,<item:create:precision_mechanism>,<item:mekanism:structural_glass>],
<item:masterfulmachinery:basic_controller>,
<item:artisantools:pencil_diamond>);
craftingEasyTireTable([aa,<item:minecraft:hopper>],
<item:masterfulmachinery:basic_basic_port_items_input>,
<item:artisantools:pencil_diamond>);
craftingEasyTireTable([<item:masterfulmachinery:basic_basic_port_items_input>],
<item:masterfulmachinery:basic_basic_port_items_output>,
<item:artisantools:pencil_diamond>);
//
craftingEasyTireTable([aa,<item:create:fluid_tank>],
<item:masterfulmachinery:basic_small_port_fluids_input>,
<item:artisantools:pencil_diamond>);
craftingEasyTireTable([<item:masterfulmachinery:basic_small_port_fluids_input>],
<item:masterfulmachinery:basic_small_port_fluids_output>,
<item:artisantools:pencil_diamond>);
//
craftingEasyTireTable([aa,<item:immersiveengineering:capacitor_lv>,<item:immersiveengineering:connector_lv>],
<item:masterfulmachinery:basic_chungus_port_energy_input>,
<item:artisantools:pencil_diamond>);
craftingEasyTireTable([<item:masterfulmachinery:basic_chungus_port_energy_input>],
<item:masterfulmachinery:basic_chungus_port_energy_output>,
<item:artisantools:pencil_diamond>);
//
craftingEasyTireTable([aa,<item:mekanism:alloy_infused>],
<item:masterfulmachinery:basic_gassy_port_mekanism_gas_input>,
<item:artisantools:pencil_diamond>);
craftingEasyTireTable([<item:masterfulmachinery:basic_gassy_port_mekanism_gas_output>],
<item:masterfulmachinery:basic_chungus_port_energy_output>,
<item:artisantools:pencil_diamond>);
//
craftingEasyTireTable([aa,<item:create:whisk>],
<item:masterfulmachinery:basic_mekslurry_port_mekanism_slurry_input>,
<item:artisantools:pencil_diamond>);
craftingEasyTireTable([<item:masterfulmachinery:basic_mekslurry_port_mekanism_slurry_input>],
<item:masterfulmachinery:basic_mekslurry_port_mekanism_slurry_output>,
<item:artisantools:pencil_diamond>);
//
craftingEasyTireTable([aa,<item:create:gearbox>],
<item:masterfulmachinery:basic_spinny_port_create_rotation_input>,
<item:artisantools:pencil_diamond>);
craftingEasyTireTable([<item:masterfulmachinery:basic_spinny_port_create_rotation_input>],
<item:masterfulmachinery:basic_spinny_port_create_rotation_output>,
<item:artisantools:pencil_diamond>);
//