import mods.artisanworktables.Type;
import mods.artisanworktables.Tier;
import mods.artisanworktables.Recipe;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.fluid.IFluidStack;

//Type.BASIC
//Type.BLACKSMITH
//Type.CARPENTER
//Type.CHEF
//Type.CHEMIST
//Type.DESIGNER
//Type.ENGINEER
//Type.FARMER
//Type.JEWELER
//Type.MAGE
//Type.MASON
//Type.POTTER
//Type.SCRIBE
//Type.TAILOR
//Type.TANNER

//Tier.WORKTABLE
//Tier.WORKSTATION
//Tier.WORKSHOP



public function ArtisanWork(recipeType as Type = Type.BASIC,
                        inputIng as IIngredient[][],
                        output as IItemStack,
                        tool as IItemStack = <item:minecraft:air>,
                        toolDamage as int = 0,
                        tier as Tier = Tier.WORKTABLE,
                        IF as IFluidStack = <fluid:minecraft:empty>
                        ) as void {
    Recipe.type(recipeType)
        .shaped(inputIng)
        .output(output)
        .tool(tool, toolDamage)
        .fluid(IF)
        .restrict(tier)
        .register();
}