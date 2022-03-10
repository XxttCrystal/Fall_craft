#loader contenttweaker
import mods.contenttweaker.block.BlockBuilder;
new BlockBuilder()
    .withSlipperiness(0.5f)
    .withHardnessAndResistance(0.5f, 0.5f)
    .withHarvestTool(<tooltype:pickaxe>)
    .build("ice_iron_block");