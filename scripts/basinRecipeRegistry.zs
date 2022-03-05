import crafttweaker.api.util.text.MCTextComponent;
BasinRecipe.registerRecipe(
    <item:create:whisk>, // 右键物品
    <item:minecraft:gravel>, // 输入物品, 输入物品的数量决定配方消耗数量
    <fluid:mekanism:sulfuric_acid> * 1000, // 输入流体, 输入流体数量决定配方消耗数量
    <fluid:immersiveengineering:concrete> * 1000 // 输出流体, 输出流体数量决定配方输出数量
);
//沙砾硫酸变混凝土
mods.jei.JEI.addInfo(<fluid:immersiveengineering:concrete> * 1000, [
    game.localize("xxtt.7")
]);

BasinRecipe.registerRecipe(
    <item:create:whisk>, // 右键物品
    <item:minecraft:charcoal>, // 输入物品, 输入物品的数量决定配方消耗数量
    <fluid:mekanism:sulfuric_acid> * 1000, // 输入流体, 输入流体数量决定配方消耗数量
    <fluid:immersiveengineering:creosote> * 1000 // 输出流体, 输出流体数量决定配方输出数量
);
//木炭硫酸变杂酚油
mods.jei.JEI.addInfo(<fluid:immersiveengineering:creosote> * 1000, [
    game.localize("xxtt.6")
]);

BasinRecipe.registerRecipe(
    <item:create:whisk>, // 右键物品
    <item:minecraft:bee_nest>, // 输入物品, 输入物品的数量决定配方消耗数量
    <fluid:mekanism:sulfuric_acid> * 1000, // 输入流体, 输入流体数量决定配方消耗数量
    <fluid:mekanism:ethene> * 1000 // 输出流体, 输出流体数量决定配方输出数量
);
//蜂巢硫酸变液态乙烯
mods.jei.JEI.addInfo(<fluid:mekanism:ethene> * 1000, [
    game.localize("xxtt.5")
]);


BasinRecipe.registerRecipe(
    <item:create:whisk>, // 右键物品
    <item:minecraft:rotten_flesh>, // 输入物品, 输入物品的数量决定配方消耗数量
    <fluid:mekanism:sulfuric_acid> * 1000, // 输入流体, 输入流体数量决定配方消耗数量
    <fluid:tconstruct:blood> * 1000 // 输出流体, 输出流体数量决定配方输出数量
);

mods.jei.JEI.addInfo(<fluid:tconstruct:blood> * 1000, [
    game.localize("xxtt.4")
]);

//下级精华硫酸变血
BasinRecipe.registerRecipe(
    <item:create:whisk>, // 右键物品
    <item:create:blaze_cake>, // 输入物品, 输入物品的数量决定配方消耗数量
    <fluid:mekanism:sulfuric_acid> * 1000, // 输入流体, 输入流体数量决定配方消耗数量
    <fluid:tconstruct:blazing_blood> * 1000 // 输出流体, 输出流体数量决定配方输出数量
);

mods.jei.JEI.addInfo(<fluid:tconstruct:blazing_blood> * 1000, [
    game.localize("xxtt.3")
]);

//熔岩蛋糕硫酸变烈焰人之血

//哭泣黑曜石获取
BasinRecipe.registerRecipe(
    <item:create:whisk>, // 右键物品
    <item:minecraft:crying_obsidian>, // 输入物品, 输入物品的数量决定配方消耗数量
    <fluid:mekanism:sulfuric_acid> * 1000, // 输入流体, 输入流体数量决定配方消耗数量
    <fluid:minecraft:lava> * 1000 // 输出流体, 输出流体数量决定配方输出数量
);
//哭泣黑曜石硫酸变熔岩

mods.jei.JEI.addInfo(<fluid:minecraft:lava> * 1000, [
    game.localize("xxtt.2")
]);

//[<item:minecraft:crying_obsidian>,<item:extendedcrafting:luminessence>]
BasinRecipe.registerRecipe(
    <item:create:whisk>, // 右键物品
    <item:extendedcrafting:luminessence>, // 输入物品, 输入物品的数量决定配方消耗数量
    <fluid:mekanism:sulfuric_acid> * 1000, // 输入流体, 输入流体数量决定配方消耗数量
    <fluid:mekanism:heavy_water> * 1000 // 输出流体, 输出流体数量决定配方输出数量
);
//流明精华硫酸变重水

// mods.jei.JEI.addInfo(IFluidStack stack, String[] information)

mods.jei.JEI.addInfo(<fluid:mekanism:heavy_water> * 1000, [
    game.localize("xxtt.1")
]);







