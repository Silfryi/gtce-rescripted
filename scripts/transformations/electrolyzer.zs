import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialRegistry;



/**
* Remove electrolysis recipes for chemicals that definitely should not have them - large organic molecules, etc
*/
RecipeMap.getByName("electrolyzer").findRecipe(60, null, [<liquid:acetone> * 2000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(30, null, [<liquid:methane> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, null, [<liquid:glyceryl> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, null, [<liquid:nitrogen_dioxide> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, null, [<liquid:sodium_persulfate> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, null, [<liquid:sulfuric_acid> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, null, [<liquid:epichlorhydrin> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, null, [<liquid:ethylene> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, null, [<liquid:sulfur_trioxide> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, null, [<liquid:sulfur_dioxide> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, null, [<liquid:glycerol> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, null, [<liquid:hypochlorous_acid> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, null, [<liquid:chloramine> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, null, [<liquid:dinitrogen_tetroxide> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(30, null, [<liquid:nitric_oxide> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(30, null, [<liquid:propane> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(30, null, [<liquid:propene> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(30, null, [<liquid:ethane> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(30, null, [<liquid:butane> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(30, null, [<liquid:butene> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, null, [<liquid:allyl_chloride> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(30, null, [<liquid:isoprene> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, null, [<liquid:chloroform> * 1000]).remove();



/**
* Make sure electrolyzer recipes follow the same schema throughout - 1 mol of something is # of atoms in it * (buckets|dust|ingots) - and that's how it separates out by #
*/

//Apatite
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1:2226> * 9], null).remove();
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2226> * 21])
    .outputs([<gregtech:meta_item_1:2011> * 5, <gregtech:meta_item_1:2139> * 15])
    .fluidOutputs([<liquid:chlorine> * 1000])
    .duration(2304).EUt(60).buildAndRegister();

//Water & Distilled Water
RecipeMap.getByName("electrolyzer").findRecipe(30, null, [<liquid:water> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(30, null, [<liquid:distilled_water> * 1000]).remove();
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:water> * 3000])
    .fluidOutputs([<liquid:hydrogen> * 2000, <liquid:oxygen> * 1000])
    .duration(5000).EUt(30).buildAndRegister();
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:distilled_water> * 3000])
    .fluidOutputs([<liquid:hydrogen> * 2000, <liquid:oxygen> * 1000])
    .duration(5000).EUt(30).buildAndRegister();

//Saltwater
RecipeMap.getByName("electrolyzer").findRecipe(30, null, [<liquid:salt_water> * 1000]).remove();
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:salt_water> * 5000])
    .outputs([<gregtech:meta_item_1:2373> * 3])
    .fluidOutputs([<liquid:chlorine> * 1000, <liquid:hydrogen> * 1000])
    .duration(1200).EUt(30).buildAndRegister();

//Phosphoric Acid
RecipeMap.getByName("electrolyzer").findRecipe(60, null, [<liquid:phosphoric_acid> * 1000]).remove();
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:phosphoric_acid> * 8000])
    .outputs([<gregtech:meta_item_1:2050>])
    .fluidOutputs([<liquid:hydrogen> * 3000, <liquid:oxygen> * 4000])
    .duration(384).EUt(60).buildAndRegister();

//Nitric Acid
RecipeMap.getByName("electrolyzer").findRecipe(60, null, [<liquid:nitric_acid> * 1000]).remove();
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:nitric_acid> * 5000])
    .fluidOutputs([<liquid:hydrogen> * 1000, <liquid:nitrogen> * 1000, <liquid:oxygen> * 3000])
    .duration(384).EUt(60).buildAndRegister();

//Hydrochloric Acid
RecipeMap.getByName("electrolyzer").findRecipe(30, null, [<liquid:hydrochloric_acid> * 1000]).remove();
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:hydrochloric_acid> * 2000])
    .fluidOutputs([<liquid:hydrogen> * 1000, <liquid:chlorine> * 1000])
    .duration(1200).EUt(30).buildAndRegister();

//Hydrofluoric Acid
RecipeMap.getByName("electrolyzer").findRecipe(30, null, [<liquid:hydrofluoric_acid> * 1000]).remove();
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:hydrofluoric_acid> * 2000])
    .fluidOutputs([<liquid:hydrogen> * 1000, <liquid:fluorine> * 1000])
    .duration(6000).EUt(30).buildAndRegister();
  
//Acetic Acid
RecipeMap.getByName("electrolyzer").findRecipe(60, null, [<liquid:acetic_acid> * 2000]).remove();
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:acetic_acid> * 16000])
    .fluidOutputs([<liquid:ethane> * 8000, <liquid:carbon_dioxide> * 6000, <liquid:hydrogen> * 2000])
    .duration(512).EUt(60).buildAndRegister();
  
//Carbon Oxides
RecipeMap.getByName("electrolyzer").findRecipe(30, null, [<liquid:carbon_monoxide> * 1000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(30, null, [<liquid:carbon_dioxide> * 1000]).remove();
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:carbon_monoxide> * 2000])
    .outputs([<gregtech:meta_item_1:2012>])
    .fluidOutputs([<liquid:oxygen> * 1000])
    .duration(168).EUt(30).buildAndRegister();
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:carbon_dioxide> * 3000])
    .outputs([<gregtech:meta_item_1:2012>])
    .fluidOutputs([<liquid:oxygen> * 2000])
    .duration(252).EUt(30).buildAndRegister();
    
//Methanol
RecipeMap.getByName("electrolyzer").findRecipe(60, null, [<liquid:methanol> * 1000]).remove();
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:methanol> * 6000])
    .fluidOutputs([<liquid:carbon_monoxide> * 2000, <liquid:hydrogen> * 4000])
    .duration(144).EUt(60).buildAndRegister();
    
//Ammonia
RecipeMap.getByName("electrolyzer").findRecipe(30, null, [<liquid:ammonia> * 1000]).remove();
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:ammonia> * 4000])
    .fluidOutputs([<liquid:nitrogen> * 1000, <liquid:hydrogen> * 3000])
    .duration(96).EUt(30).buildAndRegister();
    
//Hydrogen sulfide
RecipeMap.getByName("electrolyzer").findRecipe(30, null, [<liquid:hydrogen_sulfide> * 1000]).remove();
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:hydrogen_sulfide> * 3000])
    .outputs([<gregtech:meta_item_1:2065>])
    .fluidOutputs([<liquid:hydrogen> * 2000])
    .duration(144).EUt(30).buildAndRegister();