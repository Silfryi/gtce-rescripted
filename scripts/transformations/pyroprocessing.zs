import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialRegistry;

/**
* Remove now-unnecessary and frankly ridiculous recipes for electrorefining of metal ores that should be using pyroprocessing
*//*
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
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2132> * 3], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2146> * 6], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2198> * 6], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2149> * 3], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2224> * 9], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2115> * 2], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2271> * 17], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2108> * 6], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2107> * 3], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2102> * 7], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2185> * 5], []).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2270> * 6], []).remove();*/



/**
* Remove blatantly wrong pyroprocessing recipes already existent in the blast furnace
*/
RecipeMap.getByName("blast_furnace").findRecipe(500, [<gregtech:meta_item_1:2121>, <gregtech:meta_item_1:2012>], []).remove();
RecipeMap.getByName("blast_furnace").findRecipe(500, [<gregtech:meta_item_1:2114>], [<liquid:oxygen> * 2000]).remove();
RecipeMap.getByName("blast_furnace").findRecipe(500, [<gregtech:meta_item_1:2131>], [<liquid:oxygen> * 2000]).remove();
RecipeMap.getByName("blast_furnace").findRecipe(120, [<gregtech:meta_item_1:2271>], [<liquid:oxygen> * 3000]).remove();
RecipeMap.getByName("blast_furnace").findRecipe(120, [<gregtech:meta_item_1:2148>], [<liquid:oxygen> * 3000]).remove();
RecipeMap.getByName("blast_furnace").findRecipe(100, [<gregtech:meta_item_1:2154>], []).remove();
RecipeMap.getByName("blast_furnace").findRecipe(100, [<gregtech:meta_item_1:8154>], []).remove();
RecipeMap.getByName("blast_furnace").findRecipe(100, [<gregtech:meta_item_1:2117>], []).remove();
RecipeMap.getByName("blast_furnace").findRecipe(100, [<gregtech:meta_item_1:8117>], []).remove();
RecipeMap.getByName("blast_furnace").findRecipe(100, [<gregtech:meta_item_1:2157>], []).remove();
RecipeMap.getByName("blast_furnace").findRecipe(100, [<gregtech:meta_item_1:8157>], []).remove();



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
//Barium
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2286> * 12, <gregtech:meta_item_1:2012>])
    .outputs([<gregtech:meta_item_1:2985> * 4])
    .fluidOutputs([<liquid:carbon_dioxide> * 3000, <liquid:sulfur_dioxide> * 6000])
    .property("temperature", 1800).duration(408).EUt(120).buildAndRegister();
    


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
//Barium
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2286> * 6])
    .fluidInputs([<liquid:hydrogen> * 4000])
    .outputs([<gregtech:meta_item_1:10006>])
    .fluidOutputs([<liquid:water> * 6000, <liquid:sulfur_dioxide> * 3000])
    .property("temperature", 1800).duration(408).EUt(120).buildAndRegister();



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
    .outputs([<gregtech:meta_item_1:10018> * 3, <gregtech:meta_item_1:10003>]) // <gregtech:meta_item_1:10140>, -- we can't use this because of RM restrictions >:(
    .fluidOutputs([<liquid:sulfur_dioxide> * 9000])
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
    .outputs([<gregtech:meta_item_1:10018> * 3, <gregtech:meta_item_1:10003>]) // <gregtech:meta_item_1:10140>, -- we can't use this because of RM restrictions >:(
    .fluidOutputs([<liquid:sulfur_dioxide> * 9000])
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
* Add PBF recipes for carbon-requisite (oxide) ores
*/



/**
* Blast Furnace - Chemical Reactor ore processing combinations for sulfate ores
*/
//This recipe is mostly fucking bunk, but what can I say - it's better than losing material to the blast furnace recipe map stupidity
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2108> * 6])
    .fluidInputs([<liquid:sulfuric_acid> * 42000])
    .outputs([<gregtech:meta_item_1:2983> * 9, <gregtech:meta_item_1:2049>])
    .fluidOutputs([<liquid:nickel_sulfate_water_solution> * 24000, <liquid:oxygen> * 14000])
    .duration(648).EUt(120).buildAndRegister();
