import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent;

import stdlib.List;
import math.Functions;
import crafttweaker.api.data.IData;
import crafttweaker.api.world.MCWorld;
import crafttweaker.api.util.BlockPos;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.blocks.MCBlockState;
import crafttweaker.api.events.EventPriority;
import crafttweaker.api.player.MCPlayerEntity;

CTEventManager.register<MCRightClickBlockEvent>(EventPriority.HIGHEST, (event) => {
    var player as MCPlayerEntity = event.player;
    var world as MCWorld = player.world;
    var pos as BlockPos = event.blockPos;
    var isBasinBlock as bool = world.getBlockState(pos).block.registryName.equals(<resource:create:basin>);

    if(!world.remote && isBasinBlock) {
        var recipesList as List<BasinRecipe> = new List<BasinRecipe>();

        for recipe in BasinRecipe.TOTAL_BASIN_RECIPES {
            if(recipe.getRightItem().matches(event.itemStack)) {
                recipesList.add(recipe);
            }
        }

        for element in BasinRecipe.sort(recipesList) {
            addOutput(player, world, pos, world.getTileData(pos), element);
        }
    }
});

public function addOutput(player as MCPlayerEntity, world as MCWorld, pos as BlockPos, originalData as IData, recipe as BasinRecipe) as void {
    var inputItem as IItemStack = recipe.getInputItem();
    var inputFluid as IFluidStack = recipe.getInputLiquid();
    var outputFluid as IFluidStack = recipe.getOutputLiquid();
    
    var itemAmount as int = inputItem.amount;

    var inputName as string = inputFluid.registryName.toString();
    var inputAmount as int = inputFluid.amount;

    var outputName as string = outputFluid.registryName.toString();
    var outputAmount as int = outputFluid.amount;

    var originalState as MCBlockState = world.getBlockState(pos);
    var inputAmountAIndex as int[string] = originalData.getFluidAmountAndIndex(inputName, "Input");
    var outputAmountAIndex as int[string] = originalData.getFluidAmountAndIndex(outputName, "Output");
    var itemAmountAIndex as int[string] = originalData.getItemAmountAndIndex(inputItem.registryName);

    if(outputAmountAIndex["index"] == -1 || outputAmountAIndex["amount"] == 1000 || inputAmountAIndex["amount"] < inputAmount || itemAmountAIndex["amount"] < itemAmount) {
        return;
    }

    originalData.getAt("InputItems").getAt("Items").getAt(itemAmountAIndex["index"])
    .merge({Count : itemAmountAIndex["amount"] - itemAmount});

    world.getTileEntity(pos).updateData(originalData); // 防止物品弹出

    originalData.getTankContent("Input", inputAmountAIndex["index"])
    .merge({FluidName: inputName, Amount: inputAmountAIndex["amount"] - inputAmount});

    originalData.getTankContent("Output", outputAmountAIndex["index"])
    .merge({FluidName: outputName, Amount: Functions.min(1000, outputAmountAIndex["amount"] + outputAmount)});

    world.setBlockState(pos, <blockstate:minecraft:air>);
    world.setBlockState(pos, originalState);
    world.getTileEntity(pos).updateData(originalData); // 重新更新 nbt
}