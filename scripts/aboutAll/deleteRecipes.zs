import crafttweaker.api.item.IItemStack;
var deleteList as IItemStack[] = [
    <item:minecraft:golden_hoe>,
    <item:minecraft:stone_hoe>,
    <item:minecraft:stone_axe>,
    <item:minecraft:stone_pickaxe>,
    <item:minecraft:stone_shovel>,
    <item:minecraft:wooden_hoe>,
    <item:minecraft:wooden_pickaxe>,
    <item:minecraft:wooden_axe>,
    <item:minecraft:wooden_shovel>,
    <item:notreepunching:plant_string>,
    <item:extcaves:plant_fiber>,
    <item:notreepunching:plant_fiber>,
    <item:extcaves:medicine_bandage>,
    <item:minecraft:golden_axe>,
    <item:minecraft:golden_pickaxe>,
    <item:minecraft:golden_shovel>,
    <item:minecraft:iron_shovel>,
    <item:minecraft:iron_pickaxe>,
    <item:minecraft:iron_axe>,
    <item:minecraft:iron_hoe>,
    <item:minecraft:diamond_shovel>,
    <item:minecraft:diamond_hoe>,
    <item:minecraft:golden_sword>,
    <item:minecraft:stone_sword>,
    <item:minecraft:wooden_sword>,
    <item:minecraft:netherite_hoe>,
    <item:minecraft:netherite_axe>,
    <item:minecraft:netherite_pickaxe>,
    <item:minecraft:netherite_shovel>,
    <item:minecraft:diamond_pickaxe>,
    <item:minecraft:diamond_axe>,
    <item:minecraft:iron_sword>,
    <item:minecraft:diamond_sword>,
    <item:minecraft:netherite_sword>,
    <item:minecraft:crafting_table>,
    <item:notreepunching:clay_tool>,
    <item:farmersdelight:flint_knife>,
    <item:notreepunching:flint_pickaxe>,
    <item:notreepunching:flint_hoe>,
    <item:notreepunching:flint_shovel>,
    <item:minecraft:furnace>
];
for d in deleteList{
    recipes.removeRecipe(d);
}

var deleteListCraftingTable as IItemStack[] = [
    <item:minecraft:flint>
];

for dc in deleteListCraftingTable{
    craftingTable.removeRecipe(dc);
}
