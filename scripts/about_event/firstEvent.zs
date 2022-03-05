import crafttweaker.api.util.MCHand;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent;

CTEventManager.register<MCRightClickBlockEvent>((event) => {
    var pos = event.blockPos;
    var player = event.player;
    var world = player.world;

    if(world.getBlockState(event.blockPos).block.registryName.toString() == "mekanismgenerators:control_rod_assembly" &&
        !world.remote &&
        event.hand != MCHand.OFF_HAND
    ) {
        player.sendMessage(MCTextComponent.createStringTextComponent("why do you use your dirty right hand to click me?!!!"));
    }
});

CTEventManager.register<MCRightClickBlockEvent>((event) => {
    var pos = event.blockPos;
    var player = event.player;
    var world = player.world;

    if(world.getBlockState(event.blockPos).block.registryName.toString() == "create:creative_crate" &&
        !world.remote &&
        event.hand != MCHand.OFF_HAND
    ) {
        player.sendMessage(MCTextComponent.createTranslationTextComponent("banTiaoXiang.say"));
    }
});
