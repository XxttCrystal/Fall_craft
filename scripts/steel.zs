recipes.removeRecipe(<item:steampowered:steel_cogwheel>);
mods.extendedcrafting.TableCrafting.addShaped("steel_cog",<item:steampowered:steel_cogwheel> * 3, [
	[<item:minecraft:air>, <item:immersiveengineering:plate_steel>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:steampowered:bronze_cogwheel>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:immersiveengineering:plate_steel>, <item:minecraft:air>]
]);
//钢齿轮
recipes.removeRecipe(<item:steampowered:steel_large_cogwheel>);
mods.extendedcrafting.TableCrafting.addShaped("e49b3346-d7af-487c-bf2c-7aa66341e6b6",<item:steampowered:steel_large_cogwheel> * 5, [
	[<item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>, <item:immersiveengineering:plate_steel>], 
	[<item:immersiveengineering:plate_steel>, <item:steampowered:bronze_large_cogwheel>, <item:immersiveengineering:plate_steel>], 
	[<tag:items:forge:ingots/steel>, <item:steampowered:bronze_cogwheel>, <tag:items:forge:ingots/steel>]
]);
//钢大齿轮