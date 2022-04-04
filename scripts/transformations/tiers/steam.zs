import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.gregtech.recipe.RecipeMap;



/**
* Steam machine recipes
*/
recipes.remove(<gregtech:machine_casing:13>);
recipes.remove(<gregtech:machine_casing:12>);
recipes.remove(<gregtech:machine:16>);
recipes.remove(<gregtech:machine:18>);
recipes.remove(<gregtech:machine:8>);
recipes.remove(<gregtech:machine:14>);
recipes.remove(<gregtech:machine:10>);
recipes.addShaped(<gregtech:machine_casing:13>,
    [[<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>],
    [<ore:plateWroughtIron>, <ore:craftingToolHardHammer>, <ore:plateWroughtIron>],
    [<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]]);
recipes.addShaped(<gregtech:machine_casing:12>,
    [[<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>],
    [<ore:plateWroughtIron>, <ore:craftingToolHardHammer>, <ore:plateWroughtIron>],
    [<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>]]);
recipes.addShaped(<gregtech:machine:16>,
    [[<ore:pipeSmallBrass>, <ore:circuitClockwork>, <ore:pipeSmallBrass>],
    [<ore:pipeSmallBrass>, <gregtech:machine_casing:13>, <ore:pipeSmallBrass>],
    [<ore:pipeSmallBrass>, <minecraft:furnace>, <ore:pipeSmallBrass>]]);
recipes.addShaped(<gregtech:machine:18>,
    [[<ore:pipeSmallBrass>, <ore:pipeSmallBrass>, <ore:pipeSmallBrass>],
    [<ore:craftingFurnace>, <gregtech:machine_casing:13>, <ore:craftingFurnace>],
    [<ore:pipeSmallBrass>, <ore:circuitClockwork>, <ore:pipeSmallBrass>]]);
recipes.addShaped(<gregtech:machine:8>,
    [[<ore:pipeSmallBrass>, <ore:pipeMediumBrass>, <ore:pipeSmallBrass>],
    [<ore:circuitClockwork>, <gregtech:machine_casing:12>, <ore:circuitClockwork>],
    [<ore:pipeSmallBrass>, <minecraft:hopper>, <ore:pipeSmallBrass>]]);
recipes.addShaped(<gregtech:machine:14>,
    [[<ore:gearWroughtIron>, <gregtech:meta_tool:6>.withTag({"GT.ToolStats": {Material: "wrought_iron"}}).noReturn(), <ore:gearWroughtIron>],
    [<ore:circuitClockwork>, <gregtech:machine_casing:12>, <ore:circuitClockwork>],
    [<ore:pipeSmallBrass>, <minecraft:anvil>, <ore:pipeSmallBrass>]]);
recipes.addShaped(<gregtech:machine:10>,
    [[<ore:gemFlint>, <ore:circuitClockwork>, <ore:gemFlint>],
    [<ore:gearWroughtIron>, <gregtech:machine_casing:12>, <ore:gearWroughtIron>],
    [<ore:pipeSmallBrass>, <ore:gearWroughtIron>, <ore:pipeSmallBrass>]]);
    


/**
* Steam boiler recipes
*/
recipes.remove(<gregtech:machine:2>);
recipes.remove(<gregtech:machine:3>);
recipes.remove(<gregtech:machine:6>);
recipes.addShaped(<gregtech:machine:2>,
    [[<ore:pipeSmallBrass>, <minecraft:hopper>, <ore:pipeSmallBrass>],
    [<ore:pipeSmallBrass>, <gregtech:machine_casing:13>, <ore:pipeSmallBrass>],
    [<ore:pipeMediumBrass>, <minecraft:furnace>, <ore:pipeMediumBrass>]]);
recipes.addShaped(<gregtech:machine:3>,
    [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
    [<ore:pipeSmallBrass>, <ore:pipeSmallBrass>, <ore:pipeSmallBrass>],
    [<ore:pipeMediumBrass>, <gregtech:machine_casing:13>, <ore:pipeMediumBrass>]]);
recipes.addShaped(<gregtech:machine:6>,
    [[<ore:pipeSmallBrass>, <ore:pipeMediumBrass>, <ore:pipeSmallBrass>],
    [<ore:pipeSmallBrass>, <gregtech:machine_casing:13>, <ore:pipeSmallBrass>],
    [<ore:pipeMediumBrass>, <minecraft:furnace>, <ore:pipeMediumBrass>]]);
