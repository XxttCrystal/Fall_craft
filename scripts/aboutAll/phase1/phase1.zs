import crafttweaker.api.loot.modifiers.CommonLootModifiers;
import crafttweaker.api.loot.modifiers.ILootModifier;

var air = <item:minecraft:air>;

craftingTable.addShaped("craft_stick", <item:minecraft:stick> * 3, 
[
    [<tag:items:minecraft:saplings>]
]);
//树苗合成木棍

<block:environmental:giant_tall_grass>.addToolDrop("cut_huge_grass",
<item:farmersdelight:flint_knife>,
<item:notreepunching:plant_fiber> * 3);
<block:minecraft:tall_grass>.addToolDrop("cut_big_grass",
<item:farmersdelight:flint_knife>,
<item:notreepunching:plant_fiber> * 2);
<block:minecraft:grass>.addToolDrop("cut_grass",
<item:farmersdelight:flint_knife>,
<item:notreepunching:plant_fiber>);
//破坏草类物质获取草纤维

craftingTable.addShaped("craft_dirt_hole", <item:fc:dirt_hole>, 
[
    [<item:minecraft:gravel>,<item:minecraft:flint>],
    [<item:minecraft:dirt>,<item:minecraft:dirt>]
]);
//合成泥土坑控制器

craftingTable.addShaped("craft_plant_fiber_extcaves", <item:extcaves:plant_fiber> * 4, 
[
    [<item:notreepunching:plant_fiber>,<item:notreepunching:plant_fiber>],
    [<item:notreepunching:plant_fiber>,<item:minecraft:stick>]
]);
//合成植物纤维(洞穴扩增)
craftingTable.addShaped("craft_grass_string", <item:notreepunching:plant_string> * 3, 
[
    [<item:extcaves:plant_fiber>,<item:extcaves:plant_fiber>],
    [<item:extcaves:plant_fiber>,<item:farmersdelight:straw>]
]);
//合成植物绳
craftingTable.addShaped("craft_bandage", <item:extcaves:medicine_bandage> * 3, 
[
    [<item:notreepunching:plant_fiber>,<item:extcaves:plant_fiber>],
    [<item:extcaves:plant_fiber>,<item:notreepunching:plant_fiber>]
]);
//合成绷带
craftingTable.addShaped("craft_c_worktable", <item:artisanworktables:worktable_carpenter>, 
[
    [<item:minecraft:oak_planks>,<item:minecraft:flint>],
    [<item:minecraft:oak_log>,<item:minecraft:oak_log>]
]);
//合成绷带
var tWr = <tag:items:forge:rods/wooden>;

//ArtisanWork(
//    Type.CARPENTER,
//    [[air,air,tWr],
//     [air,tWr,air],
//     [tWr,tWr,air]],
//    <item:notreepunching:clay_tool>,
//    <item:farmersdelight:flint_knife>,
//    8
//);
