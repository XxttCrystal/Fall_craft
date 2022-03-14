import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import mods.zensummoning.SummoningDirector;
import mods.zensummoning.SummoningAttempt;
import mods.zensummoning.SummoningInfo;
import mods.zensummoning.MobInfo;
import crafttweaker.api.entity.MCEntity;
import crafttweaker.api.item.IIngredientWithAmount;
import crafttweaker.api.entity.MCEntityType;

craftingTable.addShaped("summoning", <item:zensummoning:altar>, [
    [<item:contenttweaker:redstone_crystal>,<item:minecraft:air>,<item:contenttweaker:redstone_crystal>],
    [<item:minecraft:crying_obsidian>, <item:contenttweaker:redstone_crystal>, <item:minecraft:crying_obsidian>],
    [<item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>]
]);

public function summonMob(mob as MCEntityType,reagents as IIngredientWithAmount[]) as void{
    SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<item:extendedcrafting:enhanced_ender_ingot>)
        .setReagents(reagents)
        .addMob(MobInfo.create()
            .setMob(mob)
            .setCount(15)
            .setSpread(2,0,2)
        )
);
}









