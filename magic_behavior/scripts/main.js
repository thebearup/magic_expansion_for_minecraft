import {world} from "@minecraft/server" //we only need the world class to use custom components

//before the world load let's register the custom component
world.beforeEvents.worldInitialize.subscribe((event) => {
    //registering part
    event.itemComponentRegistry.registerCustomComponent('magic:bore', {
        onUse: e => {
            const source = e.source;
            source.runCommand("function easy_clear")
        }
    });
    event.itemComponentRegistry.registerCustomComponent('magic:float', {
        onUse: e => {
            const source = e.source;
            source.addEffect("levitation", 60, {amplifier: 0, showParticles: false})
            source.addEffect("slow_falling", 120, {amplifier: 0, showParticles: false})
        }
    });
    event.itemComponentRegistry.registerCustomComponent('magic:fire_res', {
        onUse: e => {
            const source = e.source;
            source.addEffect("fire_resistance", 60, {amplifier: 0, showParticles: false})
        }
    });
    event.itemComponentRegistry.registerCustomComponent('magic:haste', {
        onUse: e => {
            const source = e.source;
            source.addEffect("haste", 60, {amplifier: 0, showParticles: false})
            source.addEffect("mining_fatigue", 0, {amplifier: 0, showParticles: false})
        }
    });
    event.itemComponentRegistry.registerCustomComponent('magic:go_home', {
        onUse: e => {
            const source = e.source;
            source.runCommand("teleport @e[type=magic:npc_eye_blue,c=1]")
        }
    });
    event.itemComponentRegistry.registerCustomComponent('lazy:scatter', {
        onUse: e => {
            const source = e.source;
            source.runCommand("spreadplayers ~ ~ 0 5000 @s");
            source.addEffect("slow_falling", 60, {amplifier: 0, showParticles: false});
        }
    });
})

/** @type {import("@minecraft/server").BlockCustomComponent} */
const HomeTerminusInteract = {
    onPlayerInteract(event) {
        const player = event.player;
        player.runCommand("dialogue open @e[type=magic:npc_eye_blue,c=1,r=5] @p home_terminus_main")
    }
};
const CopperTerminusInteract = {
    onPlayerInteract(event) {
        const player = event.player;
        player.runCommand("dialogue open @e[type=magic:npc_eye_green,c=1,r=5] @p copper_terminus_main")
    }
};
const IronTerminusInteract = {
    onPlayerInteract(event) {
        const player = event.player;
        player.runCommand("dialogue open @e[type=magic:npc_eye_green,c=1,r=5] @p iron_terminus_main")
    }
};
const GoldTerminusInteract = {
    onPlayerInteract(event) {
        const player = event.player;
        player.runCommand("dialogue open @e[type=magic:npc_eye_green,c=1,r=5] @p gold_terminus_main")
    }
};
const EmeraldTerminusInteract = {
    onPlayerInteract(event) {
        const player = event.player;
        player.runCommand("dialogue open @e[type=magic:npc_eye_green,c=1,r=5] @p emerald_terminus_main")
    }
};
const LesserEnchantInteract = {
    onPlayerInteract(event) {
        const player = event.player;
        player.runCommand("dialogue open @e[type=magic:npc_book,c=1,r=5] @p lesser_enchant_dialog")
    }
};
const GreaterEnchantInteract = {
    onPlayerInteract(event) {
        const player = event.player;
        player.runCommand("dialogue open @e[type=magic:npc_book,c=1,r=5] @p greater_enchant_dialog")
    }
};
const ArcaneEnchantInteract = {
    onPlayerInteract(event) {
        const player = event.player;
        player.runCommand("dialogue open @e[type=magic:npc_book,c=1,r=5] @p arcane")
    }
};
const XPGeneratorOffInteract = {
    onPlayerInteract(event) {
        const player = event.player;
        const block = event.block;
        const { x, y, z } = block.location;
        player.runCommand(`fill ${x} ${y} ${z} ${x} ${y} ${z} lazy:xp_generator_on`)
    }
};
const XPGeneratorOnInteract = {
    onPlayerInteract(event) {
        const player = event.player;
        const block = event.block;
        const { x, y, z } = block.location;
        player.runCommand(`fill ${x} ${y} ${z} ${x} ${y} ${z} lazy:xp_generator_off`)
    }
};
const XPGenerate = {
    onRandomTick(event) {
        const dimension = event.dimension;
        const block = event.block;
        const { x, y, z } = block.location;
        dimension.runCommand(`summon xp_orb ${x} ${y} ${z}`)
        dimension.runCommand(`summon xp_orb ${x} ${y} ${z}`)
        dimension.runCommand(`summon xp_orb ${x} ${y} ${z}`)
    }
};

world.beforeEvents.worldInitialize.subscribe(({ blockComponentRegistry }) => {
    blockComponentRegistry.registerCustomComponent(
        "magic:home_terminus_interact",
        HomeTerminusInteract
    );
    blockComponentRegistry.registerCustomComponent(
        "magic:copper_terminus_interact",
        CopperTerminusInteract
    );
    blockComponentRegistry.registerCustomComponent(
        "magic:iron_terminus_interact",
        IronTerminusInteract
    );
    blockComponentRegistry.registerCustomComponent(
        "magic:gold_terminus_interact",
        GoldTerminusInteract
    );
    blockComponentRegistry.registerCustomComponent(
        "magic:emerald_terminus_interact",
        EmeraldTerminusInteract
    );
    blockComponentRegistry.registerCustomComponent(
        "magic:lesser_enchant_interact",
        LesserEnchantInteract
    );
    blockComponentRegistry.registerCustomComponent(
        "magic:greater_enchant_interact",
        GreaterEnchantInteract
    );
    blockComponentRegistry.registerCustomComponent(
        "magic:arcane_enchant_interact",
        ArcaneEnchantInteract
    );
    blockComponentRegistry.registerCustomComponent(
        "lazy:xp_generator_off_interact",
        XPGeneratorOffInteract
    );
    blockComponentRegistry.registerCustomComponent(
        "lazy:xp_generator_on_interact",
        XPGeneratorOnInteract
    );
    blockComponentRegistry.registerCustomComponent(
        "lazy:xp_generate",
        XPGenerate
    );
});

world.afterEvents.playerPlaceBlock.subscribe(event => { 
    const block = event.block;
    const player = event.player;
    const { x, y, z } = block.location; // Get block coordinates

    // player.runCommand(`say ${player.nameTag} placed ${block.typeId}`);

    if (block.typeId === "magic:home_terminus") { // Change to desired block
        player.runCommand(`summon magic:npc_eye_blue ${x} ${y + 1} ${z} facing @p "" HomeTerminus`);
        player.runCommand("dialogue change @e[type=magic:npc_eye_blue,c=1,r=5] home_terminus_main");
        player.runCommand(`tickingarea add circle ${x} ${y} ${z} 5`);
    };
    if (block.typeId === "magic:copper_terminus") { // Change to desired block
        player.runCommand(`summon magic:npc_eye_green ${x} ${y + 1} ${z} facing @p "" CopperTerminus`);
        player.runCommand("dialogue change @e[type=magic:npc_eye_green,c=1,r=5] copper_terminus_main");
        player.runCommand(`tickingarea add circle ${x} ${y} ${z} 5`);
    };
    if (block.typeId === "magic:iron_terminus") { // Change to desired block
        player.runCommand(`summon magic:npc_eye_green ${x} ${y + 1} ${z} facing @p "" IronTerminus`);
        player.runCommand("dialogue change @e[type=magic:npc_eye_green,c=1,r=5] iron_terminus_main");
        player.runCommand(`tickingarea add circle ${x} ${y} ${z} 5`);
    };
    if (block.typeId === "magic:gold_terminus") { // Change to desired block
        player.runCommand(`summon magic:npc_eye_green ${x} ${y + 1} ${z} facing @p "" GoldTerminus`);
        player.runCommand("dialogue change @e[type=magic:npc_eye_green,c=1,r=5] gold_terminus_main");
        player.runCommand(`tickingarea add circle ${x} ${y} ${z} 5`);
    };
    if (block.typeId === "magic:emerald_terminus") { // Change to desired block
        player.runCommand(`summon magic:npc_eye_green ${x} ${y + 1} ${z} facing @p "" EmeraldTerminus`);
        player.runCommand("dialogue change @e[type=magic:npc_eye_green,c=1,r=5] emerald_terminus_main");
        player.runCommand(`tickingarea add circle ${x} ${y} ${z} 5`);
    };
    if (block.typeId === "magic:lesser_enchanting_table") { // Change to desired block
        player.runCommand(`summon magic:npc_book ${x} ${y + 1} ${z} facing @p "" LesserEnchanter`);
        player.runCommand("dialogue change @e[type=magic:npc_book,c=1,r=5] lesser_enchant_dialog");
    };
    if (block.typeId === "magic:greater_enchanting_table") { // Change to desired block
        player.runCommand(`summon magic:npc_book ${x} ${y + 1} ${z} facing @p "" LesserEnchanter`);
        player.runCommand("dialogue change @e[type=magic:npc_book,c=1,r=5] greater_enchant_dialog");
    };
    if (block.typeId === "magic:arcane_enchanting_table") { // Change to desired block
        player.runCommand(`summon magic:npc_book ${x} ${y + 1} ${z} facing @p "" LesserEnchanter`);
        player.runCommand("dialogue change @e[type=magic:npc_book,c=1,r=5] arcane_enchant_dialog");
    };

});

// blockBreakEvent.subscribe((event) => {
world.afterEvents.playerBreakBlock.subscribe(event => {
    const { player, block } = event;
    const { x, y, z } = block.location; // Get block coordinates
    const brokenBlockID = event.brokenBlockPermutation.type.id;

    if (brokenBlockID === "magic:home_terminus") { // Change to desired block
        player.runCommand("kill @e[type=magic:npc_eye_blue,c=1,r=5]");
        player.runCommand(`tickingarea remove ${x} ${y} ${z}`);
    };
    if (brokenBlockID === "magic:copper_terminus") { // Change to desired block
        player.runCommand("kill @e[type=magic:npc_eye_green,c=1,r=5]");
        player.runCommand(`tickingarea remove ${x} ${y} ${z}`);
    };
    if (brokenBlockID === "magic:iron_terminus") { // Change to desired block
        player.runCommand("kill @e[type=magic:npc_eye_green,c=1,r=5]");
        player.runCommand(`tickingarea remove ${x} ${y} ${z}`);
    };
    if (brokenBlockID === "magic:gold_terminus") { // Change to desired block
        player.runCommand("kill @e[type=magic:npc_eye_green,c=1,r=5]");
        player.runCommand(`tickingarea remove ${x} ${y} ${z}`);
    };
    if (brokenBlockID === "magic:emerald_terminus") { // Change to desired block
        player.runCommand("kill @e[type=magic:npc_eye_green,c=1,r=5]");
        player.runCommand(`tickingarea remove ${x} ${y} ${z}`);
    };
    if (brokenBlockID === "magic:lesser_enchanting_table") { // Change to desired block
        player.runCommand("kill @e[type=magic:npc_book,c=1,r=5]");
    };
    if (brokenBlockID === "magic:greater_enchanting_table") { // Change to desired block
        player.runCommand("kill @e[type=magic:npc_book,c=1,r=5]");
    };
    if (brokenBlockID === "magic:arcane_enchanting_table") { // Change to desired block
        player.runCommand("kill @e[type=magic:npc_book,c=1,r=5]");
    };
});