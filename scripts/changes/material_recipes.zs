import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.gregtech.recipe.RecipeMap;



//Add table brass recipes for bronze (disabled) items
recipes.addShaped(<gregtech:metal_casing> * 3,
    [[<ore:plateBrass>, <ore:craftingToolHardHammer>, <ore:plateBrass>],
    [<ore:plateBrass>, <ore:frameGtBrass>, <ore:plateBrass>],
    [<ore:plateBrass>, <ore:craftingToolWrench>, <ore:plateBrass>]]);
recipes.addShaped(<gregtech:boiler_casing> * 3,
    [[<ore:plateBrass>,<gregtech:fluid_pipe:2094>, <ore:plateBrass>],
    [<gregtech:fluid_pipe:2094>, <ore:frameGtBrass>, <gregtech:fluid_pipe:2094>],
    [<ore:plateBrass>, <gregtech:fluid_pipe:2094>, <ore:plateBrass>]]);
recipes.addShaped(<gregtech:boiler_firebox_casing> * 3,
    [[<ore:plateBrass>,<ore:stickBrass>, <ore:plateBrass>],
    [<ore:stickBrass>, <ore:frameGtBrass>, <ore:stickBrass>],
    [<ore:plateBrass>, <ore:stickBrass>, <ore:plateBrass>]]);
recipes.addShaped(<gregtech:turbine_casing> * 3,
    [[<ore:plateBrass>, <ore:craftingToolHardHammer>, <ore:plateBrass>],
    [<ore:gearBrass>, <ore:frameGtBrass>, <ore:gearBrass>],
    [<ore:plateBrass>, <ore:craftingToolWrench>, <ore:plateBrass>]]);
recipes.addShaped(<gregtech:machine:802>,
    [[<ore:plateBrass>,<ore:plateBrass>, <ore:plateBrass>],
    [<ore:plateBrass>, null, <ore:plateBrass>],
    [<ore:plateBrass>, <ore:plateBrass>, <ore:plateBrass>]]);
recipes.addShaped(<gregtech:machine:2208>,
    [[<ore:stickLongBrass>,<ore:plateBrass>, <ore:stickLongBrass>],
    [<ore:plateBrass>, <ore:craftingToolHardHammer>, <ore:plateBrass>],
    [<ore:stickLongBrass>, <ore:plateBrass>, <ore:stickLongBrass>]]);
recipes.addShaped(<gregtech:machine:812>,
    [[<ore:plateBrass>,<ore:blockGlass>, <ore:plateBrass>],
    [<ore:blockGlass>, null, <ore:blockGlass>],
    [<ore:plateBrass>, <ore:blockGlass>, <ore:plateBrass>]]);
recipes.addShaped(<gregtech:machine:2196>,
    [[null, <ore:craftingToolHardHammer>, null],
    [<ore:plateBrass>, <ore:stickLongBrass>, <ore:plateBrass>],
    [<ore:plateBrass>, <ore:stickLongBrass>, <ore:plateBrass>]]);
recipes.addShaped(<gregtech:machine:825>,
    [[<ore:plateWroughtIron>, <minecraft:crafting_table>, <ore:plateWroughtIron>],
    [<ore:plateWroughtIron>, <gregtech:machine:802>, <ore:plateWroughtIron>],
    [<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>]]);
    
//Change turbine casing recipes to be neither sequential nor wrong material (steel != magnalium, looking at YOU)
//Crafting table
recipes.remove(<gregtech:turbine_casing:3>);
recipes.remove(<gregtech:turbine_casing:4>);
recipes.remove(<gregtech:turbine_casing:5>);
recipes.remove(<gregtech:turbine_casing:6>);
recipes.addShaped(<gregtech:turbine_casing:3> * 3,
    [[<ore:plateMagnalium>, <gregtech:fluid_pipe:184>, <ore:plateMagnalium>],
    [<ore:plateMagnalium>, <ore:frameGtMagnalium>, <ore:plateMagnalium>],
    [<ore:plateMagnalium>, <gregtech:fluid_pipe:184>, <ore:plateMagnalium>]]);
recipes.addShaped(<gregtech:turbine_casing:4> * 3,
    [[<ore:plateTitanium>, <gregtech:fluid_pipe:72>, <ore:plateTitanium>],
    [<ore:plateTitanium>, <ore:frameGtTitanium>, <ore:plateTitanium>],
    [<ore:plateTitanium>, <gregtech:fluid_pipe:72>, <ore:plateTitanium>]]);
recipes.addShaped(<gregtech:turbine_casing:5> * 3,
    [[<ore:plateStainlessSteel>, <gregtech:fluid_pipe:183>, <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, <ore:frameGtStainlessSteel>, <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, <gregtech:fluid_pipe:183>, <ore:plateStainlessSteel>]]);
recipes.addShaped(<gregtech:turbine_casing:6> * 3,
    [[<ore:plateTungstenSteel>, <gregtech:fluid_pipe:235>, <ore:plateTungstenSteel>],
    [<ore:plateTungstenSteel>, <ore:frameGtTungstenSteel>, <ore:plateTungstenSteel>],
    [<ore:plateTungstenSteel>, <gregtech:fluid_pipe:235>, <ore:plateTungstenSteel>]]);
//Assembler
RecipeMap.getByName("assembler").findRecipe(16, [<ore:plateMagnalium>.firstItem * 6, <gregtech:frame_blue_steel>], null).remove();
RecipeMap.getByName("assembler").findRecipe(16, [<ore:plateTitanium>.firstItem * 6, <gregtech:turbine_casing:3>], null).remove();
RecipeMap.getByName("assembler").findRecipe(16, [<ore:plateStainlessSteel>.firstItem * 6, <gregtech:turbine_casing:3>], null).remove();
RecipeMap.getByName("assembler").findRecipe(16, [<ore:plateTungstenSteel>.firstItem * 6, <gregtech:turbine_casing:3>], null).remove();
RecipeMap.getByName("assembler").recipeBuilder()
            .inputs([<ore:plateMagnalium>.firstItem * 6, <gregtech:fluid_pipe:184> * 2, <ore:frameGtMagnalium>.firstItem])
            .outputs([<gregtech:turbine_casing:3> * 3])
            .duration(50).EUt(16).buildAndRegister();
RecipeMap.getByName("assembler").recipeBuilder()
            .inputs([<ore:plateTitanium>.firstItem * 6, <gregtech:fluid_pipe:72> * 2, <ore:frameGtTitanium>.firstItem])
            .outputs([<gregtech:turbine_casing:4> * 3])
            .duration(50).EUt(16).buildAndRegister();
RecipeMap.getByName("assembler").recipeBuilder()
            .inputs([<ore:plateStainlessSteel>.firstItem * 6, <gregtech:fluid_pipe:183> * 2, <ore:frameGtStainlessSteel>.firstItem])
            .outputs([<gregtech:turbine_casing:5> * 3])
            .duration(50).EUt(16).buildAndRegister();
RecipeMap.getByName("assembler").recipeBuilder()
            .inputs([<ore:plateTungstenSteel>.firstItem * 6, <gregtech:fluid_pipe:235> * 2, <ore:frameGtTungstenSteel>.firstItem])
            .outputs([<gregtech:turbine_casing:6> * 3])
            .duration(50).EUt(16).buildAndRegister();

