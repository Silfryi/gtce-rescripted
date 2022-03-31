import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialRegistry;



/**
* Remove electrolysis recipes for everything so we can just readd them later. we need to change basically every recipe at least a LITTLE anyway
*/
for recipe in RecipeMap.getByName("electrolyzer").recipes {
    recipe.remove();
}



/**
* Make sure electrolyzer recipes follow the same schema throughout (chemicals)
*/

//Water & Distilled Water
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:water> * 3000])
    .fluidOutputs([<liquid:hydrogen> * 2000, <liquid:oxygen> * 1000])
    .duration(5000).EUt(30).buildAndRegister();
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:distilled_water> * 3000])
    .fluidOutputs([<liquid:hydrogen> * 2000, <liquid:oxygen> * 1000])
    .duration(5000).EUt(30).buildAndRegister();
//Saltwater
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:salt_water> * 5000])
    .outputs([<gregtech:meta_item_1:2373> * 3])
    .fluidOutputs([<liquid:chlorine> * 1000, <liquid:hydrogen> * 1000])
    .duration(1200).EUt(30).buildAndRegister();

//Acids
//Phosphoric Acid
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:phosphoric_acid> * 8000])
    .outputs([<gregtech:meta_item_1:2050>])
    .fluidOutputs([<liquid:hydrogen> * 3000, <liquid:oxygen> * 4000])
    .duration(384).EUt(120).buildAndRegister();
//Nitric Acid
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:nitric_acid> * 5000])
    .fluidOutputs([<liquid:hydrogen> * 1000, <liquid:nitrogen> * 1000, <liquid:oxygen> * 3000])
    .duration(384).EUt(120).buildAndRegister();
//Hydrochloric Acid
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:hydrochloric_acid> * 2000])
    .fluidOutputs([<liquid:hydrogen> * 1000, <liquid:chlorine> * 1000])
    .duration(1200).EUt(30).buildAndRegister();
//Hydrofluoric Acid
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:hydrofluoric_acid> * 2000])
    .fluidOutputs([<liquid:hydrogen> * 1000, <liquid:fluorine> * 1000])
    .duration(6000).EUt(30).buildAndRegister();
//Acetic Acid
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:acetic_acid> * 16000])
    .fluidOutputs([<liquid:ethane> * 8000, <liquid:carbon_dioxide> * 6000, <liquid:hydrogen> * 2000])
    .duration(512).EUt(120).buildAndRegister();
  
//Carbon Oxides
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
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:methanol> * 6000])
    .fluidOutputs([<liquid:carbon_monoxide> * 2000, <liquid:hydrogen> * 4000])
    .duration(300).EUt(30).buildAndRegister();
    
//Ammonia
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:ammonia> * 4000])
    .fluidOutputs([<liquid:nitrogen> * 1000, <liquid:hydrogen> * 3000])
    .duration(192).EUt(30).buildAndRegister();
    
//Hydrogen sulfide
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:hydrogen_sulfide> * 3000])
    .outputs([<gregtech:meta_item_1:2065>])
    .fluidOutputs([<liquid:hydrogen> * 2000])
    .duration(144).EUt(30).buildAndRegister();
    
//Molten solids
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:glass> * 3000])
    .fluidOutputs([<liquid:silicon> * 1000, <liquid:oxygen> * 2000])
    .duration(412).EUt(30).buildAndRegister();   
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:magnesium_chloride> * 3000])
    .fluidOutputs([<liquid:magnesium> * 1000, <liquid:chlorine> * 2000])
    .duration(380).EUt(30).buildAndRegister(); 
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .fluidInputs([<liquid:magnesia> * 1000])
    .fluidOutputs([<liquid:magnesium> * 1000, <liquid:oxygen> * 1000])
    .duration(290).EUt(30).buildAndRegister(); 
    
//The VERY VERY FEW things that need electrolytic oxidation
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .inputs([<minecraft:redstone> * 25])
    .fluidInputs([<liquid:oxygen> * 2000])
    .outputs([<gregtech:meta_item_1:2154> * 6, <gregtech:meta_item_1:2148> * 15])
    .fluidOutputs([<liquid:mercury> * 3000, <liquid:glass> * 3000])
    .duration(2272).EUt(30).buildAndRegister();
RecipeMap.getByName("electrolyzer").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2382> * 14])
    .fluidOutputs([<liquid:hydrogen> * 2000, <liquid:sodium_persulfate> * 12000])
    .duration(228).EUt(30).buildAndRegister();

    
    
/**
* Remove electrolysis for dusts that definitely should not have it - things better off in the centrifuge, things inseparable, etc
*/
//Add centrifuge recipes for those dusts
RecipeMap.getByName("centrifuge").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2267> * 2])
    .outputs([<gregtech:meta_item_1:2131>, <gregtech:meta_item_1:2251>])
    .duration(192).EUt(30).buildAndRegister();
RecipeMap.getByName("centrifuge").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2269> * 2])
    .outputs([<gregtech:meta_item_1:2201>, <gregtech:meta_item_1:2202>])
    .duration(688).EUt(30).buildAndRegister();
RecipeMap.getByName("centrifuge").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2879>])
    .outputs([<gregtech:meta_item_1:2012>])
    .duration(18).EUt(30).buildAndRegister();
RecipeMap.getByName("centrifuge").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2204>])
    .outputs([<gregtech:meta_item_1:2012> * 4])
    .duration(72).EUt(30).buildAndRegister();
RecipeMap.getByName("centrifuge").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2219> * 2])
    .outputs([<gregtech:meta_item_1:2218>, <minecraft:blaze_powder>])
    .duration(688).EUt(30).buildAndRegister();
RecipeMap.getByName("centrifuge").recipeBuilder()
    .inputs([<minecraft:blaze_powder> * 2])
    .outputs([<gregtech:meta_item_1:2012>, <gregtech:meta_item_1:2065>])
    .duration(688).EUt(30).buildAndRegister();
