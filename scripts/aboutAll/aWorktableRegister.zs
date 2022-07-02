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
                        toolDamage as int = 0
                        ) as void {
    Recipe.type(recipeType)
        .shaped(inputIng)
        .output(output)
        .tool(tool, toolDamage)
        .register();
}
//不带流体的合成
public function ArtisanWorkFluid(recipeType as Type = Type.BASIC,
                        inputIng as IIngredient[][],
                        output as IItemStack,
                        tool as IItemStack = <item:minecraft:air>,
                        toolDamage as int = 0,
                        IF as IFluidStack = <fluid:minecraft:empty>
                        ) as void {
    Recipe.type(recipeType)
        .shaped(inputIng)
        .output(output)
        .tool(tool, toolDamage)
        .fluid(IF)
        .register();
}
//带流体的合成
public function ArtisanWorkMakeWorktable(input as IItemStack,output as IItemStack) as void {
    ArtisanWork(
        Type.BASIC,
        [[input,input,input],
         [<tag:items:forge:rods/wooden>,<item:artisanworktables:worktable_basic>,<tag:items:forge:rods/wooden>],
         [<tag:items:forge:rods/wooden>,<tag:items:forge:string>,<tag:items:forge:rods/wooden>]],
        output,
        <item:notreepunching:flint_axe>,
        8
    );
}
//工作台制作