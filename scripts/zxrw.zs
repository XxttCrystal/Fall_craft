import crafttweaker.api.item.IItemStack;
import crafttweaker.api.BracketHandlers;

import mods.mekanism.api.FloatingLong;
import mods.mekanism.api.ingredient.ItemStackIngredient;
import mods.mekanism.api.ingredient.FluidStackIngredient;
import mods.mekanism.api.ingredient.ChemicalStackIngredient.GasStackIngredient;

var machineNames as string[] = [
	"smelting",
	"enriching",
	"crushing",
	"compressing",
	"purifying",
	"injecting",
	"infusing",
	"sawing"
];

var typeNames as string[] = [
	"basic",
	"advanced",
	"elite",
	"ultimate"
];

var deleteItems as IItemStack[] = [
	<item:mekanism:upgrade_filter>,
	<item:mekanism:basic_mechanical_pipe>,
	<item:mekanism:basic_universal_cable>,
	<item:extendedcrafting:ultimate_singularity>,
	<item:mekanism:basic_logistical_transporter>,
	<item:easy_villagers:farmer>,
	<item:easy_villagers:breeder>,
	<item:easy_villagers:converter>,
	<item:easy_villagers:iron_farm>,
	<item:mekanism:digital_miner>,
	<item:mekanism:seismic_vibrator>,
	<item:mekanism:teleporter>,
	<item:mekanism:teleporter_frame>
];

for machineName in machineNames {
	for typeName in typeNames {
		recipes.removeRecipe(BracketHandlers.getItem("mekanism:" + typeName + "_" + machineName + "_factory"));
	}
}

for item in deleteItems {
	recipes.removeRecipe(item);
}

mods.extendedcrafting.TableCrafting.addShaped("a60b8932-9563-4be5-ae7e-0e151abb0053",<item:extendedcrafting:ultimate_component> * 8, [
	[<item:mekanism:dust_emerald>, <item:mekanism:dust_emerald>, <item:mekanism:dust_emerald>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:black_iron_ingot>], 
	[<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_ingot>, <item:minecraft:emerald_block>, <item:extendedcrafting:redstone_ingot>], 
	[<item:mekanism:dust_emerald>, <item:mekanism:dust_emerald>, <item:mekanism:dust_emerald>, <item:extendedcrafting:black_iron_ingot>, <item:mekanism:dust_emerald>], 
	[<item:mekanism:dust_emerald>, <item:mekanism:steel_casing>, <item:mekanism:dust_emerald>, <item:extendedcrafting:black_iron_ingot>, <item:mekanism:dust_emerald>], 
	[<item:mekanism:dust_emerald>, <item:mekanism:dust_emerald>, <item:mekanism:dust_emerald>, <item:extendedcrafting:black_iron_ingot>, <item:mekanism:dust_emerald>]
]);

mods.extendedcrafting.TableCrafting.addShaped("d0f8f1e5-91bb-4730-8d7a-03486d38756f",<item:extendedcrafting:ultimate_table>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:extendedcrafting:ultimate_component>, <item:extendedcrafting:ultimate_component>, <item:extendedcrafting:ultimate_component>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:extendedcrafting:ultimate_component>, <item:extendedcrafting:ultimate_catalyst>, <item:extendedcrafting:ultimate_catalyst>, <item:extendedcrafting:ultimate_catalyst>, <item:extendedcrafting:ultimate_component>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:extendedcrafting:ultimate_component>, <item:extendedcrafting:ultimate_catalyst>, <item:extendedcrafting:ultimate_catalyst>, <item:extendedcrafting:ultimate_catalyst>, <item:extendedcrafting:ultimate_component>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:extendedcrafting:ultimate_component>, <item:extendedcrafting:ultimate_catalyst>, <item:extendedcrafting:ultimate_catalyst>, <item:extendedcrafting:ultimate_catalyst>, <item:extendedcrafting:ultimate_component>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_ingot>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:elite_table>, <item:mekanism:steel_casing>, <item:mekanism:metallurgic_infuser>, <item:mekanism:steel_casing>, <item:steampowered:cast_iron_large_cogwheel>, <item:minecraft:air>], 
	[<item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_ingot>, <item:immersiveengineering:capacitor_hv>, <item:steampowered:cast_iron_cogwheel>]
]);
//终极工作台

<recipetype:create:mechanical_crafting>.addRecipe("b6e3fd2e-7c46-49ab-aeb7-183f8725024c",<item:create:creative_motor>, [
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:create:hand_crank>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>]
]);

<recipetype:create:mechanical_crafting>.addRecipe("9f408c21-2a95-4992-83f3-200bf72bf1f4",<item:create:creative_fluid_tank>, [
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:create:fluid_tank>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>]
]);

<recipetype:create:mechanical_crafting>.addRecipe("bbfeddc4-66a8-431f-a8c2-b8e3ad04ffff",<item:create:creative_blaze_cake>, [
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:create:blaze_cake>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>], 
	[<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_singularity>]
]);

mods.extendedcrafting.CombinationCrafting.addRecipe("25abc975-24e7-4a2c-b1db-9e631e1cb566",<item:create:creative_crate>, 1, [
	<item:create:adjustable_crate>, <item:extendedcrafting:crafting_core>, <item:create:mechanical_crafter>, <item:create:brass_hand>, <item:create:refined_radiance_casing>,<item:mekanism:meka_tool>, <item:minecraft:dragon_head>, <item:minecraft:netherite_block>, <item:immersiveengineering:heavy_engineering>, <item:create:creative_motor>, <item:minecraft:grass_block>, <item:minecraft:diamond>, <item:mekanism:hdpe_sheet>, <item:steampowered:steel_flywheel>, <item:immersiveengineering:manual>, <item:create:creative_blaze_cake>, <item:create:creative_fluid_tank>, <item:minecraft:dragon_breath>, <item:create:wrench>, <item:mekanism:pellet_antimatter>, <item:tconstruct:manyullyn_block>,<item:create:potato_cannon>, <item:create:shadow_steel_casing>, <item:ftbquests:book>
]);

//无限红石奇点
mods.extendedcrafting.CombinationCrafting.addRecipe("9b8ff390-e1b2-46b3-86ca-a88642d359cd",<item:extendedcrafting:ultimate_auto_table>, 100000, [
	<item:extendedcrafting:ultimate_table>, <item:mekanism:electrolytic_core>, <item:mekanism:enriched_diamond>, <item:mekanism:pellet_antimatter>, <item:minecraft:nether_star>, <item:mekanism:ultimate_control_circuit>, <item:minecraft:nether_star>, <item:mekanism:enriched_diamond>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:redstone" as string}), <item:extendedcrafting:ultimate_catalyst>, <item:mekanism:pellet_antimatter>, <item:mekanism:teleportation_core>, <item:mekanism:ultimate_control_circuit>, <item:extendedcrafting:ultimate_component>, <item:mekanism:teleportation_core>, <item:mekanism:pellet_antimatter>, <item:extendedcrafting:ultimate_catalyst>, <item:minecraft:dragon_breath>, <item:mekanism:enriched_diamond>, <item:minecraft:nether_star>, <item:extendedcrafting:ultimate_component>, <item:minecraft:nether_star>, <item:mekanism:pellet_antimatter>, <item:mekanism:enriched_diamond>, <item:mekanism:electrolytic_core>
]);

//四级自动工作台
mods.extendedcrafting.CombinationCrafting.addRecipe("d61f6558-79d4-4421-8bc8-bdb5222f3dda",<item:extendedcrafting:ultimate_singularity>, 100000, [
	<item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:redstone" as string}), <item:extendedcrafting:the_ultimate_catalyst>, <item:extendedcrafting:the_ultimate_component>
]);

//物品管道
mods.extendedcrafting.CombinationCrafting.addRecipe("95b0b630-f822-490e-83bc-5df8cd2abe9d",<item:extendedcrafting:elite_auto_table>, 100000, [
	<item:extendedcrafting:elite_table>, <item:mekanism:alloy_atomic>, <item:mekanism:ultimate_tier_installer>, <item:mekanism:alloy_atomic>, <item:immersiveengineering:capacitor_hv>, <item:create:brass_hand>, <item:extendedcrafting:crafting_core>, <item:mekanism:ultimate_tier_installer>, <item:extendedcrafting:redstone_ingot_block>, <item:extendedcrafting:redstone_ingot_block>, <item:mekanism:alloy_atomic>, <item:mekanism:alloy_atomic>, <item:create:brass_hand>, <item:create:brass_hand>, <item:mekanism:alloy_atomic>, <item:mekanism:alloy_atomic>, <item:extendedcrafting:redstone_ingot_block>, <item:extendedcrafting:redstone_ingot_block>, <item:mekanism:alloy_atomic>, <item:extendedcrafting:crafting_core>, <item:create:brass_hand>, <item:create:extendo_grip>, <item:mekanism:alloy_atomic>, <item:mekanism:alloy_atomic>, <item:mekanism:alloy_atomic>]);
mods.extendedcrafting.CombinationCrafting.addRecipe("c216d0ca-de66-4f5b-ab10-b61a908ae462", <item:extendedcrafting:compressor>, 100000, [
	<item:mekanism:ultimate_compressing_factory>, <item:create:electron_tube>, <item:create:mechanical_press>, <item:create:mechanical_press>, <item:mekanism:block_refined_obsidian>
]);

//创造板条箱
<recipetype:create:mixing>.addRecipe("mixing_test_3", "none",<item:minecraft:crying_obsidian> 
, [<item:minecraft:stone>, <item:minecraft:gravel>,<item:minecraft:cobblestone>,<item:minecraft:sand>,<item:create:limesand>], [<fluid:minecraft:water> * 1000]);
<recipetype:create:filling>.addRecipe("filling_test", <item:extendedcrafting:luminessence>, <item:minecraft:grass_block>, <fluid:mekanism:ethene> * 50);
//流明精华
<recipetype:create:filling>.addRecipe("filling_fc",<item:minecraft:bee_nest>,<item:minecraft:oak_sapling>,<fluid:create:honey> * 10);
//蜂巢
<recipetype:create:pressing>.addRecipe("pressing_test", [ <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:redstone" as string}) * 2,  <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:redstone" as string}) % 45], <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:redstone" as string}));


<recipetype:mekanism:reaction>.addRecipe("reaction/zjhczj"
, ItemStackIngredient.from(<item:extendedcrafting:ultimate_component> * 16)
, FluidStackIngredient.from(<fluid:immersiveengineering:concrete> , 1000)
, GasStackIngredient.from(<gas:mekanism:sulfuric_acid> * 500), 45
, <item:extendedcrafting:ultimate_catalyst>, FloatingLong.create(25));

//终极奇点
<recipetype:mekanism:nucleosynthesizing>.addRecipe("zjzj1", ItemStackIngredient.from(<item:extendedcrafting:ultimate_catalyst>), GasStackIngredient.from(<gas:mekanism:antimatter> * 125), <item:extendedcrafting:the_ultimate_catalyst>, 90000);
<recipetype:mekanism:nucleosynthesizing>.addRecipe("zjzj2", ItemStackIngredient.from(<item:extendedcrafting:ultimate_component>), GasStackIngredient.from(<gas:mekanism:antimatter> * 125), <item:extendedcrafting:the_ultimate_component>, 90000);





