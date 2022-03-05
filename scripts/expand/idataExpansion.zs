#priority 100
import crafttweaker.api.data.IData;
import crafttweaker.api.data.MapData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.data.INumberData;
import crafttweaker.api.data.ICollectionData;

public expand IData {
    public asMapData() as MapData? {
        return (this is MapData) ? (this as MapData) : null;
    }

    public asListData() as ListData? {
        return (this is ListData) ? (this as ListData) : null;
    }

    public getAt(key as string) as IData? {
        if(this is MapData) {
            return this.asMapData().getAt(key);
        }
        return null;
    }

    public merge(data as MapData) as MapData? {
        if(this is MapData) {
            return this.asMapData().merge(data);
        }
        return null;
    }

    public getAt(index as int) as IData? {
        if(this is ICollectionData) {
            return this.asCollection().getAt(index);
        }
        return null;
    }

    public getString(key as string) as string? {
        var data as IData? = this.getAt(key);
        return data != null ? data.getString() : null;
    }

    public getInt() as int {
        if(this is INumberData) {
            return this.asNumber().getInt();
        }
        return 0;
    }

    public getInt(key as string) as int {
        var data as IData? = this.getAt(key);
        return data != null ? data.getInt() : 0;
        
    }

    public getTankContent(type as string, index as int) as IData? {
        return this.getAt(type + "Tanks").getAt(index).getAt("TankContent");
    }

    public getFluidAmountAndIndex(fluidNames as string, type as string) as int[string] {
        var tankOne as IData = this.getTankContent(type, 0);
        var tankTwo as IData = this.getTankContent(type, 1);
        
        var nameInTankOne as string = tankOne.getString("FluidName");
        var nameInTankTwo as string = tankTwo.getString("FluidName");

        if(nameInTankOne == "minecraft:empty" && nameInTankTwo == fluidNames) {
            return {"amount" : tankTwo.getInt("Amount"), "index" : 1};
        }

        if(nameInTankOne in ["minecraft:empty", fluidNames]) {
            return {"amount" : tankOne.getInt("Amount"), "index" : 0};
        }
        
        if(nameInTankTwo in ["minecraft:empty", fluidNames]) {
            return {"amount" : tankTwo.getInt("Amount"), "index" : 1};
        }

        return {"amount" : 0 as int, "index" : -1 as int};
    }

    public getItemAmountAndIndex(itemName as string) as int[string] {
        for itemData in this.getAt("InputItems").getAt("Items").asList() {
            if(itemData.getString("id") == itemName) {
                return {"amount" : itemData.getInt("Count"), "index" : itemData.getInt("Slot")};
            }
        }

        return {"amount" : 0, "index" : -1};
    }
}