//summonMob(<entitytype:minecraft:zombie>,[<item:minecraft:rotten_flesh>,<item:minecraft:rotten_flesh>]);
//summonMob(<entitytype:minecraft:bat>,[<item:minecraft:rotten_flesh>,<item:minecraft:rotten_flesh>]);
import crafttweaker.api.item.IIngredientWithAmount;
import crafttweaker.api.entity.MCEntityType;
<entitytype:minecraft:bat>.addDrop("add1", <item:immersiveengineering:dust_saltpeter>);
//蝙蝠加掉落
<entitytype:minecraft:drowned>.addDrop("add2", <item:create:crushed_brass>);
//溺尸=>黄铜
<entitytype:minecraft:elder_guardian>.addDrop("add3",<item:minecraft:prismarine_crystals>);
<entitytype:minecraft:elder_guardian>.addDrop("add4",<item:minecraft:prismarine_shard>);
<entitytype:minecraft:elder_guardian>.addDrop("add5",<item:minecraft:wet_sponge>);
<entitytype:minecraft:elder_guardian>.addDrop("add6",<item:create:rose_quartz>);
//老守卫者掉落物品
<entitytype:minecraft:husk>.addDrop("add7",<item:moreminecarts:glass_spines>);
<entitytype:minecraft:silverfish>.addDrop("add8",<item:tconstruct:seared_stone>);
var outputmob as MCEntityType[] = [
    <entitytype:minecraft:zombie>,
    <entitytype:minecraft:bat>,
    <entitytype:minecraft:bee>,
    <entitytype:minecraft:chicken>,
    <entitytype:minecraft:cow>,
    <entitytype:minecraft:creeper>,
    <entitytype:minecraft:dolphin>,
    <entitytype:minecraft:drowned>,
    <entitytype:minecraft:elder_guardian>,
    <entitytype:minecraft:enderman>,
    <entitytype:minecraft:ghast>,
    <entitytype:minecraft:husk>,
    <entitytype:minecraft:shulker>,
    <entitytype:minecraft:silverfish>,
    <entitytype:minecraft:skeleton>,
    <entitytype:minecraft:slime>,
    <entitytype:minecraft:spider>
];
var input as IIngredientWithAmount[][] = [
    [<item:minecraft:rotten_flesh>*2],
    [<item:minecraft:stone>*2],
    [<item:minecraft:honeycomb>*2],
    [<item:minecraft:chicken>*2],
    [<item:minecraft:beef>*2],
    [<item:minecraft:gunpowder> * 2],
    [<item:minecraft:seagrass> * 2],
    [<tag:items:forge:ingots/copper> *2],
    [<item:minecraft:gold_ingot> * 2],
    [<item:minecraft:ender_pearl> * 2],
    [<item:minecraft:ghast_tear> * 2],
    [<item:minecraft:sand> * 2],
    [<item:minecraft:shulker_shell> * 2],
    [<item:minecraft:cobblestone> * 2],
    [<item:minecraft:bone> * 2],
    [<item:minecraft:slime_ball> * 2],
    [<item:minecraft:string> * 2]
];
for i in 0 .. outputmob.length{
    summonMob(outputmob[i],input[i]);
}
