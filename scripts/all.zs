import crafttweaker.api.loot.modifiers.CommonLootModifiers;
import crafttweaker.api.loot.modifiers.ILootModifier;
import crafttweaker.api.entity.MCEntityType;
import mods.mekanism.api.ingredient.ItemStackIngredient;
import mods.mekanism.api.ingredient.ChemicalStackIngredient.InfusionStackIngredient;
import mods.mekanism.api.ingredient.ChemicalStackIngredient.GasStackIngredient;
craftingTable.removeByModid("torcherino");
//删除加速器和加速火把
craftingTable.removeRecipe(<item:create:hand_crank>);
craftingTable.addShaped("syqm", <item:create:hand_crank>, [
    [<tag:items:minecraft:planks>,<item:minecraft:air>,<item:minecraft:air>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<item:minecraft:air>, <item:minecraft:air>, <tag:items:minecraft:planks>]
]);
//手摇曲柄
craftingTable.removeRecipe(<item:minecraft:stone_pickaxe>);
//删除石稿子配方
<block:minecraft:stone>.addLootModifier("clear_stone", CommonLootModifiers.clearLoot());
<block:minecraft:stone>.addDrop("one", <item:minecraft:stone>);
//挖掘掉落石头
<recipetype:create:milling>.addRecipe("milling_stone_to_cobbostone", [<item:minecraft:cobblestone>*2,<item:minecraft:cobblestone>%45], <item:minecraft:stone>);
<recipetype:create:crushing>.addRecipe("cobbostone2", [<item:minecraft:cobblestone>*4,<item:minecraft:cobblestone>%60], <item:minecraft:stone>);
//磨轮加工石头得到圆石以及粉碎轮加工



<recipetype:create:milling>.addRecipe("milling_fe_bit", [<item:minecraft:iron_nugget> * 8], <item:create:crushed_iron_ore>);
<recipetype:create:milling>.addRecipe("milling_cu_bit", [<item:create:copper_nugget> * 8], <item:create:crushed_copper_ore>);
<recipetype:create:milling>.addRecipe("milling_zn_bit", [<item:create:zinc_nugget> * 8], <item:create:crushed_zinc_ore>);
<recipetype:create:milling>.addRecipe("milling_au_bit", [<item:minecraft:gold_nugget> * 8], <item:create:crushed_gold_ore>);
//低产量金属
craftingTable.removeRecipe( <item:create:mechanical_press>);
craftingTable.addShaped("gyj", <item:create:mechanical_press>, [
    [<item:minecraft:air>,<item:create:shaft>,<item:minecraft:air>],
    [<item:create:shaft>,<item:create:andesite_casing>,<item:create:shaft>],
    [<item:minecraft:air>, <item:create:andesite_alloy>, <item:minecraft:air>]
]);
//辊压机
craftingTable.addShapeless("recipe_lyrrsl", <item:create:blaze_burner>, [<item:create:empty_blaze_burner>, <item:minecraft:charcoal>]);
//烈焰人燃烧炉

furnace.removeRecipe(<item:minecraft:charcoal>);
furnace.addRecipe("ccc", <item:minecraft:charcoal>, <item:minecraft:oak_log>, 10.0, 2000);

//木炭降低产量
<recipetype:create:mixing>.removeRecipe(<item:create:crushed_brass>);
<recipetype:create:mixing>.removeRecipe(<item:create:brass_ingot>);
//黄铜取消搅拌
craftingTable.removeByModid("extendedcrafting");
//合成拓展全部删除

craftingTable.addShapeless("recipe_jhdzl", <item:tconstruct:seared_basin>, [<item:create:basin>]);
//焦黑冶炼锅

craftingTable.removeRecipe(<item:create:brass_hand>);
craftingTable.addShaped("htsblj", <item:create:brass_hand>, [
    [<item:minecraft:air>,<item:create:andesite_alloy>,<item:minecraft:air>],
    [<item:minecraft:gold_ingot>,<item:minecraft:gold_ingot>,<item:minecraft:gold_ingot>],
    [<item:minecraft:gold_ingot>, <item:extendedcrafting:black_iron_ingot>, <item:minecraft:air>]
]);
//黄铜手部零件
craftingTable.removeRecipe(<item:create:deployer>);
craftingTable.addShaped("ad1af00c-3408-4155-8b23-44a2561805fb",<item:create:deployer>, [
	[<item:minecraft:air>, <item:create:shaft>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:create:andesite_casing>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:create:brass_hand>, <item:minecraft:air>]
]);
//黄铜机械手
craftingTable.addShapeless("314c3b9d-a0dd-4d8a-8221-32b373f3c542",<item:extendedcrafting:black_iron_ingot> * 9, [
	<item:extendedcrafting:black_iron_block>
]);
//黑铁分解
<recipetype:create:mixing>.addRecipe("mixing_to_black_iron", "none", <item:extendedcrafting:black_iron_ingot> * 5, [<item:create:andesite_alloy>,<item:minecraft:obsidian>]);
//黑铁制作
recipes.removeRecipe(<item:minecraft:diamond_pickaxe>);
recipes.removeRecipe(<item:dungeons_gear:diamond_pickaxe>);
recipes.removeRecipe(<item:minecraft:diamond_sword>);
recipes.removeRecipe(<item:dungeons_gear:diamond_sword>);
stoneCutter.addRecipe("recipe_diamond_axe_dlc", <item:dungeons_gear:diamond_pickaxe>.withTag({AS_Amulet_Holder: [0, 4, -1450225638, -1762125910]}), <item:minecraft:diamond_block>);
stoneCutter.addRecipe("recipe_diamond_sword_dlc", <item:dungeons_gear:diamond_sword>.withTag({AS_Amulet_Holder: [0, 4, -1450225638, -1762125910]}), <item:minecraft:diamond_block>);
//钻石剑，钻石斧（DLC）
<recipetype:create:pressing>.addRecipe("pressing_black_iron_slate", [<item:extendedcrafting:black_iron_slate>], <item:extendedcrafting:black_iron_ingot>);
//黑铁板
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_black_kj")
    .transitionTo(<item:minecraft:black_stained_glass_pane>)
    .require(<item:extendedcrafting:black_iron_slate>)
    .addOutput(<item:extendedcrafting:frame>, 2)
    .loops(1)
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:extendedcrafting:black_iron_slate>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:minecraft:glass_pane>))
    .addStep(<recipetype:create:pressing>.factory(), (rb) => rb.duration(150)));
//黑铁框架
recipes.removeRecipe(<item:steampowered:cast_iron_steam_engine>);
mods.extendedcrafting.TableCrafting.addShaped("zhu_tie_zhengqi_feilun",<item:steampowered:cast_iron_steam_engine>, [
	[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:extendedcrafting:black_iron_slate>], 
	[<item:extendedcrafting:frame>, <item:create:mechanical_bearing>, <item:extendedcrafting:black_iron_ingot>], 
	[<item:minecraft:glowstone_dust>, <item:minecraft:iron_ingot>, <item:extendedcrafting:black_iron_slate>]
]);
//铸铁蒸汽飞轮
craftingTable.addShaped("hczj_jc", <item:extendedcrafting:basic_component>, [
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>],
    [<item:extendedcrafting:black_iron_slate>,<tag:items:forge:nuggets/iron>]
]);
//合成组件
<recipetype:create:pressing>.addRecipe("pressing_hcchj_jc", [<item:extendedcrafting:basic_catalyst>], <item:extendedcrafting:basic_component>);
//合成催化剂
craftingTable.addShaped("2400e8d9-f686-43e8-a57d-f6d9c7e0e6a3",<item:artisanworktables:worktable_basic>, [
	[<item:artisantools:tsquare_wood>, <item:artisantools:groover_wood>, <item:minecraft:oak_planks>], 
	[<item:artisantools:lens_wood>, <item:minecraft:crafting_table>, <item:artisantools:framing_hammer_wood>], 
	[<item:extendedcrafting:black_iron_ingot>, <item:artisantools:cutters_wood>, <item:artisantools:handsaw_wood>]
]);


recipes.removeRecipe(<item:create:electron_tube>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_electronic_tube")
    .transitionTo(<item:minecraft:iron_nugget>)
    .require(<item:create:brass_ingot>)
    .addOutput(<item:create:electron_tube>, 1)
    .loops(1)
    .addStep(<recipetype:create:filling>.factory(),(builder) => builder.withFluidIngredients(<fluid:tconstruct:molten_iron> * 100))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:minecraft:quartz>))
    .addStep(<recipetype:create:cutting>.factory(), (rb) => rb.duration(200))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:create:polished_rose_quartz>))
    .addStep(<recipetype:create:cutting>.factory(), (rb) => rb.duration(400))
    .addStep(<recipetype:create:pressing>.factory(), (rb) => rb.duration(100))
    .addStep(<recipetype:create:filling>.factory(),(builder) => builder.withFluidIngredients(<fluid:minecraft:lava> * 100))
    .addStep(<recipetype:create:pressing>.factory(), (rb) => rb.duration(100))
    .addStep(<recipetype:create:cutting>.factory(), (rb) => rb.duration(200))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<tag:items:forge:ingots/copper>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:minecraft:gold_ingot>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<tag:items:forge:ingots/copper>))
    .addStep(<recipetype:create:pressing>.factory(), (rb) => rb.duration(100))
    .addStep(<recipetype:create:cutting>.factory(), (rb) => rb.duration(200))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:create:polished_rose_quartz>))
    );
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_electronic_tube_industry_process")
    .transitionTo(<item:create:electron_tube>)
    .require(<item:create:electron_tube>)
    .addOutput(<item:create:electron_tube>*4, 1)
    .loops(1)
    .addStep(<recipetype:create:filling>.factory(),(builder) => builder.withFluidIngredients(<fluid:tconstruct:molten_iron> * 10))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:create:rose_quartz>))
    .addStep(<recipetype:create:cutting>.factory(), (rb) => rb.duration(50))
    );
//电子管

<recipetype:create:compacting>.addRecipe("compacting_lava_cake_base", "none", <item:create:blaze_cake_base>, [<item:create:cinder_flour> * 6]);
//蛋糕胚

recipes.removeRecipe(<item:immersiveengineering:conveyor_basic>);
mods.extendedcrafting.TableCrafting.addShaped("csd", <item:immersiveengineering:conveyor_basic>, [
	[<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>], 
	[<item:create:shaft>, <item:create:belt_connector>, <item:create:shaft>], 
	[<item:create:electron_tube>, <tag:items:forge:plates/iron>,<tag:items:forge:plates/iron>]
]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_csd")
    .transitionTo(<item:immersiveengineering:conveyor_basic>)
    .require(<item:immersiveengineering:conveyor_basic>)
    .addOutput(<item:immersiveengineering:conveyor_basic>*2, 1)
    .loops(1)
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<tag:items:forge:plates/steel>))
    .addStep(<recipetype:create:cutting>.factory(), (rb) => rb.duration(100))
    );
//传送带
<entitytype:minecraft:blaze>.addDrop("add_apple", <item:create:blaze_cake>);
//烈焰人掉落烈焰蛋糕
<recipetype:create:emptying>.addRecipe("emptying_lava1", <item:minecraft:bone>, <fluid:minecraft:lava>*333,<item:minecraft:blaze_rod>);
<recipetype:create:emptying>.addRecipe("emptying_lava2", <item:create:cinder_flour>, <fluid:minecraft:lava>*111,<item:minecraft:blaze_powder>);
<recipetype:create:emptying>.addRecipe("emptying_lava3", <item:create:blaze_cake_base>, <fluid:minecraft:lava>*25, <item:create:blaze_cake>);
//获取熔岩的新方法
recipes.removeRecipe(<item:immersiveengineering:alloybrick>);
mods.extendedcrafting.TableCrafting.addShapeless("yz", <item:immersiveengineering:alloybrick>*3, [
	<item:immersiveengineering:blastbrick_reinforced>, <item:minecraft:bricks>, <item:immersiveengineering:cokebrick>
]);
//窑砖
<recipetype:create:pressing>.addRecipe("pressing_qtb", [<item:steampowered:bronze_sheet>], <tag:items:forge:ingots/bronze>);
//青铜板
recipes.removeRecipe(<item:steampowered:bronze_steam_engine>);
mods.extendedcrafting.TableCrafting.addShaped("ht_fl",<item:steampowered:bronze_steam_engine>, [
	[<item:immersiveengineering:fluid_pipe>, <item:create:fluid_pipe>, <item:create:fluid_pipe>], 
	[<item:steampowered:bronze_sheet>, <item:steampowered:bronze_sheet>, <item:steampowered:bronze_sheet>], 
	[<item:steampowered:bronze_sheet>, <item:steampowered:cast_iron_steam_engine>, <item:steampowered:bronze_sheet>]
]);
//青铜蒸汽飞轮
recipes.removeRecipe(<item:steampowered:cast_iron_burner>);
mods.extendedcrafting.TableCrafting.addShaped("zt_rss",<item:steampowered:cast_iron_burner>, [
	[<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>], 
	[<item:extendedcrafting:black_iron_slate>, <item:minecraft:blast_furnace>, <item:extendedcrafting:black_iron_slate>], 
	[<item:immersiveengineering:alloybrick>, <item:immersiveengineering:alloybrick>, <item:immersiveengineering:alloybrick>]
]);
//铸铁燃烧室
recipes.removeRecipe(<item:steampowered:cast_iron_boiler>);
mods.extendedcrafting.TableCrafting.addShaped("zt_gl",<item:steampowered:cast_iron_boiler>, [
	[<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>], 
	[<item:extendedcrafting:black_iron_slate>, <item:create:fluid_pipe>, <item:extendedcrafting:black_iron_slate>], 
	[<item:extendedcrafting:black_iron_slate>, <item:create:fluid_pipe>, <item:extendedcrafting:black_iron_slate>]
]);
//铸铁锅炉
recipes.removeRecipe(<item:steampowered:cast_iron_cogwheel>);
mods.extendedcrafting.TableCrafting.addShaped("zt_cog",<item:steampowered:cast_iron_cogwheel> * 8, [
	[<item:minecraft:air>, <item:extendedcrafting:black_iron_slate>, <item:minecraft:air>], 
	[<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_slate>], 
	[<item:minecraft:air>, <item:extendedcrafting:black_iron_slate>, <item:minecraft:air>]
]);
//铸铁齿轮
recipes.removeRecipe(<item:steampowered:cast_iron_large_cogwheel>);
mods.extendedcrafting.TableCrafting.addShaped("zt_big_cog", <item:steampowered:cast_iron_large_cogwheel> * 2, [
	[<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_ingot>], 
	[<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_slate>], 
	[<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_ingot>]
]);
//铸铁大齿轮
recipes.removeRecipe(<item:steampowered:cast_iron_flywheel>);
mods.extendedcrafting.TableCrafting.addShaped("zt_fl",<item:steampowered:cast_iron_flywheel>, [
	[<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>], 
	[<item:steampowered:cast_iron_large_cogwheel>, <item:extendedcrafting:frame>, <item:create:shaft>], 
	[<item:steampowered:cast_iron_cogwheel>, <item:minecraft:air>, <item:extendedcrafting:black_iron_slate>]
]);
//铸铁飞轮
recipes.removeRecipe(<item:mekanism:ingot_bronze>);
<recipetype:create:mixing>.addRecipe("mixing_to_qt_block", "none",<fluid:tconstruct:molten_bronze> * 4,[], [<fluid:tconstruct:molten_tin> * 1,<fluid:tconstruct:molten_copper> * 3]);
//青铜
mods.extendedcrafting.TableCrafting.addShapeless("qtdfj",<item:mekanism:ingot_bronze> * 9, [
	<item:mekanism:block_bronze>
]);
//青铜块分解
recipes.removeRecipe(<item:steampowered:bronze_flywheel>);
craftingTable.addShaped("qt_fl",<item:steampowered:bronze_flywheel>, [
	[<item:steampowered:cast_iron_cogwheel>, <item:steampowered:bronze_sheet>, <item:minecraft:air>], 
	[<item:steampowered:cast_iron_cogwheel>, <item:steampowered:cast_iron_flywheel>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:steampowered:bronze_sheet>, <item:steampowered:bronze_cogwheel>]
]);
recipes.removeRecipe(<item:steampowered:bronze_cogwheel>);
mods.extendedcrafting.TableCrafting.addShaped("qt_cog",<item:steampowered:bronze_cogwheel> * 3, [
	[<item:minecraft:air>, <item:steampowered:bronze_sheet>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:steampowered:cast_iron_cogwheel>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:steampowered:bronze_sheet>, <item:minecraft:air>]
]);
//青铜飞轮和青铜齿轮
recipes.removeRecipe(<item:steampowered:bronze_large_cogwheel>);
mods.extendedcrafting.TableCrafting.addShaped("qt_big_cog",<item:steampowered:bronze_large_cogwheel> * 4, [
	[<item:steampowered:bronze_sheet>, <item:steampowered:cast_iron_large_cogwheel>, <item:steampowered:bronze_sheet>], 
	[<item:steampowered:bronze_sheet>, <item:steampowered:cast_iron_cogwheel>, <item:steampowered:bronze_sheet>], 
	[<item:steampowered:bronze_sheet>, <item:steampowered:bronze_sheet>, <item:steampowered:bronze_sheet>]
]);
//青铜大齿轮
recipes.removeRecipe(<item:steampowered:bronze_burner>);
mods.extendedcrafting.TableCrafting.addShaped("qt_rrs",<item:steampowered:bronze_burner>, [
	[<item:steampowered:bronze_sheet>, <item:steampowered:bronze_sheet>, <item:steampowered:bronze_sheet>], 
	[<item:create:fluid_pipe>, <item:steampowered:cast_iron_burner>, <item:steampowered:bronze_sheet>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
//青铜燃烧室
recipes.removeRecipe(<item:steampowered:bronze_boiler>);
mods.extendedcrafting.TableCrafting.addShaped("qt_gl",<item:steampowered:bronze_boiler>, [
	[<item:minecraft:air>, <item:steampowered:bronze_sheet>, <item:minecraft:air>], 
	[<item:steampowered:bronze_sheet>, <item:steampowered:cast_iron_boiler>, <item:steampowered:bronze_sheet>], 
	[<item:minecraft:air>, <item:create:fluid_pipe>, <item:minecraft:air>]
]);
//青铜锅炉
recipes.removeRecipe(<item:steampowered:steel_steam_engine>);
mods.extendedcrafting.TableCrafting.addShaped("steel_rsl",<item:steampowered:steel_steam_engine>, [
	[<item:steampowered:cast_iron_cogwheel>, <item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>], 
	[<item:create:fluid_pipe>, <item:steampowered:bronze_steam_engine>, <item:immersiveengineering:plate_steel>], 
	[<item:immersiveengineering:plate_steel>, <item:steampowered:cast_iron_cogwheel>, <item:steampowered:cast_iron_large_cogwheel>]
]);
//钢蒸汽引擎
recipes.removeRecipe(<item:steampowered:steel_burner>);
mods.extendedcrafting.TableCrafting.addShaped("grrs",<item:steampowered:steel_burner>, [
	[<tag:items:forge:ingots/steel>, <item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>], 
	[<item:create:fluid_pipe>, <item:minecraft:blast_furnace>, <item:minecraft:air>], 
	[<item:create:fluid_pipe>, <item:steampowered:bronze_burner>, <item:minecraft:air>]
]);
//钢燃烧室
recipes.removeRecipe(<item:steampowered:steel_boiler>);
mods.extendedcrafting.TableCrafting.addShaped("ggl",<item:steampowered:steel_boiler>, [
	[<tag:items:forge:ingots/steel>, <item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>], 
	[<item:immersiveengineering:plate_steel>, <item:steampowered:bronze_boiler>, <item:immersiveengineering:plate_steel>], 
	[<tag:items:forge:ingots/steel>, <item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>]
]);
//钢锅炉
recipes.removeRecipe(<item:steampowered:steel_flywheel>);
mods.extendedcrafting.TableCrafting.addShaped("steel_fly_wheel",<item:steampowered:steel_flywheel>, [
	[<item:steampowered:cast_iron_large_cogwheel>, <item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>], 
	[<item:steampowered:cast_iron_large_cogwheel>, <item:steampowered:bronze_flywheel>, <item:create:shaft>], 
	[<item:steampowered:cast_iron_cogwheel>, <item:steampowered:cast_iron_large_cogwheel>, <item:create:shaft>]
]);
//钢飞轮
<recipetype:immersiveengineering:blast_furnace>.removeRecipe(<item:immersiveengineering:ingot_steel>);
<recipetype:immersiveengineering:blast_furnace>.addRecipe("black_iron_to_steel",<item:extendedcrafting:black_iron_ingot>, 100, <item:immersiveengineering:ingot_steel> * 2, <item:immersiveengineering:slag>);
//黑铁炼钢
recipes.removeRecipe(<item:create:precision_mechanism>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_jmjg")
    .transitionTo(<item:create:incomplete_precision_mechanism>)
    .require(<tag:items:forge:plates/gold>)
    .addOutput(<item:create:precision_mechanism>, 0.75)
    .addOutput(<item:create:andesite_alloy>, 0.25)
    .loops(1)
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:steampowered:cast_iron_cogwheel>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:steampowered:cast_iron_large_cogwheel>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:steampowered:cast_iron_large_cogwheel>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:create:andesite_alloy>))
    .addStep(<recipetype:create:cutting>.factory(), (rb) => rb.duration(100))
    );
//精密结构
craftingTable.addShaped("black_iron_block",<item:extendedcrafting:black_iron_block>, [
	[<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_ingot>], 
	[<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_ingot>], 
	[<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_ingot>]
]);
//黑铁块
mods.extendedcrafting.TableCrafting.addShaped("second_level_crafting_table",<item:extendedcrafting:advanced_table>, [
	[<item:create:shaft>, <item:create:precision_mechanism>, <item:create:precision_mechanism>], 
	[<item:steampowered:cast_iron_large_cogwheel>, <item:extendedcrafting:basic_table>, <item:create:electron_tube>], 
	[<item:extendedcrafting:black_iron_block>, <item:create:brass_block>, <item:extendedcrafting:black_iron_block>]
]);
//二级工作台
mods.extendedcrafting.TableCrafting.addShaped("hczj_second",<item:extendedcrafting:advanced_component> * 12, [
	[<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>], 
	[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_block>, <item:extendedcrafting:black_iron_slate>], 
	[<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>, <item:minecraft:gold_ingot>, <item:extendedcrafting:black_iron_slate>], 
	[<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>, <item:minecraft:gold_ingot>, <item:extendedcrafting:black_iron_slate>], 
	[<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>, <item:minecraft:gold_ingot>, <item:extendedcrafting:black_iron_slate>]
]);
//高级合成组件
mods.extendedcrafting.TableCrafting.addShaped("gj_hcchj",<item:extendedcrafting:advanced_catalyst>*3, [
	[<item:minecraft:air>, <item:extendedcrafting:advanced_component>, <item:extendedcrafting:advanced_component>, <item:extendedcrafting:advanced_component>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:create:crafting_blueprint>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:extendedcrafting:advanced_component>, <item:minecraft:air>, <item:extendedcrafting:advanced_component>, <item:minecraft:air>, <item:extendedcrafting:advanced_component>], 
	[<item:extendedcrafting:advanced_component>, <item:minecraft:air>, <item:extendedcrafting:advanced_component>, <item:minecraft:air>, <item:extendedcrafting:advanced_component>], 
	[<item:extendedcrafting:advanced_component>, <item:minecraft:air>, <item:extendedcrafting:advanced_component>, <item:minecraft:air>, <item:extendedcrafting:advanced_component>]
]);
//高级合成催化剂
mods.extendedcrafting.TableCrafting.addShaped("auto_1_hct",<item:extendedcrafting:basic_auto_table>, [
	[<item:extendedcrafting:advanced_catalyst>, <item:create:electron_tube>, <item:create:electron_tube>, <item:create:electron_tube>, <item:extendedcrafting:advanced_catalyst>], 
	[<item:create:large_cogwheel>, <item:extendedcrafting:advanced_catalyst>, <item:immersiveengineering:capacitor_lv>, <item:extendedcrafting:advanced_catalyst>, <item:steampowered:cast_iron_cogwheel>], 
	[<item:immersiveengineering:conveyor_basic>, <item:immersiveengineering:conveyor_basic>, <item:extendedcrafting:basic_table>, <item:immersiveengineering:conveyor_basic>, <item:immersiveengineering:conveyor_basic>], 
	[<item:create:large_cogwheel>, <item:extendedcrafting:basic_catalyst>, <item:immersiveengineering:capacitor_lv>, <item:extendedcrafting:basic_catalyst>, <item:steampowered:cast_iron_cogwheel>], 
	[<item:extendedcrafting:basic_catalyst>, <item:steampowered:cast_iron_cogwheel>, <item:create:large_cogwheel>, <item:steampowered:cast_iron_cogwheel>, <item:extendedcrafting:basic_catalyst>]
]);
//1级自动合成台
recipes.removeRecipe(<item:createaddition:furnace_burner>);
mods.extendedcrafting.TableCrafting.addShaped("rsl",<item:createaddition:furnace_burner>, [
	[<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>], 
	[<item:minecraft:cobblestone>, <item:steampowered:cast_iron_large_cogwheel>, <item:steampowered:cast_iron_large_cogwheel>, <item:steampowered:cast_iron_large_cogwheel>, <item:minecraft:cobblestone>], 
	[<item:minecraft:cobblestone>, <tag:items:forge:storage_blocks/steel>, <item:minecraft:furnace>, <tag:items:forge:storage_blocks/steel>, <item:minecraft:cobblestone>], 
	[<item:minecraft:cobblestone>, <item:steampowered:cast_iron_large_cogwheel>, <item:steampowered:cast_iron_large_cogwheel>, <item:steampowered:cast_iron_large_cogwheel>, <item:minecraft:cobblestone>], 
	[<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>]
]);
//燃烧炉
recipes.removeRecipe(<item:createaddition:crude_burner>);
mods.extendedcrafting.TableCrafting.addShaped("zzyl",<item:createaddition:crude_burner>, [
	[<tag:items:forge:plates/copper>, <tag:items:forge:plates/copper>, <tag:items:forge:plates/copper>, <tag:items:forge:plates/copper>, <tag:items:forge:plates/copper>], 
	[<item:steampowered:cast_iron_cogwheel>, <item:create:fluid_pipe>, <item:steampowered:cast_iron_cogwheel>, <item:create:fluid_pipe>, <tag:items:forge:plates/copper>], 
	[<item:create:shaft>, <item:steampowered:cast_iron_cogwheel>, <item:create:shaft>, <item:steampowered:cast_iron_cogwheel>, <tag:items:forge:plates/copper>], 
	[<item:steampowered:cast_iron_cogwheel>, <item:create:fluid_tank>, <item:steampowered:cast_iron_cogwheel>, <item:steampowered:cast_iron_large_cogwheel>, <tag:items:forge:plates/copper>], 
	[<item:create:fluid_pipe>, <item:create:fluid_pipe>, <item:minecraft:blast_furnace>, <item:create:fluid_pipe>, <item:create:copper_casing>]
]);
//种子油炉
recipes.removeRecipe(<item:create:furnace_engine>);
mods.extendedcrafting.TableCrafting.addShaped("rlyq",<item:create:furnace_engine>, [
	[<item:create:brass_sheet>, <item:create:shaft>, <item:steampowered:cast_iron_large_cogwheel>], 
	[<item:create:brass_sheet>, <item:steampowered:cast_iron_burner>, <item:steampowered:cast_iron_cogwheel>], 
	[<item:steampowered:cast_iron_large_cogwheel>, <item:createaddition:furnace_burner>, <item:createaddition:crude_burner>]
]);
//熔炉引擎
recipes.removeRecipe(<item:create:flywheel>);
mods.extendedcrafting.TableCrafting.addShaped("htfl",<item:create:flywheel>, [
	[<item:create:brass_ingot>, <item:create:brass_ingot>, <item:create:brass_ingot>], 
	[<item:create:brass_ingot>,<item:steampowered:cast_iron_flywheel>, <item:create:brass_ingot>], 
	[<item:create:shaft>, <item:create:brass_ingot>, <item:create:brass_ingot>]
]);
//黄铜飞轮
recipes.removeRecipe(<item:create:mechanical_crafter> );
craftingTable.addShaped("jqhc",<item:create:mechanical_crafter> * 4, [
	[<item:minecraft:air>, <item:create:electron_tube>, <item:minecraft:air>], 
	[<item:create:cogwheel>, <item:minecraft:crafting_table>, <item:create:shaft>], 
	[<item:minecraft:air>, <item:create:brass_casing>, <item:minecraft:air>]
]);
//动力合成器
recipes.removeRecipe(<item:minecraft:netherite_sword>);
recipes.removeRecipe(<item:minecraft:netherite_shovel>);
recipes.removeRecipe(<item:minecraft:netherite_pickaxe>);
recipes.removeRecipe(<item:minecraft:netherite_axe>);
recipes.removeRecipe(<item:minecraft:netherite_hoe>);

<recipetype:create:mechanical_crafting>.addRecipe("xjhjj",<item:minecraft:netherite_sword>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:minecraft:netherite_ingot>], 
	[<item:minecraft:netherite_scrap>, <item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:create:brass_sheet>, <item:minecraft:netherite_scrap>], 
	[<item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:create:brass_sheet>, <item:minecraft:netherite_scrap>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:create_stuff_additions:rose_quartz_sword>, <item:minecraft:netherite_scrap>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:create:shaft>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:minecraft:air>]
]);

<recipetype:create:mechanical_crafting>.addRecipe("xjhjc",<item:minecraft:netherite_shovel>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>], 
	[<item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:minecraft:netherite_ingot>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:create_stuff_additions:rose_quartz_shovel>, <item:minecraft:netherite_scrap>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:create:shaft>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

<recipetype:create:mechanical_crafting>.addRecipe("xjhjf",<item:minecraft:netherite_axe>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:create:brass_ingot>, <item:minecraft:netherite_scrap>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:minecraft:netherite_ingot>, <item:create:brass_ingot>, <item:minecraft:netherite_scrap>], 
	[<item:minecraft:netherite_scrap>, <item:create_stuff_additions:rose_quartz_axe>, <item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:minecraft:air>], 
	[<item:create:shaft>, <item:minecraft:netherite_scrap>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

<recipetype:create:mechanical_crafting>.addRecipe("xjhjg", <item:minecraft:netherite_pickaxe>, [
	[<item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:minecraft:netherite_ingot>, <item:minecraft:netherite_scrap>, <item:minecraft:air>], 
	[<item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>, <item:create:brass_ingot>, <item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:create:shaft>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:create_stuff_additions:rose_quartz_pickaxe>, <item:minecraft:netherite_scrap>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:create:shaft>, <item:minecraft:air>, <item:minecraft:air>]
]);

<recipetype:create:mechanical_crafting>.addRecipe("xjhjct",<item:minecraft:netherite_hoe>, [
	[<item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>, <item:minecraft:netherite_ingot>, <item:minecraft:netherite_scrap>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:create:shaft>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:minecraft:diamond_hoe>, <item:minecraft:netherite_scrap>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:create:shaft>, <item:minecraft:air>, <item:minecraft:air>]
]);
//合金工具
recipes.removeRecipe(<item:immersiveengineering:light_engineering>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_qxgck")
    .transitionTo(<item:create:andesite_casing>)
    .require(<item:create:andesite_casing>)
    .addOutput(<item:immersiveengineering:light_engineering> * 4, 1)
    .loops(1)
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:extendedcrafting:frame>))
    .addStep(<recipetype:create:pressing>.factory(), (rb) => rb.duration(100))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:create:precision_mechanism>))
    .addStep(<recipetype:create:pressing>.factory(), (rb) => rb.duration(100))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:create:electron_tube>))
    .addStep(<recipetype:create:cutting>.factory(), (rb) => rb.duration(100))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:immersiveengineering:wire_copper>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:immersiveengineering:component_iron>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:immersiveengineering:component_steel>))
    .addStep(<recipetype:create:cutting>.factory(), (rb) => rb.duration(100))
    );
//轻型机械块
recipes.removeRecipe(<item:immersiveengineering:capacitor_lv>);
mods.extendedcrafting.TableCrafting.addShaped("dydrq",<item:immersiveengineering:capacitor_lv>, [
	[<item:create:electron_tube>, <tag:items:forge:ingots/copper>, <item:minecraft:air>], 
	[<item:immersiveengineering:plate_steel>, <tag:items:forge:ingots/lead>, <item:immersiveengineering:plate_steel>], 
	[<item:immersiveengineering:plate_steel>, <item:immersiveengineering:light_engineering>, <item:immersiveengineering:plate_steel>]
]);
//低压电容器
recipes.removeRecipe(<item:immersiveengineering:dynamo>);
mods.extendedcrafting.TableCrafting.addShaped("dnfdj___",<item:immersiveengineering:dynamo>, [
	[<item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:wirecoil_copper>, <item:immersiveengineering:wirecoil_copper>, <item:immersiveengineering:wirecoil_copper>, <item:immersiveengineering:plate_steel>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:immersiveengineering:steel_scaffolding_standard>, <item:extendedcrafting:frame>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:wirecoil_copper>, <item:immersiveengineering:wirecoil_copper>, <item:immersiveengineering:wirecoil_copper>, <item:immersiveengineering:plate_steel>], 
	[<item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>]
]);
//动能发电机
recipes.removeRecipe(<item:mekanism:steel_casing>);
mods.extendedcrafting.CombinationCrafting.addRecipe("gzkj",<item:mekanism:steel_casing>, 1000, [
	<item:extendedcrafting:frame>, <tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>
]);
//钢框架
mods.extendedcrafting.TableCrafting.addShaped("jz", <item:extendedcrafting:pedestal>, [
	[<item:immersiveengineering:plate_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:plate_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:extendedcrafting:basic_table>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:plate_steel>, <item:immersiveengineering:sheetmetal_steel>]
]);

mods.extendedcrafting.TableCrafting.addShaped("hchx", <item:extendedcrafting:crafting_core>, [
	[<item:extendedcrafting:advanced_catalyst>, <item:extendedcrafting:advanced_catalyst>, <item:extendedcrafting:advanced_catalyst>, <item:extendedcrafting:advanced_catalyst>, <item:extendedcrafting:advanced_catalyst>], 
	[<item:immersiveengineering:plate_steel>, <item:minecraft:diamond>, <item:minecraft:diamond_block>, <item:minecraft:diamond>, <item:immersiveengineering:plate_steel>], 
	[<item:immersiveengineering:plate_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:extendedcrafting:advanced_table>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:plate_steel>], 
	[<item:immersiveengineering:plate_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:plate_steel>], 
	[<item:minecraft:air>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:minecraft:air>]
]);
//合成核心
<recipetype:immersiveengineering:blast_furnace>.addRecipe("hsd", <tag:items:forge:storage_blocks/redstone>, 1000,<item:extendedcrafting:redstone_ingot>,<item:minecraft:redstone>);
//红石锭烧炼
mods.extendedcrafting.TableCrafting.addShaped("hsdk",<item:extendedcrafting:redstone_ingot_block>, [
	[<item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>], 
	[<item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>], 
	[<item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>, <item:mekanism:steel_casing>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>], 
	[<item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>], 
	[<item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>]
]);
//红石锭块
mods.extendedcrafting.TableCrafting.addShaped("hshczj",<item:extendedcrafting:redstone_component> * 10, [
	[<item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>, <item:extendedcrafting:redstone_ingot>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot_block>, <item:extendedcrafting:redstone_ingot>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:extendedcrafting:redstone_ingot>, <item:immersiveengineering:plate_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:plate_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:extendedcrafting:redstone_ingot>, <item:immersiveengineering:plate_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:extendedcrafting:redstone_ingot>, <item:immersiveengineering:plate_steel>]
]);
//红石合成组件
mods.extendedcrafting.TableCrafting.addShaped("hshcchj",<item:extendedcrafting:redstone_catalyst>*3, [
	[<item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>, <item:extendedcrafting:redstone_ingot>, <item:immersiveengineering:plate_steel>], 
	[<item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot_block>, <item:immersiveengineering:sheetmetal_steel>, <item:extendedcrafting:redstone_ingot_block>, <item:immersiveengineering:plate_steel>], 
	[<item:immersiveengineering:plate_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:plate_steel>], 
	[<item:immersiveengineering:plate_steel>, <item:extendedcrafting:redstone_ingot_block>, <item:immersiveengineering:sheetmetal_steel>, <item:extendedcrafting:redstone_ingot_block>, <item:extendedcrafting:redstone_ingot>], 
	[<item:immersiveengineering:plate_steel>, <item:extendedcrafting:redstone_ingot>, <item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>]
]);
//红石合成催化剂
mods.extendedcrafting.TableCrafting.addShaped("hsgck",<item:immersiveengineering:rs_engineering>*3, [
	[<item:extendedcrafting:redstone_component>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:extendedcrafting:redstone_component>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:redstone_component>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:extendedcrafting:redstone_component>, <item:mekanism:steel_casing>, <item:extendedcrafting:redstone_component>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:redstone_component>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:extendedcrafting:redstone_component>, <item:immersiveengineering:sheetmetal_steel>, <item:extendedcrafting:redstone_catalyst>, <item:immersiveengineering:sheetmetal_steel>, <item:extendedcrafting:redstone_component>]
]);
//红石工程块
recipes.removeRecipe(<item:immersiveengineering:capacitor_mv>);
mods.extendedcrafting.TableCrafting.addShaped("zyxdq",<item:immersiveengineering:capacitor_mv>*3, [
	[<item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>, <item:create:copper_block>, <item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>], 
	[<item:immersiveengineering:plate_steel>, <item:minecraft:air>, <item:immersiveengineering:storage_lead>, <item:minecraft:air>, <item:immersiveengineering:plate_steel>], 
	[<item:immersiveengineering:plate_steel>, <item:extendedcrafting:redstone_ingot_block>, <item:immersiveengineering:storage_lead>, <item:extendedcrafting:redstone_ingot_block>, <item:immersiveengineering:plate_steel>], 
	[<item:immersiveengineering:plate_steel>, <item:extendedcrafting:redstone_ingot>, <item:immersiveengineering:sheetmetal_steel>, <item:extendedcrafting:redstone_ingot>, <item:immersiveengineering:plate_steel>], 
	[<item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>, <item:immersiveengineering:capacitor_lv>, <item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>]
]);
//中压需电器
recipes.removeRecipe(<item:immersiveengineering:heavy_engineering>);
mods.extendedcrafting.TableCrafting.addShaped("9ef5e049-ebd4-4d51-b2d4-5703cf5e7be1",<item:immersiveengineering:heavy_engineering> * 6, [
	[<item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:wire_aluminum>], 
	[<item:immersiveengineering:wire_aluminum>, <item:extendedcrafting:redstone_ingot>, <item:immersiveengineering:toolupgrade_revolver_electro>, <item:extendedcrafting:redstone_component>, <item:immersiveengineering:wire_aluminum>], 
	[<item:immersiveengineering:wire_aluminum>, <item:extendedcrafting:redstone_ingot>, <item:immersiveengineering:light_engineering>, <item:extendedcrafting:redstone_ingot>, <item:immersiveengineering:wire_aluminum>], 
	[<item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:logic_circuit>, <item:immersiveengineering:wire_copper>, <item:extendedcrafting:redstone_ingot>, <item:immersiveengineering:wire_aluminum>], 
	[<item:immersiveengineering:logic_circuit>, <item:immersiveengineering:wire_copper>, <item:immersiveengineering:wire_copper>, <item:immersiveengineering:wire_copper>, <item:immersiveengineering:logic_circuit>]
]);
//重型工程块
recipes.removeRecipe(<item:immersiveengineering:capacitor_hv>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("gyxdc")
    .transitionTo(<item:immersiveengineering:coil_hv>)
    .require(<item:immersiveengineering:capacitor_mv>)
    .addOutput(<item:immersiveengineering:capacitor_hv> * 3, 1)
    .loops(1)
	.addStep(<recipetype:create:cutting>.factory(), (rb) => rb.duration(100))
	.addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:immersiveengineering:heavy_engineering>))
	.addStep(<recipetype:create:cutting>.factory(), (rb) => rb.duration(100))
	.addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:immersiveengineering:coil_hv>))
	.addStep(<recipetype:create:pressing>.factory(), (rb) => rb.duration(100))
	.addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:extendedcrafting:redstone_ingot>))
	.addStep(<recipetype:create:pressing>.factory(), (rb) => rb.duration(100))
    );
//高压蓄电池
//<item:create:brass_hand>.displayName = "金质手部零件";

<recipetype:immersiveengineering:arc_furnace>.addRecipe("jyhczj", <item:mekanism:steel_casing>, 
[<item:minecraft:diamond> * 2, <item:extendedcrafting:black_iron_slate>], 100, 1000, 
[<item:extendedcrafting:elite_component>*2,<item:mekanism:steel_casing>], 
<item:mekanism:dust_diamond>);
//精英合成组件-电弧炉
<recipetype:immersiveengineering:metal_press>.addRecipe("jyhcchj",<item:extendedcrafting:elite_component> * 16,
<item:extendedcrafting:redstone_catalyst>, 2000,
<item:extendedcrafting:elite_catalyst>);
//经营合成催化剂-沉浸压板机
<recipetype:immersiveengineering:arc_furnace>.addRecipe("ej_auto_craftingtable", <item:extendedcrafting:elite_table>, 
[<item:mekanism:metallurgic_infuser>,<item:mekanism:basic_energy_cube>,<item:mekanism:energy_tablet>], 100, 100000, 
[<item:extendedcrafting:advanced_auto_table>], 
<item:mekanism:alloy_infused>);
//二级自动工作台
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("gzhj")
    .transitionTo(<item:minecraft:redstone_block>)
    .require(<item:minecraft:redstone_block>)
    .addOutput(<item:mekanism:alloy_infused>, 1)
    .loops(50)
	.addStep(<recipetype:create:filling>.factory(),(builder) => builder.withFluidIngredients(<fluid:tconstruct:molten_osmium> * 100))
	.addStep(<recipetype:create:filling>.factory(),(builder) => builder.withFluidIngredients(<fluid:tconstruct:molten_iron> * 100))
	.addStep(<recipetype:create:filling>.factory(),(builder) => builder.withFluidIngredients(<fluid:minecraft:water> * 1000))
    );
//灌注合金的初步合成！

mods.extendedcrafting.CombinationCrafting.addRecipe("jyhct___",<item:extendedcrafting:elite_table>, 100000, [
	<item:extendedcrafting:advanced_table>, <item:mekanism:alloy_infused>, <item:extendedcrafting:elite_catalyst>, <item:minecraft:netherite_scrap>, <item:extendedcrafting:elite_catalyst>, <item:mekanism:steel_casing>, <item:minecraft:netherite_scrap>, <item:extendedcrafting:frame>, <item:extendedcrafting:frame>
]);

//精英合成台
recipes.removeRecipe(<item:mekanism:metallurgic_infuser>);
mods.extendedcrafting.TableCrafting.addShaped("yjgzj",<item:mekanism:metallurgic_infuser>, [
	[<item:minecraft:air>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:minecraft:air>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:mekanism:steel_casing>, <item:mekanism:steel_casing>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:create:spout>, <item:mekanism:steel_casing>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:minecraft:air>, <item:create:shaft>, <item:minecraft:air>, <item:create:fluid_tank>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:minecraft:air>, <item:create:shaft>, <item:create:depot>, <item:create:fluid_tank>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:heavy_engineering>, <item:create:depot>, <item:minecraft:air>, <item:immersiveengineering:capacitor_hv>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>]
]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("yjhcq")
    .transitionTo(<item:mekanism:metallurgic_infuser>)
    .require(<item:mekanism:metallurgic_infuser>)
    .addOutput(<item:mekanism:metallurgic_infuser>*2, 1)
    .loops(1)
	.addStep(<recipetype:create:filling>.factory(),(builder) => builder.withFluidIngredients(<fluid:tconstruct:molten_osmium> * 500))
	.addStep(<recipetype:create:cutting>.factory(), (rb) => rb.duration(100))
    );
//冶金灌注机

//{"type":"mekanism:metallurgic_infusing","itemInput":{"ingredient":{"tag":"forge:ingots/iron"}},"infusionInput":{"amount":10,"tag":"mekanism:redstone"},"output":{"item":"mekanism:alloy_infused"}}
<recipetype:mekanism:metallurgic_infusing>.addJSONRecipe("black_iron_better",{
"itemInput":{"ingredient":{"tag":"forge:ingots/iron"}},
"infusionInput":{"amount":10,"tag":"mekanism:carbon"},
"output":{"item":"extendedcrafting:black_iron_ingot"}
});
//更好的黑铁

<recipetype:mekanism:metallurgic_infusing>.addJSONRecipe("better_steel",{
"itemInput":{"ingredient":{"item":"extendedcrafting:black_iron_ingot"}},
"infusionInput":{"amount":90,"tag":"mekanism:carbon"},
"output":{"item":"immersiveengineering:ingot_steel"}
});
//更好的钢

<recipetype:mekanism:dissolution>.addJSONRecipe("water_from_ice",{
"itemInput":{"ingredient":{"item":"minecraft:ice"}},
"gasInput":{"amount":1,"gas":"mekanism:water_vapor"},
"output":{"gas":"mekanism:steam","amount":1000,
"chemicalType":"gas"}
});
//冰变蒸汽
recipes.removeRecipe(<item:mekanism:enrichment_chamber>);

mods.extendedcrafting.TableCrafting.addShaped("dadd9263-2f51-4fa9-9590-3485423e35ff",<item:mekanism:enrichment_chamber>, [
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:minecraft:air>, <item:minecraft:air>, <item:immersiveengineering:wire_aluminum>, <item:minecraft:air>, <item:minecraft:air>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:steampowered:cast_iron_cogwheel>, <item:create:mechanical_press>, <item:create:mechanical_mixer>, <item:create:mechanical_press>, <item:steampowered:cast_iron_cogwheel>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:minecraft:air>, <item:create:mechanical_saw>, <item:create:basin>, <item:create:mechanical_arm>, <item:minecraft:air>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:steampowered:cast_iron_large_cogwheel>, <item:minecraft:air>, <item:immersiveengineering:heavy_engineering>, <item:minecraft:air>, <item:steampowered:cast_iron_large_cogwheel>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:mekanism:steel_casing>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>]
]);

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("fjc")
    .transitionTo(<item:mekanism:enrichment_chamber>)
    .require(<item:mekanism:enrichment_chamber>)
    .addOutput(<item:mekanism:enrichment_chamber>*2, 1)
    .loops(1)
	.addStep(<recipetype:create:filling>.factory(),(builder) => builder.withFluidIngredients(<fluid:tconstruct:molten_osmium> * 700))
	.addStep(<recipetype:create:cutting>.factory(), (rb) => rb.duration(100))
    );

//富集仓
recipes.removeRecipe(<item:mekanism:osmium_compressor>);
mods.extendedcrafting.TableCrafting.addShaped("b0ec1b60-5db6-4c51-a2be-1a2c2d14ca08",<item:mekanism:osmium_compressor>, [
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:wire_aluminum>, <item:minecraft:air>, <item:create:piston_extension_pole>, <item:minecraft:air>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:wire_aluminum>, <item:steampowered:cast_iron_cogwheel>, <item:create:mechanical_piston>, <item:steampowered:cast_iron_cogwheel>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:steampowered:cast_iron_large_cogwheel>, <item:mekanism:structural_glass>, <item:minecraft:piston>, <item:mekanism:structural_glass>, <item:steampowered:cast_iron_large_cogwheel>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:minecraft:air>, <item:mekanism:structural_glass>, <item:create:mechanical_press>, <item:mekanism:structural_glass>, <item:minecraft:air>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:mekanism:steel_casing>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>]
]);

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("osmium_ysj")
    .transitionTo(<item:mekanism:osmium_compressor>)
    .require(<item:mekanism:osmium_compressor>)
    .addOutput(<item:mekanism:osmium_compressor>*2, 1)
    .loops(1)
	.addStep(<recipetype:create:filling>.factory(),(builder) => builder.withFluidIngredients(<fluid:tconstruct:molten_osmium> * 400))
	.addStep(<recipetype:create:cutting>.factory(), (rb) => rb.duration(100))
    );
//锇压缩机

<recipetype:mekanism:enriching>.addRecipe("tbjsk_2", ItemStackIngredient.from(<tag:items:forge:ingots/steel>), <item:immersiveengineering:sheetmetal_steel>);
//更多钢板金属
<recipetype:mekanism:compressing>.addRecipe("compress_emerald", ItemStackIngredient.from(<item:extendedcrafting:black_iron_ingot>), GasStackIngredient.from(<gas:mekanism:liquid_osmium>), <item:extendedcrafting:frame>);
//更多黑铁框架
recipes.removeRecipe(<item:mekanism:combiner>);
mods.extendedcrafting.TableCrafting.addShaped("d1327ed7-1dfb-4d10-afa0-f7de8816657f",<item:mekanism:combiner>, [
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:wire_aluminum>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:minecraft:air>, <item:immersiveengineering:wire_aluminum>, <item:minecraft:air>, <item:immersiveengineering:wire_aluminum>, <item:minecraft:air>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:steampowered:cast_iron_large_cogwheel>, <item:create:deployer>, <item:steampowered:cast_iron_cogwheel>, <item:create:deployer>, <item:steampowered:cast_iron_large_cogwheel>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:minecraft:air>, <item:immersiveengineering:wire_aluminum>, <item:minecraft:air>, <item:immersiveengineering:wire_aluminum>, <item:minecraft:air>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:wire_aluminum>, <item:minecraft:air>, <item:immersiveengineering:heavy_engineering>, <item:minecraft:air>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:mekanism:steel_casing>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>]
]);

<recipetype:mekanism:combining>.addRecipe("rhj", ItemStackIngredient.from(<item:create:deployer> * 2), ItemStackIngredient.from(<item:mekanism:block_osmium>), <item:mekanism:combiner>);

//融合机器
recipes.removeRecipe(<item:mekanism:crusher>);
mods.extendedcrafting.TableCrafting.addShaped("0a4fe0c1-7fd9-4d45-8ee7-d4c089eb4e4f",<item:mekanism:crusher>, [
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:wire_aluminum>, <item:minecraft:air>, <item:minecraft:air>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:wire_aluminum>, <item:minecraft:air>, <item:minecraft:air>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:create:crushing_wheel>, <item:create:crushing_wheel>, <item:create:crushing_wheel>, <item:steampowered:cast_iron_cogwheel>, <item:minecraft:air>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:create:crushing_wheel>, <item:create:crushing_wheel>, <item:create:crushing_wheel>, <item:minecraft:air>, <item:steampowered:cast_iron_large_cogwheel>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:minecraft:air>, <item:minecraft:air>, <item:immersiveengineering:heavy_engineering>, <item:minecraft:air>, <item:minecraft:air>, <item:immersiveengineering:sheetmetal_steel>], 
	[<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:mekanism:steel_casing>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:sheetmetal_steel>]
]);

<recipetype:mekanism:crushing>.addRecipe("crush_to_crusher", ItemStackIngredient.from(<item:immersiveengineering:drill>), <item:mekanism:crusher>);
//粉碎机
craftingTable.removeRecipe(<item:immersiveengineering:concrete>);

<recipetype:mekanism:crushing>.addRecipe("crush_to_combiner", ItemStackIngredient.from(<item:dungeons_gear:bone_cudgel>), <item:immersiveengineering:concrete>*16);
<recipetype:mekanism:combining>.addRecipe("rh_dgb", ItemStackIngredient.from(<item:immersiveengineering:treated_post>), ItemStackIngredient.from(<item:immersiveengineering:concrete_bucket>), <item:dungeons_gear:bone_cudgel>);
//大骨棒和混凝土的转化

craftingTable.removeRecipe(<item:mekanism:energy_tablet>);
mods.extendedcrafting.TableCrafting.addShaped("0296d492-c0c4-4e5a-b323-d797f3a9b027", <item:mekanism:energy_tablet>, [
	[<item:minecraft:air>, <item:mekanism:alloy_infused>, <item:minecraft:air>], 
	[<item:immersiveengineering:wire_aluminum>, <item:extendedcrafting:black_iron_slate>, <item:immersiveengineering:wire_aluminum>], 
	[<item:immersiveengineering:wire_aluminum>, <item:mekanism:basic_control_circuit>, <item:immersiveengineering:wire_aluminum>]
]);

//能量板
craftingTable.removeRecipe(<item:mekanism:basic_control_circuit>);
mods.extendedcrafting.TableCrafting.addShapeless("549d23bf-3c49-4de8-8b86-3f87312ae6b4",<item:mekanism:basic_control_circuit>*8, [
	<item:create:precision_mechanism>, <item:immersiveengineering:wire_aluminum>, <item:minecraft:emerald>
]);
//基础电路板

<recipetype:create:mixing>.addRecipe("mixing_lh", "heated", <fluid:mekanism:sulfuric_acid> * 100, [<item:minecraft:coal>]);
<recipetype:create:mixing>.addRecipe("mixing_lh3", "none", <item:create:andesite_alloy>, [<tag:items:forge:cobblestone>,<tag:items:forge:stone>],[<fluid:mekanism:sulfuric_acid> * 50]);
//硫酸+安山岩
