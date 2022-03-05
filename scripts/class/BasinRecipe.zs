import crafttweaker.api.item.IItemStack;
import crafttweaker.api.fluid.IFluidStack;

import stdlib.List;
//import stdlib.Hashable;

public class BasinRecipe {
    private val priority as int;
    private val rightItem as IItemStack;
    private val inputItem as IItemStack;
    private val inputLiquid as IFluidStack;
    private val outputLiquid as IFluidStack;
    public static val EMPTY as BasinRecipe = new BasinRecipe();
    public static val TOTAL_BASIN_RECIPES = new List<BasinRecipe>();

    private this(rightItem as IItemStack, inputItem as IItemStack, inputLiquid as IFluidStack, outputLiquid as IFluidStack, priority as int = 0) {
        this.priority = priority;
        this.rightItem = rightItem;
        this.inputItem = inputItem;
        this.inputLiquid = inputLiquid;
        this.outputLiquid = outputLiquid;
    }

    private this() {
        this.priority = 0;
        this.rightItem = <item:minecraft:air>;
        this.inputItem = <item:minecraft:air>;
        this.inputLiquid = <fluid:minecraft:empty>;
        this.outputLiquid = <fluid:minecraft:empty>;
    }

    public static registerRecipe(rightItem as IItemStack, inputItem as IItemStack, inputLiquid as IFluidStack, outputLiquid as IFluidStack, priority as int = 0) as BasinRecipe? {
        var newRecipe = new BasinRecipe(rightItem, inputItem, inputLiquid, outputLiquid, priority);
        var priority as int = newRecipe.getPriority();

        if(newRecipe.isEmpty()) {
            return null;
        }

        TOTAL_BASIN_RECIPES.add(newRecipe);
        return newRecipe;
    }

    public static sort(list as List<BasinRecipe>) as List<BasinRecipe> {
        var listCopy = list.copy();
        var newList = new List<BasinRecipe>();

        while(!listCopy.isEmpty) {
            var recipe = EMPTY;

            for element in listCopy {
                if(recipe.isEmpty()) {
                    recipe = element;
                } else if(element.getPriority() > recipe.getPriority()) {
                    recipe = element;
                }
            }

            newList.add(recipe);
            listCopy.remove(listCopy.indexOf(recipe));
        }

        return newList;
    }

    public getRightItem() as IItemStack {
        return this.rightItem;
    }

    public getInputItem() as IItemStack {
        return this.inputItem;
    }

    public getInputLiquid() as IFluidStack {
        return this.inputLiquid;
    }

    public getOutputLiquid() as IFluidStack {
        return this.outputLiquid;
    }

    public getPriority() as int {
        return this.priority;
    }

    public isEmpty() as bool {
        return this.rightItem.empty && this.inputItem.empty && this.inputLiquid.empty && this.outputLiquid.empty;
    }

    public equals(other as BasinRecipe) as bool {
        return this.rightItem.matches(other.getRightItem()) &&
                this.inputItem.matches(other.getInputItem()) &&
                this.inputLiquid.registryName.equals(other.getInputLiquid().registryName) &&
                this.outputLiquid.registryName.equals(other.getOutputLiquid().registryName);
    }

    public ==(other as BasinRecipe) as bool {
        return this.equals(other);
    }

/*
    public implements Hashable<BasinRecipe> {
	    public extern hashCode() as int;
		public == (other as BasinRecipe) as bool {
            return this == other;
        }
	}
*/
}
