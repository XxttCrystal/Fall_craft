import crafttweaker.api.tag.MCTag;
import crafttweaker.util.NameUtils;
import crafttweaker.api.BracketHandlers;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.item.MCItemDefinition;

var oreNames as string[] = [
    "copper",
    "tin",
    "iron",
    "gold",
    "zinc",
    "osmium",
    "lead",
    "silver",
    "uranium",
    "nickel",
    "aluminum"
];

var removeItems as IIngredient[] = [
    <item:create:zinc_ingot>, // 锌
    <item:mekanism:ingot_tin>, // 锡
    <item:minecraft:iron_ingot>, // 铁
    <item:minecraft:gold_ingot>, // 金
    <tag:items:forge:ingots/lead>, // 铅
    <tag:items:forge:ingots/copper>, // 铜
    <tag:items:forge:ingots/osmium>, // 锇
    <tag:items:forge:ingots/silver>, // 锇
    <tag:items:forge:ingots/nickel>, // 镍
    <tag:items:forge:ingots/uranium>, // 铀
    <item:immersiveengineering:ingot_aluminum> // 铝
];

for item in removeItems {
    furnace.removeRecipe(item);
    blastFurnace.removeRecipe(item);
}

//铁水 铜水 锌水 金水 熔融锡
//熔融铅 熔融铝
for oreName in oreNames {
    var fluid as IFluidStack = BracketHandlers.getFluidStack("tconstruct:molten_" + oreName).setAmount(720);
    var input as IIngredient = <tagManager:items>.getTag("forge:ores/" + oreName).withAmount(2).asIngredient();

    <recipetype:create:mixing>.addRecipe(NameUtils.fixing(fluid.registryName), "heated", fluid, [input, <tag:items:forge:sand>]);
}
