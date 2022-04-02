import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.recipe.PBFRecipeBuilder;



print("Fix up blast furnace recipes for alloying - move temperatures down, etc");

/**
* Add furnace recipes for blast furnace items that should not go through said furnace
*/
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:2018> * 3, <gregtech:meta_item_1:2006> * 2, <gregtech:meta_item_1:2078>], [<liquid:oxygen> * 7000]);
furnace.addRecipe(<gregtech:meta_item_1:10001>, <gregtech:meta_item_1:2001>);
furnace.addRecipe(<gregtech:meta_item_1:10049>, <gregtech:meta_item_1:2049>);
furnace.addRecipe(<gregtech:meta_item_1:10184>, <gregtech:meta_item_1:2184>);



/**
* Add blast furnace oxygen converter "faking" recipes (blown O2 recipes)
*/
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:10140>])
    .fluidInputs(<liquid:air> * 1250)
    .outputs([<gregtech:meta_item_1:10184>])
    .property("temperature", 1800).duration(600).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:10140>])
    .fluidInputs(<liquid:oxygen> * 250)
    .outputs([<gregtech:meta_item_1:10184>])
    .property("temperature", 1800).duration(120).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:10140> * 9, <gregtech:meta_item_1:2097>])
    .fluidInputs(<liquid:air> * 12500)
    .outputs([<gregtech:meta_item_1:10184> * 10])
    .property("temperature", 1800).duration(600).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:10140> * 9, <gregtech:meta_item_1:2097>])
    .fluidInputs(<liquid:oxygen> * 2500)
    .outputs([<gregtech:meta_item_1:10184> * 10])
    .property("temperature", 1800).duration(120).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:10018>])
    .fluidInputs(<liquid:oxygen> * 1000)
    .outputs([<gregtech:meta_item_1:10087>])
    .property("temperature", 1000).duration(600).EUt(120).buildAndRegister();

/**
* Readd blast furnace alloying and specialty recipes
*/
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2074>, <gregtech:meta_item_1:2012>])
    .outputs([<gregtech:meta_item_1:11300> * 2, <gregtech:meta_item_1:2110>])
    .property("temperature", 2460).duration(4920).EUt(1920).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2044> * 4, <gregtech:meta_item_1:2016>])
    .outputs([<gregtech:meta_item_1:11133> * 5, <gregtech:meta_item_1:2110>])
    .property("temperature", 2700).duration(2700).EUt(480).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2032> * 3, <gregtech:meta_item_1:2047>])
    .fluidInputs(<liquid:argon> * 1000)
    .outputs([<gregtech:meta_item_1:11207> * 4, <gregtech:meta_item_1:2110>])
    .property("temperature", 2900).duration(500).EUt(1920).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2301> * 9, <gregtech:meta_item_1:2074>, <gregtech:meta_item_1:2041>])
    .outputs([<gregtech:meta_item_1:11235> * 11, <gregtech:meta_item_1:2110>])
    .property("temperature", 3000).duration(3000).EUt(1920).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2077> * 3, <gregtech:meta_item_1:2025>])
    .outputs([<gregtech:meta_item_1:11195> * 4, <gregtech:meta_item_1:2110>])
    .property("temperature", 3600).duration(4500).EUt(480).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2358> * 6, <gregtech:meta_item_1:2985> * 4, <gregtech:meta_item_1:2078>])
    .outputs([<gregtech:meta_item_1:11200> * 13, <gregtech:meta_item_1:2110>])
    .property("temperature", 3600).duration(18360).EUt(480).buildAndRegister();
//Readd proper tungstensteel separation
RecipeMap.getByName("centrifuge").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2235> * 11])
    .outputs([<gregtech:meta_item_1:2301> * 11, <gregtech:meta_item_1:2074>, <gregtech:meta_item_1:2041>])
    .duration(292).EUt(30).buildAndRegister();


/**
* Readd blast furnace dust smelting (cool & hot ingots)
*/
//Cold ingots
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2034>])
    .outputs([<gregtech:meta_item_1:10034>])
    .property("temperature", 1193).duration(3292).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2042>])
    .outputs([<gregtech:meta_item_1:10042>])
    .property("temperature", 1297).duration(3736).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2301>])
    .outputs([<gregtech:meta_item_1:10301>])
    .property("temperature", 1453).duration(1598).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2234>])
    .outputs([<gregtech:meta_item_1:10234>])
    .property("temperature", 1500).duration(1680).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2016>])
    .outputs([<gregtech:meta_item_1:10016>])
    .property("temperature", 1700).duration(1768).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2183>])
    .outputs([<gregtech:meta_item_1:10183>])
    .property("temperature", 1700).duration(1870).EUt(120).buildAndRegister();
//Hot ingots
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2078>])
    .outputs([<gregtech:meta_item_1:11078>])
    .property("temperature", 1799).duration(3202).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2127>])
    .outputs([<gregtech:meta_item_1:11127>])
    .property("temperature", 1800).duration(1584).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2072>])
    .outputs([<gregtech:meta_item_1:11072>])
    .property("temperature", 1941).duration(1864).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2077>])
    .outputs([<gregtech:meta_item_1:11077>])
    .property("temperature", 2183).duration(2226).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2300>])
    .outputs([<gregtech:meta_item_1:11300>])
    .property("temperature", 2460).duration(4772).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2133>])
    .outputs([<gregtech:meta_item_1:11133>])
    .property("temperature", 2700).duration(3024).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2032>])
    .outputs([<gregtech:meta_item_1:11032>])
    .property("temperature", 2719).duration(10440).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2207>])
    .fluidInputs(<liquid:argon> * 250)
    .outputs([<gregtech:meta_item_1:11207>])
    .property("temperature", 2900).duration(9550).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2235>])
    .outputs([<gregtech:meta_item_1:11235>])
    .property("temperature", 3000).duration(7140).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2650>])
    .outputs([<gregtech:meta_item_1:11650>])
    .property("temperature", 3200).duration(3304).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2047>])
    .outputs([<gregtech:meta_item_1:11047>])
    .property("temperature", 3306).duration(12562).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2200>])
    .outputs([<gregtech:meta_item_1:11200>])
    .property("temperature", 3600).duration(4590).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2195>])
    .outputs([<gregtech:meta_item_1:11195>])
    .property("temperature", 3600).duration(4950).EUt(120).buildAndRegister();
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2310>])
    .outputs([<gregtech:meta_item_1:11310>])
    .property("temperature", 3600).duration(52740).EUt(120).buildAndRegister();
    
    

/**
* Deal with steel production in the PBF
*/
for recipe in RecipeMaps.getPrimitiveBlastFurnaceRecipes() {
    recipe.remove();
}
PBFRecipeBuilder.start()
    .input(<gregtech:meta_item_1:10140>)
    .output(<gregtech:meta_item_1:10184>)
    .duration(800).fuelAmount(2).buildAndRegister();
PBFRecipeBuilder.start()
    .input(<minecraft:iron_ingot>)
    .output(<gregtech:meta_item_1:10184>)
    .duration(600).fuelAmount(2).buildAndRegister();
