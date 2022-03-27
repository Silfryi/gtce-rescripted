import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialRegistry;



print("Transforming most electrorefining ore processing recipes into blast furnace pyroprocessing recipes");

/**
* Remove now-unnecessary and frankly ridiculous recipes for electrorefining of metal ores that should be using pyroprocessing
*/
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2100> * 4], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2358> * 4], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2359> * 6], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2360> * 10], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2361> * 3], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2188> * 8], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2090> * 5], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2096> * 4], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2255> * 2], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2131> * 7], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2199> * 4], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2148> * 3], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2286> * 6], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2114> * 8], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2103> * 2], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2146> * 6], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2198> * 6], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2149> * 3], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2224> * 9], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2115> * 2], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2271> * 17], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2108> * 6], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2102> * 7], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2185> * 5], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2270> * 6], []).remove();



/**
* Readd pyroprocessing recipes for carbon-requisite (oxide) ores
*/
//Iron
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2090> * 10, <gregtech:meta_item_1:2012> * 3])
    .outputs([<gregtech:meta_item_1:10140> * 4])
    .fluidOutputs([<liquid:carbon_dioxide> * 9000])
    .property("temperature", 1800).duration(300).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2096> * 16, <gregtech:meta_item_1:2012> * 3])
    .outputs([<gregtech:meta_item_1:10140> * 4])
    .fluidOutputs([<liquid:carbon_dioxide> * 9000])
    .property("temperature", 1800).duration(640).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2199> * 16, <gregtech:meta_item_1:2012> * 3])
    .outputs([<gregtech:meta_item_1:10140> * 4])
    .fluidOutputs([<liquid:carbon_dioxide> * 9000])
    .property("temperature", 1800).duration(640).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2131> * 7, <gregtech:meta_item_1:2012> * 2])
    .outputs([<gregtech:meta_item_1:10140> * 3])
    .fluidOutputs([<liquid:carbon_dioxide> * 6000])
    .property("temperature", 1800).duration(210).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2255> * 8, <gregtech:meta_item_1:2012> * 2])
    .outputs([<gregtech:meta_item_1:10140> * 3, <gregtech:meta_item_1:2077>])
    .fluidOutputs([<liquid:carbon_dioxide> * 6000])
    .property("temperature", 1800).duration(286).EUt(120).buildAndRegister();
//Copper
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2358> * 4, <gregtech:meta_item_1:2012>])
    .outputs([<gregtech:meta_item_1:10018> * 2])
    .fluidOutputs([<liquid:carbon_dioxide> * 3000])
    .property("temperature", 1800).duration(144).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2359> * 6, <gregtech:meta_item_1:2012>])
    .outputs([<gregtech:meta_item_1:10018> * 4])
    .fluidOutputs([<liquid:carbon_dioxide> * 3000])
    .property("temperature", 1800).duration(264).EUt(120).buildAndRegister();
//Nickel
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2115> * 4, <gregtech:meta_item_1:2012>])
    .outputs([<gregtech:meta_item_1:10044> * 2])
    .fluidOutputs([<liquid:carbon_dioxide> * 3000])
    .property("temperature", 1800).duration(72).EUt(120).buildAndRegister();
//Chrome
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2102> * 7, <gregtech:meta_item_1:2012> * 2])
    .outputs([<gregtech:meta_item_1:10016> * 2, <gregtech:meta_item_1:10140>])
    .fluidOutputs([<liquid:carbon_dioxide> * 6000])
    .property("temperature", 1800).duration(420).EUt(120).buildAndRegister();
//Titanium
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2121> * 10, <gregtech:meta_item_1:2012>])
    .outputs([<gregtech:meta_item_1:10140> * 2, <gregtech:meta_item_1:2122> * 6])
    .fluidOutputs([<liquid:carbon_dioxide> * 3000])
    .property("temperature", 1800).duration(420).EUt(120).buildAndRegister();
//Molybdenum
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2146> * 12, <gregtech:meta_item_1:2012> * 3])
    .outputs([<gregtech:meta_item_1:10041> * 2, <gregtech:meta_item_1:2097> * 10])
    .fluidOutputs([<liquid:carbon_dioxide> * 3000])
    .property("temperature", 1800).duration(720).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2198> * 6, <gregtech:meta_item_1:2012> * 2])
    .outputs([<gregtech:meta_item_1:10041>, <gregtech:meta_item_1:10035>])
    .fluidOutputs([<liquid:carbon_dioxide> * 6000])
    .property("temperature", 1800).duration(624).EUt(120).buildAndRegister();
//Manganese
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2149> * 3, <gregtech:meta_item_1:2012> * 1])
    .outputs([<gregtech:meta_item_1:10039>])
    .fluidOutputs([<liquid:carbon_dioxide> * 3000])
    .property("temperature", 1800).duration(78).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2224> * 9, <gregtech:meta_item_1:2012> * 3])
    .outputs([<gregtech:meta_item_1:10039>, <gregtech:meta_item_1:10066> * 2])
    .fluidOutputs([<liquid:carbon_dioxide> * 9000])
    .property("temperature", 1800).duration(864).EUt(120).buildAndRegister();
    


/**
* Readd pyroprocessing recipes for hydrogen versions of carbon-requisite ores
*///.fluidInputs([<liquid:oxygen> * 1000])
//Iron
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2090> * 10])
    .fluidInputs([<liquid:hydrogen> * 12000])
    .outputs([<gregtech:meta_item_1:10140> * 4])
    .fluidOutputs([<liquid:water> * 18000])
    .property("temperature", 1800).duration(300).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2096> * 16])
    .fluidInputs([<liquid:hydrogen> * 12000])
    .outputs([<gregtech:meta_item_1:10140> * 4])
    .fluidOutputs([<liquid:water> * 24000])
    .property("temperature", 1800).duration(640).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2199> * 16])
    .fluidInputs([<liquid:hydrogen> * 12000])
    .outputs([<gregtech:meta_item_1:10140> * 4])
    .fluidOutputs([<liquid:water> * 24000])
    .property("temperature", 1800).duration(640).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2131> * 7])
    .fluidInputs([<liquid:hydrogen> * 8000])
    .outputs([<gregtech:meta_item_1:10140> * 3])
    .fluidOutputs([<liquid:water> * 12000])
    .property("temperature", 1800).duration(210).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2255> * 8])
    .fluidInputs([<liquid:hydrogen> * 8000])
    .outputs([<gregtech:meta_item_1:10140> * 3, <gregtech:meta_item_1:2077>])
    .fluidOutputs([<liquid:water> * 12000])
    .property("temperature", 1800).duration(286).EUt(120).buildAndRegister();
//Copper
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2358> * 4])
    .fluidInputs([<liquid:hydrogen> * 4000])
    .outputs([<gregtech:meta_item_1:10018> * 2])
    .fluidOutputs([<liquid:water> * 6000])
    .property("temperature", 1800).duration(144).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2359> * 6])
    .fluidInputs([<liquid:hydrogen> * 4000])
    .outputs([<gregtech:meta_item_1:10018> * 4])
    .fluidOutputs([<liquid:water> * 6000])
    .property("temperature", 1800).duration(264).EUt(120).buildAndRegister();
//Nickel
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2115> * 4])
    .fluidInputs([<liquid:hydrogen> * 8000])
    .outputs([<gregtech:meta_item_1:10044> * 2])
    .fluidOutputs([<liquid:water> * 6000])
    .property("temperature", 1800).duration(72).EUt(120).buildAndRegister();
//Chrome
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2102> * 7])
    .fluidInputs([<liquid:hydrogen> * 8000])
    .outputs([<gregtech:meta_item_1:10016> * 2, <gregtech:meta_item_1:10140>])
    .fluidOutputs([<liquid:water> * 12000])
    .property("temperature", 1800).duration(420).EUt(120).buildAndRegister();
//Titanium
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2121> * 10])
    .fluidInputs([<liquid:hydrogen> * 4000])
    .outputs([<gregtech:meta_item_1:10140> * 2, <gregtech:meta_item_1:2122> * 6])
    .fluidOutputs([<liquid:water> * 6000])
    .property("temperature", 1800).duration(420).EUt(120).buildAndRegister();
//Molybdenum
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2146> * 12, <gregtech:meta_item_1:2012> * 2])
    .fluidInputs([<liquid:hydrogen> * 4000])
    .outputs([<gregtech:meta_item_1:10041> * 2, <gregtech:meta_item_1:2097> * 10])
    .fluidOutputs([<liquid:water> * 6000])
    .property("temperature", 1800).duration(720).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2198> * 6])
    .fluidInputs([<liquid:hydrogen> * 8000])
    .outputs([<gregtech:meta_item_1:10041>, <gregtech:meta_item_1:10035>])
    .fluidOutputs([<liquid:water> * 12000])
    .property("temperature", 1800).duration(624).EUt(120).buildAndRegister();
//Manganese
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2149> * 3])
    .fluidInputs([<liquid:hydrogen> * 4000])
    .outputs([<gregtech:meta_item_1:10039>])
    .fluidOutputs([<liquid:water> * 6000])
    .property("temperature", 1800).duration(78).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2224> * 9])
    .fluidInputs([<liquid:hydrogen> * 12000])
    .outputs([<gregtech:meta_item_1:10039>, <gregtech:meta_item_1:10066> * 2])
    .fluidOutputs([<liquid:water> * 18000])
    .property("temperature", 1800).duration(864).EUt(120).buildAndRegister();



/**
* Readd pyroprocessing recipes for oxygen-blown requisite (sulfide) ores
*/
//Iron
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2148> * 3])
    .fluidInputs([<liquid:oxygen> * 4000])
    .outputs([<gregtech:meta_item_1:10140>])
    .fluidOutputs([<liquid:sulfur_dioxide> * 6000])
    .property("temperature", 1800).duration(228).EUt(120).buildAndRegister();
//Copper
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2100> * 4])
    .fluidInputs([<liquid:oxygen> * 4000])
    .outputs([<gregtech:meta_item_1:10018>, <gregtech:meta_item_1:10140>])
    .fluidOutputs([<liquid:sulfur_dioxide> * 6000])
    .property("temperature", 1800).duration(336).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2360> * 10])
    .fluidInputs([<liquid:oxygen> * 8000])
    .outputs([<gregtech:meta_item_1:10018> * 5, <gregtech:meta_item_1:10140>])
    .fluidOutputs([<liquid:sulfur_dioxide> * 12000])
    .property("temperature", 1800).duration(920).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2188> * 8])
    .fluidInputs([<liquid:oxygen> * 6000])
    .outputs([<gregtech:meta_item_1:10018> * 3, <gregtech:meta_item_1:10003>]) // <gregtech:meta_item_1:10140>, -- we can't use this because of RM restrictions, so we have a less lossy one below >:(
    .fluidOutputs([<liquid:sulfur_dioxide> * 9000])
    .property("temperature", 1800).duration(832).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2188> * 8, <gregtech:meta_item_1:2148> * 6])
    .fluidInputs([<liquid:oxygen> * 2000])
    .outputs([<gregtech:meta_item_1:2100> * 12, <gregtech:meta_item_1:2003>])
    .fluidOutputs([<liquid:sulfur_dioxide> * 3000])
    .property("temperature", 1800).duration(832).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2361> * 3])
    .fluidInputs([<liquid:oxygen> * 2000])
    .outputs([<gregtech:meta_item_1:10018> * 2])
    .fluidOutputs([<liquid:sulfur_dioxide> * 3000])
    .property("temperature", 1800).duration(288).EUt(120).buildAndRegister();
//Nickel
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2271> * 17])
    .fluidInputs([<liquid:oxygen> * 16000])
    .outputs([<gregtech:meta_item_1:10044> * 9])
    .fluidOutputs([<liquid:sulfur_dioxide> * 24000])
    .property("temperature", 1800).duration(1496).EUt(120).buildAndRegister();
//Platinum-group metals
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2108> * 6])
    .fluidInputs([<liquid:oxygen> * 2000])
    .outputs([<gregtech:meta_item_1:10051> * 3, <gregtech:meta_item_1:10049>])
    .fluidOutputs([<liquid:sulfur_dioxide> * 3000])
    .property("temperature", 1800).duration(624).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2983> * 3])
    .fluidInputs([<liquid:oxygen> * 2000])
    .outputs([<gregtech:meta_item_1:10051>])
    .fluidOutputs([<liquid:sulfur_dioxide> * 3000])
    .property("temperature", 1800).duration(504).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2984> * 23])
    .fluidInputs([<liquid:oxygen> * 28000])
    .outputs([<gregtech:meta_item_1:10051> * 5, <gregtech:meta_item_1:2207> * 4])
    .fluidOutputs([<liquid:sulfur_dioxide> * 42000])
    .property("temperature", 1800).duration(1520).EUt(120).buildAndRegister();
//Lead
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2114> * 8])
    .fluidInputs([<liquid:oxygen> * 4000])
    .outputs([<gregtech:meta_item_1:10035> * 3, <gregtech:meta_item_1:10062> * 3])
    .fluidOutputs([<liquid:sulfur_dioxide> * 6000])
    .property("temperature", 1800).duration(1664).EUt(120).buildAndRegister();
//Zinc
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2182> * 2])
    .fluidInputs([<liquid:oxygen> * 2000])
    .outputs([<gregtech:meta_item_1:10079>])
    .fluidOutputs([<liquid:sulfur_dioxide> * 3000])
    .property("temperature", 1800).duration(102).EUt(120).buildAndRegister();
//Antimony
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2185> * 5])
    .fluidInputs([<liquid:oxygen> * 6000])
    .outputs([<gregtech:meta_item_1:10003> * 2])
    .fluidOutputs([<liquid:sulfur_dioxide> * 9000])
    .property("temperature", 1800).duration(300).EUt(120).buildAndRegister();

    
    
/**
* Readd pyroprocessing recipes for air-blown versions of oxygen-blown ores
*/
//Iron
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2148> * 3])
    .fluidInputs([<liquid:air> * 20000])
    .outputs([<gregtech:meta_item_1:10140>])
    .fluidOutputs([<liquid:sulfur_dioxide> * 6000])
    .property("temperature", 1800).duration(228).EUt(120).buildAndRegister();
//Copper
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2100> * 4])
    .fluidInputs([<liquid:air> * 20000])
    .outputs([<gregtech:meta_item_1:10018>, <gregtech:meta_item_1:10140>])
    .fluidOutputs([<liquid:sulfur_dioxide> * 6000])
    .property("temperature", 1800).duration(336).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2360> * 10])
    .fluidInputs([<liquid:air> * 40000])
    .outputs([<gregtech:meta_item_1:10018> * 5, <gregtech:meta_item_1:10140>])
    .fluidOutputs([<liquid:sulfur_dioxide> * 12000])
    .property("temperature", 1800).duration(920).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2188> * 8])
    .fluidInputs([<liquid:air> * 30000])
    .outputs([<gregtech:meta_item_1:10018> * 3, <gregtech:meta_item_1:10003>]) // <gregtech:meta_item_1:10140>, so we have a less lossy one below -- we can't use this because of RM restrictions >:(
    .fluidOutputs([<liquid:sulfur_dioxide> * 9000])
    .property("temperature", 1800).duration(832).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2188> * 8, <gregtech:meta_item_1:2148> * 6])
    .fluidInputs([<liquid:air> * 10000])
    .outputs([<gregtech:meta_item_1:2100> * 12, <gregtech:meta_item_1:2003>])
    .fluidOutputs([<liquid:sulfur_dioxide> * 3000])
    .property("temperature", 1800).duration(832).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2361> * 3])
    .fluidInputs([<liquid:air> * 10000])
    .outputs([<gregtech:meta_item_1:10018> * 2])
    .fluidOutputs([<liquid:sulfur_dioxide> * 3000])
    .property("temperature", 1800).duration(288).EUt(120).buildAndRegister();
//Nickel
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2271> * 17])
    .fluidInputs([<liquid:air> * 80000])
    .outputs([<gregtech:meta_item_1:10044> * 9])
    .fluidOutputs([<liquid:sulfur_dioxide> * 24000])
    .property("temperature", 1800).duration(1496).EUt(120).buildAndRegister();
//Platinum-group metals
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2108> * 6])
    .fluidInputs([<liquid:air> * 10000])
    .outputs([<gregtech:meta_item_1:10051> * 3, <gregtech:meta_item_1:10049>])
    .fluidOutputs([<liquid:sulfur_dioxide> * 3000])
    .property("temperature", 1800).duration(624).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2983> * 3])
    .fluidInputs([<liquid:air> * 10000])
    .outputs([<gregtech:meta_item_1:10051>])
    .fluidOutputs([<liquid:sulfur_dioxide> * 3000])
    .property("temperature", 1800).duration(504).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2984> * 23])
    .fluidInputs([<liquid:air> * 140000])
    .outputs([<gregtech:meta_item_1:10051> * 5, <gregtech:meta_item_1:2207> * 4])
    .fluidOutputs([<liquid:sulfur_dioxide> * 42000])
    .property("temperature", 1800).duration(1520).EUt(120).buildAndRegister();
//Lead
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2114> * 8])
    .fluidInputs([<liquid:air> * 20000])
    .outputs([<gregtech:meta_item_1:10035> * 3, <gregtech:meta_item_1:10062> * 3])
    .fluidOutputs([<liquid:sulfur_dioxide> * 6000])
    .property("temperature", 1800).duration(1664).EUt(120).buildAndRegister();
//Zinc
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2182> * 2])
    .fluidInputs([<liquid:air> * 10000])
    .outputs([<gregtech:meta_item_1:10079>])
    .fluidOutputs([<liquid:sulfur_dioxide> * 3000])
    .property("temperature", 1800).duration(102).EUt(120).buildAndRegister();
//Antimony
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2185> * 5])
    .fluidInputs([<liquid:air> * 30000])
    .outputs([<gregtech:meta_item_1:10003> * 2])
    .fluidOutputs([<liquid:sulfur_dioxide> * 9000])
    .property("temperature", 1800).duration(300).EUt(120).buildAndRegister();

    
    
/**
* Specialty blast furnace recipes - pyroprocessing recipes with no reagents, combination recipes, etc
*/
//Iron-Calcite processing
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:10140> * 9, <gregtech:meta_item_1:2097>])
    .outputs([<minecraft:iron_ingot> * 10])
    .property("temperature", 1000).duration(120).EUt(120).buildAndRegister();
//Barium Oxide
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2286> * 6])
    .outputs([<gregtech:meta_item_1:2985> * 3])
    .fluidOutputs([<liquid:sulfur_dioxide> * 3000])
    .property("temperature", 1800).duration(408).EUt(120).buildAndRegister();
//Mercury
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2103> * 2])
    .outputs([<gregtech:meta_item_1:2065>])
    .fluidOutputs([<liquid:mercury> * 1000])
    .property("temperature", 1800).duration(192).EUt(120).buildAndRegister();
//Titanium Tetrachloride
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2038> * 2])
    .fluidInputs([<liquid:titanium_tetrachloride> * 5000])
    .outputs([<gregtech:meta_item_1:11072>, <gregtech:meta_item_1:2125> * 6])
    .property("temperature", 2141).duration(800).EUt(480).buildAndRegister();



/**
* Add PBF recipes for carbon-requisite (oxide) ores
*/



/**
* Blast Furnace - Chemical Reactor ore processing combinations for sulfate ores
*/
//Remove previous ones
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:6100>], [<liquid:nitric_acid> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:6271>], [<liquid:nitric_acid> * 1000]).remove();
//Add new (correct) ones
//Copper ores
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:6358> * 2])
    .fluidInputs([<liquid:sulfuric_acid> * 7000, <liquid:water> * 15000])
    .outputs([<gregtech:meta_item_1:2026> * 2])
    .fluidOutputs([<liquid:blue_vitriol_solution> * 24000])
    .duration(106).EUt(120).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:6359> * 3])
    .fluidInputs([<liquid:sulfuric_acid> * 14000, <liquid:nitric_acid> * 10000, <liquid:water> * 27000])
    .outputs([<gregtech:meta_item_1:2026> * 3])
    .fluidOutputs([<liquid:blue_vitriol_solution> * 48000, <liquid:nitrogen_dioxide> * 6000])
    .duration(159).EUt(120).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder() // this one HAD to be reduced by 10x or the recipe was just too damned large for the reactor - 180B >>> 64B, whoopsie
    .inputs([<gregtech:meta_item_1:6360> ])
    .fluidInputs([<liquid:sulfuric_acid> * 1400, <liquid:nitric_acid> * 18000, <liquid:water> * 5400])
    .outputs([<gregtech:meta_item_1:2112>])
    .fluidOutputs([<liquid:copper_rich_mixed_vitriols> * 15000, <liquid:nitrogen_dioxide> * 10800])
    .duration(53).EUt(120).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:6361> * 3])
    .fluidInputs([<liquid:sulfuric_acid> * 7000, <liquid:nitric_acid> * 50000, <liquid:water> * 18000])
    .outputs([<gregtech:meta_item_1:2112> * 3])
    .fluidOutputs([<liquid:blue_vitriol_solution> * 48000, <liquid:nitrogen_dioxide> * 30000])
    .duration(159).EUt(120).buildAndRegister();
//Nickel ores
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:6115> * 2])
    .fluidInputs([<liquid:sulfuric_acid> * 7000, <liquid:water> * 15000])
    .outputs([<gregtech:meta_item_1:2112> * 2])
    .fluidOutputs([<liquid:cyan_vitriol_solution> * 27000])
    .duration(106).EUt(120).buildAndRegister();
//Platinum-based ones
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:6271> * 2])
    .fluidInputs([<liquid:nitric_acid> * 40000, <liquid:water> * 9000])
    .outputs([<gregtech:meta_item_1:2422> * 2])
    .fluidOutputs([<liquid:cyan_vitriol_solution> * 27000, <liquid:nitrogen_dioxide> * 24000])
    .duration(106).EUt(480).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:6100> * 4])
    .fluidInputs([<liquid:nitric_acid> * 40000, <liquid:nitric_acid> * 40000, <liquid:water> * 18000])
    .outputs([<gregtech:meta_item_1:2422> * 1])
    .fluidOutputs([<liquid:mixed_vitriols> * 54000, <liquid:nitrogen_dioxide> * 48000])
    .duration(212).EUt(480).buildAndRegister();
//Indium ones
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:6182> * 2])
    .fluidInputs([<liquid:nitric_acid> * 40000, <liquid:water> * 12000])
    .outputs([<gregtech:meta_item_1:1031>])
    .fluidOutputs([<liquid:white_vitriol_solution> * 30000, <liquid:nitrogen_dioxide> * 24000])
    .duration(106).EUt(480).buildAndRegister();
//Sheldonite dust
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2108> * 6])
    .fluidInputs([<liquid:nitric_acid> * 40000, <liquid:water> * 9000])
    .outputs([<gregtech:meta_item_1:2982> * 4])
    .fluidOutputs([<liquid:cyan_vitriol_solution> * 27000, <liquid:nitrogen_dioxide> * 24000])
    .duration(318).EUt(480).buildAndRegister();
//Add vitrol separation
RecipeMap.getByName("centrifuge").recipeBuilder()
    .fluidInputs([<liquid:mixed_vitriols> * 54000])
    .fluidOutputs([<liquid:blue_vitriol_solution> * 24000, <liquid:green_vitriol_solution> * 30000])
    .duration(100).EUt(30).buildAndRegister();
RecipeMap.getByName("centrifuge").recipeBuilder()
    .fluidInputs([<liquid:copper_rich_mixed_vitriols> * 15000])
    .fluidOutputs([<liquid:blue_vitriol_solution> * 12000, <liquid:green_vitriol_solution> * 3000])
    .duration(60).EUt(30).buildAndRegister();
//Platinum group sludge separation
RecipeMap.getByName("centrifuge").findRecipe(30, [<gregtech:meta_item_1:2422>], null).remove();
RecipeMap.getByName("centrifuge").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2422> * 5])
    .outputs([<gregtech:meta_item_1:2026> * 2, <gregtech:meta_item_1:2051> * 2])
    .chancedOutput(<gregtech:meta_item_1:2049>, 8000, 1200)
    .chancedOutput(<gregtech:meta_item_1:2032>, 6000, 800)
    .chancedOutput(<gregtech:meta_item_1:2047>, 6000, 800)
    .duration(900).EUt(30).buildAndRegister();

    
    
/**
* Chemical Bath ore processing recipes - mercury and sodium persulfate washing
*/
//Remove the bad ones the mod came with
RecipeMap.getByName("chemical_bath").findRecipe(8, [<gregtech:meta_item_1:5017>], [<liquid:sodium_persulfate> * 1000]).remove();
RecipeMap.getByName("chemical_bath").findRecipe(8, [<gregtech:meta_item_1:5018>], [<liquid:sodium_persulfate> * 1000]).remove();
RecipeMap.getByName("chemical_bath").findRecipe(8, [<gregtech:meta_item_1:5026>], [<liquid:mercury> * 1000]).remove();
RecipeMap.getByName("chemical_bath").findRecipe(8, [<gregtech:meta_item_1:5044>], [<liquid:sodium_persulfate> * 1000]).remove();
RecipeMap.getByName("chemical_bath").findRecipe(8, [<gregtech:meta_item_1:5047>], [<liquid:mercury> * 1000]).remove();
RecipeMap.getByName("chemical_bath").findRecipe(8, [<gregtech:meta_item_1:5051>], [<liquid:mercury> * 1000]).remove();
RecipeMap.getByName("chemical_bath").findRecipe(8, [<gregtech:meta_item_1:5062>], [<liquid:mercury> * 1000]).remove();
RecipeMap.getByName("chemical_bath").findRecipe(8, [<gregtech:meta_item_1:5079>], [<liquid:sodium_persulfate> * 1000]).remove();
RecipeMap.getByName("chemical_bath").findRecipe(8, [<gregtech:meta_item_1:5100>], [<liquid:mercury> * 1000]).remove();
RecipeMap.getByName("chemical_bath").findRecipe(8, [<gregtech:meta_item_1:5107>], [<liquid:sodium_persulfate> * 1000]).remove();
RecipeMap.getByName("chemical_bath").findRecipe(8, [<gregtech:meta_item_1:5108>], [<liquid:mercury> * 1000]).remove();
RecipeMap.getByName("chemical_bath").findRecipe(8, [<gregtech:meta_item_1:5182>], [<liquid:sodium_persulfate> * 1000]).remove();
RecipeMap.getByName("chemical_bath").findRecipe(8, [<gregtech:meta_item_1:5188>], [<liquid:sodium_persulfate> * 1000]).remove();
RecipeMap.getByName("chemical_bath").findRecipe(8, [<gregtech:meta_item_1:5360>], [<liquid:mercury> * 1000]).remove();
//Sodium Persulfate Recipes
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_1:5123>])
    .fluidInputs([<liquid:sodium_persulfate> * 1000])
    .outputs([<gregtech:meta_item_1:6123>])
    .chancedOutput(<gregtech:meta_item_1:2025>, 7000, 580)
    .chancedOutput(<gregtech:meta_item_1:2328>, 4000, 650)
    .duration(800).EUt(8).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_1:5182>])
    .fluidInputs([<liquid:sodium_persulfate> * 1000])
    .outputs([<gregtech:meta_item_1:6182>])
    .chancedOutput(<gregtech:meta_item_1:2025>, 7000, 580)
    .chancedOutput(<gregtech:meta_item_1:2328>, 4000, 650)
    .duration(800).EUt(8).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_1:5188>])
    .fluidInputs([<liquid:sodium_persulfate> * 1000])
    .outputs([<gregtech:meta_item_1:6188>])
    .chancedOutput(<gregtech:meta_item_1:2062>, 7000, 580)
    .chancedOutput(<gregtech:meta_item_1:2328>, 4000, 650)
    .duration(800).EUt(8).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_1:5100>])
    .fluidInputs([<liquid:sodium_persulfate> * 1000])
    .outputs([<gregtech:meta_item_1:6100>])
    .chancedOutput(<gregtech:meta_item_1:2013>, 7000, 580)
    .chancedOutput(<gregtech:meta_item_1:2328>, 4000, 650)
    .duration(800).EUt(8).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_1:5114>])
    .fluidInputs([<liquid:sodium_persulfate> * 1000])
    .outputs([<gregtech:meta_item_1:6114>])
    .chancedOutput(<gregtech:meta_item_1:2013>, 7000, 580)
    .chancedOutput(<gregtech:meta_item_1:2328>, 4000, 650)
    .duration(800).EUt(8).buildAndRegister();
//Mercury Recipes
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_1:5360>])
    .fluidInputs([<liquid:mercury> * 1000])
    .outputs([<gregtech:meta_item_1:6360>])
    .chancedOutput(<gregtech:meta_item_1:2026>, 7000, 580)
    .chancedOutput(<gregtech:meta_item_1:2328>, 4000, 650)
    .duration(800).EUt(8).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_1:5271>])
    .fluidInputs([<liquid:mercury> * 1000])
    .outputs([<gregtech:meta_item_1:6271>])
    .chancedOutput(<gregtech:meta_item_1:2982>, 7000, 580)
    .chancedOutput(<gregtech:meta_item_1:2328>, 4000, 650)
    .duration(800).EUt(8).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_1:5108>])
    .fluidInputs([<liquid:mercury> * 1000])
    .outputs([<gregtech:meta_item_1:6108>])
    .chancedOutput(<gregtech:meta_item_1:2207>, 7000, 580)
    .chancedOutput(<gregtech:meta_item_1:2328>, 4000, 650)
    .duration(800).EUt(8).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_1:5983>])
    .fluidInputs([<liquid:mercury> * 1000])
    .outputs([<gregtech:meta_item_1:6983>])
    .chancedOutput(<gregtech:meta_item_1:2207>, 7000, 580)
    .chancedOutput(<gregtech:meta_item_1:2328>, 4000, 650)
    .duration(800).EUt(8).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_1:5984>])
    .fluidInputs([<liquid:mercury> * 1000])
    .outputs([<gregtech:meta_item_1:6984>])
    .chancedOutput(<gregtech:meta_item_1:2049>, 7000, 580)
    .chancedOutput(<gregtech:meta_item_1:2328>, 4000, 650)
    .duration(800).EUt(8).buildAndRegister();



/**
* Electrolysis recipes for ore liquids - vitriols
*/
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:blue_vitriol_solution> * 24000])
    .outputs([<gregtech:meta_item_1:2018>])
    .fluidOutputs([<liquid:oxygen> * 1000, <liquid:diluted_sulfuric_acid> * 10000, <liquid:water> * 12000])
    .duration(720).EUt(30).buildAndRegister();
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:cyan_vitriol_solution> * 27000])
    .outputs([<gregtech:meta_item_1:2044>])
    .fluidOutputs([<liquid:oxygen> * 1000, <liquid:diluted_sulfuric_acid> * 10000, <liquid:water> * 15000])
    .duration(720).EUt(30).buildAndRegister();
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:green_vitriol_solution> * 30000])
    .outputs([<gregtech:meta_item_1:2033>])
    .fluidOutputs([<liquid:oxygen> * 1000, <liquid:diluted_sulfuric_acid> * 10000, <liquid:water> * 18000])
    .duration(672).EUt(30).buildAndRegister();
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:white_vitriol_solution> * 30000])
    .outputs([<gregtech:meta_item_1:2079>])
    .fluidOutputs([<liquid:oxygen> * 1000, <liquid:diluted_sulfuric_acid> * 10000, <liquid:water> * 18000])
    .duration(672).EUt(30).buildAndRegister();



/**
* Rebalance any chemical reactor ore processing recipes not covered yet - indium & titanium
*/
RecipeMap.getByName("chemical_reactor").findRecipe(150, [<gregtech:meta_item_1:6182>, <gregtech:meta_item_1:6114>], [<liquid:sulfuric_acid> * 4000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(600, [<gregtech:meta_item_1:2001> * 4], [<liquid:indium_concentrate> * 1000]).remove();
RecipeMap.getByName("centrifuge").findRecipe(30, null, [<liquid:lead_zinc_solution> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(480, [<gregtech:meta_item_1:2122> * 3, <gregtech:meta_item_1:2012> * 2], [<liquid:chlorine> * 4000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2122> * 3, <gregtech:meta_item_1:2012> * 2])
    .fluidInputs([<liquid:chlorine> * 4000])
    .fluidOutputs([<liquid:titanium_tetrachloride> * 5000, <liquid:carbon_monoxide> * 4000])
    .duration(500).EUt(480).buildAndRegister();
