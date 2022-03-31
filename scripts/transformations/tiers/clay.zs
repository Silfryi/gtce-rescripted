import crafttweaker.item.IItemStack;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.gregtech.recipe.RecipeMap;



/**
* Remove and redo low-tier brick recipes being insanely complicated from SoG and GT5u
*/
recipes.remove(<gregtech:meta_item_2:32013>);
recipes.remove(<gtadditions:ga_meta_item:32032>);
recipes.addShaped(<gregtech:meta_item_2:32013> * 8, 
    [[<gregtech:meta_item_1:2278>, <gregtech:meta_item_1:2249> | <gregtech:meta_item_1:2403>, <gregtech:meta_item_1:2278>],
    [<gregtech:meta_item_1:2105>, <liquid:water> * 1000, <gregtech:meta_item_1:2105>],
    [<gregtech:meta_item_1:2278>, <gregtech:meta_item_1:2287>, <gregtech:meta_item_1:2278>]]);
furnace.addRecipe(<minecraft:brick>, <minecraft:clay_ball>);
RecipeMap.getByName("alloy_smelter").findRecipe(2, [<minecraft:clay_ball>, <gregtech:meta_item_1:32306>], null).remove();

//Coke clay
recipes.addShaped(<gtadditions:ga_meta_item:32032> * 4, 
    [[<minecraft:clay_ball>, <ore:sand>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <liquid:water> * 1000, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <ore:sand>, <minecraft:clay_ball>]]);
recipes.addShaped(<gtadditions:ga_meta_item:32032> * 6, 
    [[<gregtech:meta_item_2:32013>, <ore:sand>, <gregtech:meta_item_2:32013>],
    [<gregtech:meta_item_2:32013>, <liquid:water> * 1000, <gregtech:meta_item_2:32013>],
    [<gregtech:meta_item_2:32013>, <ore:sand>, <gregtech:meta_item_2:32013>]]);

//Fireclay
recipes.addShaped(<gregtech:meta_item_2:32014> * 2,
    [[<ore:ingotClay>, <ore:dustFlint>, <ore:ingotClay>],
    [<ore:dustBrick>, <ore:dustFlint>, <ore:dustBrick>],
    [<ore:ingotClay>, <ore:dustFlint>, <ore:ingotClay>]]);
recipes.addShaped(<gregtech:meta_item_2:32014> * 4,
    [[<ore:ingotClay>, <ore:dustFlint>, <ore:ingotClay>],
    [<ore:dustTalc>, <ore:dustFlint>, <ore:dustTalc>],
    [<ore:ingotClay>, <ore:dustFlint>, <ore:ingotClay>]]);
recipes.addShaped(<gregtech:meta_item_2:32014> * 4,
    [[<ore:ingotClay>, <ore:dustFlint>, <ore:ingotClay>],
    [<ore:dustSoapstone>, <ore:dustFlint>, <ore:dustSoapstone>],
    [<ore:ingotClay>, <ore:dustFlint>, <ore:ingotClay>]]);
recipes.addShaped(<gregtech:meta_item_2:32014> * 6,
    [[<ore:ingotClay>, <ore:dustFlint>, <ore:ingotClay>],
    [<ore:dustObsidian>, <ore:dustFlint>, <ore:dustObsidian>],
    [<ore:ingotClay>, <ore:dustFlint>, <ore:ingotClay>]]);
recipes.addShaped(<gregtech:meta_item_2:32014> * 4,
    [[<gregtech:meta_item_2:32013>, <ore:dustFlint>, <gregtech:meta_item_2:32013>],
    [<ore:dustBrick>, <ore:dustFlint>, <ore:dustBrick>],
    [<gregtech:meta_item_2:32013>, <ore:dustFlint>, <gregtech:meta_item_2:32013>]]);
recipes.addShaped(<gregtech:meta_item_2:32014> * 6,
    [[<gregtech:meta_item_2:32013>, <ore:dustFlint>, <gregtech:meta_item_2:32013>],
    [<ore:dustTalc>, <ore:dustFlint>, <ore:dustTalc>],
    [<gregtech:meta_item_2:32013>, <ore:dustFlint>, <gregtech:meta_item_2:32013>]]);
recipes.addShaped(<gregtech:meta_item_2:32014> * 6,
    [[<gregtech:meta_item_2:32013>, <ore:dustFlint>, <gregtech:meta_item_2:32013>],
    [<ore:dustSoapstone>, <ore:dustFlint>, <ore:dustSoapstone>],
    [<gregtech:meta_item_2:32013>, <ore:dustFlint>, <gregtech:meta_item_2:32013>]]);
recipes.addShaped(<gregtech:meta_item_2:32014> * 8,
    [[<gregtech:meta_item_2:32013>, <ore:dustFlint>, <gregtech:meta_item_2:32013>],
    [<ore:dustObsidian>, <ore:dustFlint>, <ore:dustObsidian>],
    [<gregtech:meta_item_2:32013>, <ore:dustFlint>, <gregtech:meta_item_2:32013>]]);
 
 //Actual brick recipes
recipes.addShaped(<minecraft:brick_block> * 2, 
    [[<minecraft:brick>, <gregtech:meta_item_1:2287> | <gregtech:meta_item_1:2374>, <minecraft:brick>],
    [<minecraft:brick>, <liquid:water> * 1000, <minecraft:brick>],
    [<minecraft:brick>, <gregtech:meta_item_1:2287> | <gregtech:meta_item_1:2374>, <minecraft:brick>]]);
recipes.addShaped(<gregtech:metal_casing:1> * 2, 
    [[<gregtech:meta_item_2:32015>, <gregtech:meta_item_1:2287> | <gregtech:meta_item_1:2374>, <gregtech:meta_item_2:32015>],
    [<gregtech:meta_item_2:32015>, <liquid:water> * 1000, <gregtech:meta_item_2:32015>],
    [<gregtech:meta_item_2:32015>, <gregtech:meta_item_1:2287> | <gregtech:meta_item_1:2374>, <gregtech:meta_item_2:32015>]]);
recipes.addShaped(<gregtech:metal_casing:8> * 2, 
    [[<gregtech:meta_item_2:32016>, <gregtech:meta_item_1:2287> | <gregtech:meta_item_1:2374>, <gregtech:meta_item_2:32016>],
    [<gregtech:meta_item_2:32016>, <liquid:water> * 1000, <gregtech:meta_item_2:32016>],
    [<gregtech:meta_item_2:32016>, <gregtech:meta_item_1:2287> | <gregtech:meta_item_1:2374>, <gregtech:meta_item_2:32016>]]);
    
    

/**
* Misc Clay- and Glass- related recipes with specialty production schema
*/
    
//Concrete recipes
RecipeMap.getByName("fluid_extractor").findRecipe(32, [<gregtech:concrete>], null).remove();
RecipeMap.getByName("mixer").findRecipe(16, [<gregtech:meta_item_1:2328> * 6, <minecraft:sand> * 2, <gregtech:meta_item_1:2220>], [<liquid:water> * 1000]).remove();
RecipeMap.getByName("mixer").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2328> * 6, <gregtech:meta_item_1:2105>, <gregtech:meta_item_1:2287> | <gregtech:meta_item_1:2374>])
    .fluidInputs([<liquid:water> * 1000])
    .fluidOutputs([<liquid:concrete> * 1728])
    .duration(30).EUt(16).buildAndRegister();
RecipeMap.getByName("mixer").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2328> * 6, <gregtech:meta_item_1:2278>, <gregtech:meta_item_1:2287> | <gregtech:meta_item_1:2374>, <gregtech:meta_item_1:2249>])
    .fluidInputs([<liquid:water> * 1000])
    .fluidOutputs([<liquid:concrete> * 1728])
    .duration(30).EUt(16).buildAndRegister();
RecipeMap.getByName("mixer").recipeBuilder()
    .inputs([<ore:sand> * 6, <gregtech:meta_item_1:2105>, <gregtech:meta_item_1:2287>, <gregtech:meta_item_1:2374>])
    .fluidInputs([<liquid:water> * 1500])
    .fluidOutputs([<liquid:concrete> * 2304])
    .duration(40).EUt(16).buildAndRegister();
RecipeMap.getByName("mixer").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2278> * 6, <gregtech:meta_item_1:2105> * 4, <gregtech:meta_item_1:2287>, <gregtech:meta_item_1:2249> | <gregtech:meta_item_1:2403>])
    .fluidInputs([<liquid:water> * 1000])
    .outputs([<gregtech:meta_item_2:32013> * 12])
    .duration(80).EUt(30).buildAndRegister();
    
//Specialty glass cheapening recipes
furnace.addRecipe(<minecraft:glass>, <minecraft:quartz>);
furnace.addRecipe(<minecraft:glass>, <gregtech:meta_item_1:8202>);
furnace.addRecipe(<minecraft:glass>, <gregtech:meta_item_1:2209>);
furnace.addRecipe(<minecraft:glass>, <gregtech:meta_item_1:2220>);
RecipeMap.getByName("alloy_smelter").recipeBuilder()
    .inputs([<ore:sand> * 8, <gregtech:meta_item_1:2249>])
    .outputs([<minecraft:glass> * 12])
    .duration(240).EUt(30).buildAndRegister();
RecipeMap.getByName("alloy_smelter").recipeBuilder()
    .inputs([<ore:sand> * 5, <gregtech:meta_item_1:2403>])
    .outputs([<minecraft:glass> * 8])
    .duration(240).EUt(30).buildAndRegister();
RecipeMap.getByName("alloy_smelter").recipeBuilder()
    .inputs([<ore:dustFlint> * 8, <gregtech:meta_item_1:2249>])
    .outputs([<minecraft:glass> * 12])
    .duration(240).EUt(30).buildAndRegister();
RecipeMap.getByName("alloy_smelter").recipeBuilder()
    .inputs([<ore:dustFlint> * 5, <gregtech:meta_item_1:2403>])
    .outputs([<minecraft:glass> * 8])
    .duration(240).EUt(30).buildAndRegister();
    
//Their stones from various stone dusts recipes
furnace.addRecipe(<minecraft:cobblestone>, <gregtech:meta_item_1:2328>);
furnace.addRecipe(<gregtech:mineral:4>, <gregtech:meta_item_1:2245>);
furnace.addRecipe(<gregtech:mineral:6>, <gregtech:meta_item_1:2240>);
furnace.addRecipe(<gregtech:granite:4>, <gregtech:meta_item_1:2251>);
furnace.addRecipe(<gregtech:granite:5>, <gregtech:meta_item_1:2252>);
    


/**
* More uses for firebrick! You keep using firebrick as a heatproof material until endgame, because it's a part of firebox casings & heatproof casings
*/
//Heatproof Casing
recipes.remove(<gregtech:metal_casing:2>);
RecipeMap.getByName("assembler").findRecipe(16, [<ore:plateInvar>.firstItem * 6, <gregtech:frame_invar>], null).remove();
recipes.addShaped(<gregtech:metal_casing:2> * 3,
    [[<ore:plateInvar>, <gregtech:metal_casing:1>, <ore:plateInvar>],
    [<ore:plateInvar>, <ore:frameGtInvar>, <ore:plateInvar>],
    [<ore:plateInvar>, <gregtech:metal_casing:1>, <ore:plateInvar>]]);
//Firebox Casing
recipes.removeByRegex(".*(casing).*(firebox).*");
recipes.addShaped(<gregtech:boiler_firebox_casing> * 3,
    [[<ore:plateBrass>, <gregtech:metal_casing:1>, <ore:plateBrass>],
    [<ore:stickBrass>, <ore:frameGtBrass>, <ore:stickBrass>],
    [<ore:plateBrass>, <gregtech:metal_casing:1>, <ore:plateBrass>]]);
recipes.addShaped(<gregtech:boiler_firebox_casing:1> * 3,
    [[<ore:plateSteel>, <gregtech:metal_casing:1>, <ore:plateSteel>],
    [<ore:stickSteel>, <ore:frameGtSteel>, <ore:stickSteel>],
    [<ore:plateSteel>, <gregtech:metal_casing:1>, <ore:plateSteel>]]);
recipes.addShaped(<gregtech:boiler_firebox_casing:2> * 3,
    [[<ore:plateTitanium>, <gregtech:metal_casing:1>, <ore:plateTitanium>],
    [<ore:stickTitanium>, <ore:frameGtTitanium>, <ore:stickTitanium>],
    [<ore:plateTitanium>, <gregtech:metal_casing:1>, <ore:plateTitanium>]]);
recipes.addShaped(<gregtech:boiler_firebox_casing:3> * 3,
    [[<ore:plateTungstenSteel>, <gregtech:metal_casing:1>, <ore:plateTungstenSteel>],
    [<ore:stickTungstenSteel>, <ore:frameGtTungstenSteel>, <ore:stickTungstenSteel>],
    [<ore:plateTungstenSteel>, <gregtech:metal_casing:1>, <ore:plateTungstenSteel>]]);
