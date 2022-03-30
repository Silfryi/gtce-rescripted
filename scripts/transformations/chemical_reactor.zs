import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialRegistry;

//Seed oil 10x
RecipeMap.getByName("fluid_extractor").findRecipe(2, [<minecraft:beetroot_seeds>], []).remove();
RecipeMap.getByName("fluid_extractor").recipeBuilder().inputs([<minecraft:wheat_seeds>]).fluidOutputs([<liquid:seed_oil> * 100]).duration(32).EUt(2).buildAndRegister();
RecipeMap.getByName("fluid_extractor").recipeBuilder().inputs([<minecraft:beetroot_seeds>]).fluidOutputs([<liquid:seed_oil> * 100]).duration(32).EUt(2).buildAndRegister();
RecipeMap.getByName("fluid_extractor").recipeBuilder().inputs([<minecraft:melon_seeds>]).fluidOutputs([<liquid:seed_oil> * 100]).duration(32).EUt(2).buildAndRegister();
RecipeMap.getByName("fluid_extractor").recipeBuilder().inputs([<minecraft:pumpkin_seeds>]).fluidOutputs([<liquid:seed_oil> * 100]).duration(32).EUt(2).buildAndRegister();


print("Transforming all chemical reactor recipes to follow proper rules and the electrolyzer processes");

/**
* Make sure distillation tower recipes follow proper rations for their fluids, to line up with Chemical Reactor and Electrolyzer changes
*/

// Dilute Sulfuric Acid
RecipeMap.getByName("distillation_tower").findRecipe(120, [], [<liquid:diluted_sulfuric_acid> * 3000]).remove();
RecipeMap.getByName("distillery").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:diluted_sulfuric_acid> * 3000]).remove();
RecipeMap.getByName("distillery").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:diluted_sulfuric_acid> * 3000]).remove();
RecipeMap.getByName("distillation_tower").recipeBuilder()
    .fluidInputs([<liquid:diluted_sulfuric_acid> * 1000])
    .fluidOutputs([<liquid:sulfuric_acid> * 630, <liquid:water> * 370])
    .duration(100).EUt(120).buildAndRegister();

// Dilute Hydrochloric Acid
RecipeMap.getByName("distillation_tower").findRecipe(64, [], [<liquid:diluted_hydrochloric_acid> * 2000]).remove();
RecipeMap.getByName("distillery").findRecipe(16, [<gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:diluted_hydrochloric_acid> * 2000]).remove();
RecipeMap.getByName("distillery").findRecipe(16, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:diluted_hydrochloric_acid> * 2000]).remove();
RecipeMap.getByName("distillation_tower").recipeBuilder()
    .fluidInputs([<liquid:diluted_hydrochloric_acid> * 1000])
    .fluidOutputs([<liquid:hydrochloric_acid> * 360, <liquid:water> * 640])
    .duration(100).EUt(64).buildAndRegister();

//Dissolved Calcium Acetate
RecipeMap.getByName("distillation_tower").findRecipe(120, [], [<liquid:calcium_acetate> * 1000]).remove();
RecipeMap.getByName("distillery").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:calcium_acetate> * 1000]).remove();
RecipeMap.getByName("distillery").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:calcium_acetate> * 1000]).remove();
RecipeMap.getByName("distillery").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:calcium_acetate> * 1000]).remove();
RecipeMap.getByName("distillation_tower").recipeBuilder()
    .fluidInputs([<liquid:calcium_acetate> * 18000])
    .outputs([<gregtech:meta_item_1:2374> * 2])
    .fluidOutputs([<liquid:acetone> * 10000, <liquid:carbon_dioxide> * 3000, <liquid:water> * 3000])
    .duration(80).EUt(120).buildAndRegister();
    


/**
* Fix the relatively few errors in mixer mixing that later cause issues with the electrolyzer and chemical reactor when their products intersect
*/

//Saltwater
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:2155> * 2], [<liquid:water> * 1000]).remove();
RecipeMap.getByName("mixer").recipeBuilder().inputs([<gregtech:meta_item_1:2151> * 2]).fluidInputs([<liquid:water> * 3000]).fluidOutputs([<liquid:salt_water> * 5000]).duration(40).EUt(8).buildAndRegister();
RecipeMap.getByName("mixer").recipeBuilder().inputs([<gregtech:meta_item_1:2155> * 2]).fluidInputs([<liquid:water> * 3000]).fluidOutputs([<liquid:salt_water> * 5000]).duration(40).EUt(8).buildAndRegister();

//Nitration mixture
RecipeMap.getByName("mixer").findRecipe(2, null, [<liquid:nitric_acid> * 1000, <liquid:sulfuric_acid> * 1000]).remove();
RecipeMap.getByName("mixer").recipeBuilder().fluidInputs([<liquid:nitric_acid> * 5000, <liquid:sulfuric_acid> * 7000]).fluidOutputs([<liquid:nitration_mixture> * 12000]).duration(500).EUt(2).buildAndRegister();



/**
* Fix the massive number of errors in the chemical reactor compared to how significant portions of the electrolyzer do their recipes
*/

//Epoxy resin
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:2373> * 3], [<liquid:bisphenol_a> * 1000, <liquid:epichlorhydrin> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, null, [<liquid:nitrogen_dioxide> * 1000, <liquid:naphtha> * 3000, <liquid:epichlorhydrin> * 144]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2373> * 6])
    .fluidInputs([<liquid:epichlorhydrin> * 20000, <liquid:bisphenol_a> * 33000])
    .fluidOutputs([<liquid:epoxid> * 49000, <liquid:salt_water> * 10000])
    .duration(1000).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:nitration_mixture> * 12000, <liquid:benzene> * 12000])
    .fluidOutputs([<liquid:nitrobenzene> * 14000, <liquid:diluted_sulfuric_acid> * 10000])
    .duration(480).EUt(120).buildAndRegister();
//This process is not a real process in that it doesn't produce a true expoid - instead it produces a form of what I think believe originally was one - modified tetraglycidyldiaminodiphenyl methane (-4C-8H, from branch)
//It combines the aniline production step and the epichlorohydrin synthesis step to make an easier ratio on the diluted HCl
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:epichlorhydrin> * 30000, <liquid:hydrogen> * 6000, <liquid:nitrobenzene> * 28000])
    .fluidOutputs([<liquid:epoxid> * 49000, <liquid:diluted_hydrochloric_acid> * 15000])
    .duration(1200).EUt(120).buildAndRegister();

//Methane
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 0}), <gregtech:meta_item_1:2012>], [<liquid:hydrogen> * 4000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:propene> * 2000]).remove();

//Carbon Dioxide
RecipeMap.getByName("chemical_reactor").findRecipe(8, [<gregtech:meta_item_1:32766>.withTag({Configuration: 2}), <gregtech:meta_item_1:2012>], [<liquid:oxygen> * 2000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(8, [<gregtech:meta_item_1:32766>.withTag({Configuration: 2}), <minecraft:coal:1>], [<liquid:oxygen> * 2000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(8, [<gregtech:meta_item_1:32766>.withTag({Configuration: 2}), <gregtech:meta_item_1:2101>], [<liquid:oxygen> * 2000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(8, [<gregtech:meta_item_1:32766>.withTag({Configuration: 2}), <minecraft:coal>], [<liquid:oxygen> * 2000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(8, [<gregtech:meta_item_1:32766>.withTag({Configuration: 2}), <gregtech:meta_item_1:2106>], [<liquid:oxygen> * 2000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(480, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:methane> * 1000, <liquid:water> * 2000]).remove(); 
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2012> | <minecraft:coal> | <minecraft:coal:1> | <gregtech:meta_item_1:2106> | <gregtech:meta_item_1:2101>])
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs([<liquid:oxygen> * 2000])
    .outputs([<gregtech:meta_item_1:89>])
    .fluidOutputs([<liquid:carbon_dioxide> * 3000])
    .duration(80).EUt(8).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:methane> * 5000, <liquid:water> * 6000])
    .fluidOutputs([<liquid:carbon_dioxide> * 3000, <liquid:hydrogen> * 8000])
    .duration(150).EUt(480).buildAndRegister();

//Hydrogen Sulfide
//Oil desulfurization
RecipeMap.getByName("chemical_reactor").findRecipe(30, [], [<liquid:hydrogen> * 2000, <liquid:sulfuric_light_fuel> * 12000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [], [<liquid:hydrogen> * 2000, <liquid:sulfuric_heavy_fuel> * 8000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [], [<liquid:hydrogen> * 2000, <liquid:sulfuric_naphtha> * 12000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [], [<liquid:hydrogen> * 2000, <liquid:sulfuric_gas> * 16000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [], [<liquid:hydrogen> * 2000, <liquid:natural_gas> * 16000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:hydrogen> * 2000, <liquid:sulfuric_light_fuel> * 12000])
    .fluidOutputs([<liquid:light_fuel> * 12000, <liquid:hydrogen_sulfide> * 3000])
    .duration(160).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:hydrogen> * 2000, <liquid:sulfuric_heavy_fuel> * 8000])
    .fluidOutputs([<liquid:heavy_fuel> * 8000, <liquid:hydrogen_sulfide> * 3000])
    .duration(160).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:hydrogen> * 2000, <liquid:sulfuric_naphtha> * 12000])
    .fluidOutputs([<liquid:naphtha> * 12000, <liquid:hydrogen_sulfide> * 3000])
    .duration(160).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:hydrogen> * 2000, <liquid:sulfuric_gas> * 16000])
    .fluidOutputs([<liquid:gas> * 16000, <liquid:hydrogen_sulfide> * 3000])
    .duration(160).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:hydrogen> * 2000, <liquid:natural_gas> * 16000])
    .fluidOutputs([<liquid:gas> * 16000, <liquid:hydrogen_sulfide> * 3000])
    .duration(160).EUt(30).buildAndRegister();
//Hydrogen and sulfur
RecipeMap.getByName("chemical_reactor").findRecipe(8, [<gregtech:meta_item_1:2065>], [<liquid:hydrogen> * 2000]).remove();

//Sulfur Dioxide
RecipeMap.getByName("chemical_reactor").findRecipe(8, [<gregtech:meta_item_1:32766>.withTag({Configuration: 2}), <gregtech:meta_item_1:2065>], [<liquid:oxygen> * 2000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:hydrogen_sulfide> * 1000, <liquid:oxygen> * 3000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:hydrogen_sulfide> * 1000, <liquid:oxygen> * 4000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2065>])
    .fluidInputs([<liquid:oxygen> * 2000])
    .fluidOutputs([<liquid:sulfur_dioxide> * 3000])
    .duration(60).EUt(8).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:hydrogen_sulfide> * 3000, <liquid:oxygen> * 3000])
    .fluidOutputs([<liquid:sulfur_dioxide> * 3000, <liquid:water> * 3000])
    .duration(120).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder().
    fluidInputs([<liquid:hydrogen_sulfide> * 12000, <liquid:sulfur_dioxide> * 6000])
    .outputs([<gregtech:meta_item_1:2065> * 6])
    .fluidOutputs([<liquid:water> * 12000])
    .duration(120).EUt(30).buildAndRegister();

//Sulfur Trioxide
RecipeMap.getByName("chemical_reactor").findRecipe(30, [], [<liquid:sulfur_dioxide> * 3000, <liquid:oxygen> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 3}), <gregtech:meta_item_1:2065>], [<liquid:oxygen> * 3000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:sulfur_dioxide> * 3000, <liquid:oxygen> * 1000])
    .fluidOutputs([<liquid:sulfur_trioxide> * 4000])
    .duration(200).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2065>])
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .fluidInputs([<liquid:oxygen> * 3000])
    .fluidOutputs([<liquid:sulfur_trioxide> * 4000])
    .duration(280).EUt(30).buildAndRegister();

//Sulfuric Acid
RecipeMap.getByName("chemical_reactor").findRecipe(8, [], [<liquid:sulfur_trioxide> * 1000, <liquid:water> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:2065>], [<liquid:water> * 4000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:water> * 3000, <liquid:sulfur_trioxide> * 4000])
    .fluidOutputs([<liquid:sulfuric_acid> * 7000])
    .duration(320).EUt(8).buildAndRegister();

//Nitrogen dioxide
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration:1})], [<liquid:oxygen> * 2000, <liquid:nitrogen> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([ <liquid:oxygen> * 2000, <liquid:nitrogen> * 1000])
    .fluidOutputs([<liquid:nitrogen_dioxide> * 3000])
    .duration(600).EUt(30).buildAndRegister();


//Nitric Acid
RecipeMap.getByName("chemical_reactor").findRecipe(240, [<gregtech:meta_item_1:32766>.withTag({Configuration: 3})], [<liquid:water> * 1000, <liquid:nitrogen_dioxide> * 3000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:ammonia> * 1000, <liquid:oxygen> * 4000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 4})], [<liquid:water> * 1000, <liquid:nitrogen_dioxide> * 2000, <liquid:oxygen> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(480, [<gregtech:meta_item_1:32766>.withTag({Configuration: 24})], [<liquid:nitrogen> * 1000, <liquid:oxygen> * 4000, <liquid:hydrogen> * 3000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs([<liquid:oxygen> * 4000, <liquid:ammonia> * 4000])
    .fluidOutputs([<liquid:nitric_acid> * 5000, <liquid:water> * 3000])
    .duration(320).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:water> * 3000, <liquid:oxygen> * 1000, <liquid:nitrogen_dioxide> * 6000])
    .fluidOutputs([<liquid:nitric_acid> * 10000])
    .duration(240).EUt(30).buildAndRegister();

//Vinyl Chloride & Ethylene pre-polymzerization
RecipeMap.getByName("chemical_reactor").findRecipe(30, [], [<liquid:ethylene> * 1000, <liquid:chlorine> * 2000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(200, [], [<liquid:glycerol> * 1000, <liquid:carbon_dioxide> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 3})], [<liquid:ethylene> * 1000, <liquid:hydrochloric_acid> * 1000, <liquid:oxygen> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:sulfuric_acid> * 7000, <liquid:ethanol> * 9000])
    .fluidOutputs([<liquid:ethylene> * 6000, <liquid:diluted_sulfuric_acid> * 10000])
    .duration(1200).EUt(120).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:carbon_dioxide> * 3000, <liquid:glycerol> * 14000])
    .fluidOutputs([<liquid:ethylene> * 12000, <liquid:oxygen> * 5000])
    .duration(400).EUt(480).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:chlorine> * 2000, <liquid:ethylene> * 6000])
    .fluidOutputs([<liquid:vinyl_chloride> * 6000, <liquid:hydrochloric_acid> * 2000])
    .duration(160).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_reactor").findRecipe(120, [], [<liquid:sulfuric_acid> * 1000, <liquid:ethanol> * 1000]).remove();

//Acetone
RecipeMap.getByName("chemical_reactor").findRecipe(30, [], [<liquid:cumene> * 1000, <liquid:oxygen> * 2000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:oxygen> * 2000, <liquid:cumene> * 21000])
    .fluidOutputs([<liquid:acetone> * 10000, <liquid:phenol> * 13000])
    .duration(160).EUt(30).buildAndRegister();

//Phenol
RecipeMap.getByName("chemical_reactor").findRecipe(2000, [], [<liquid:benzene> * 1000, <liquid:oxygen> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:oxygen> * 1000, <liquid:benzene> * 12000])
    .fluidOutputs([<liquid:phenol> * 13000])
    .duration(400).EUt(1920).buildAndRegister();

//Hydrochloric acid
RecipeMap.getByName("chemical_reactor").findRecipe(8, [], [<liquid:hydrogen> * 1000, <liquid:chlorine> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:hydrogen> * 1000, <liquid:chlorine> * 1000])
    .fluidOutputs([<liquid:hydrochloric_acid> * 2000])
    .duration(60).EUt(8).buildAndRegister();

//Chloroform
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:methane> * 1000, <liquid:chlorine> * 6000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:chlorine> * 6000, <liquid:methane> * 5000])
    .fluidOutputs([<liquid:chloroform> * 5000, <liquid:hydrochloric_acid> * 6000])
    .duration(80).EUt(30).buildAndRegister();

//Methanol
RecipeMap.getByName("chemical_reactor").findRecipe(96, [], [<liquid:carbon_dioxide> * 1000, <liquid:hydrogen> * 6000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(96, [<gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:carbon_monoxide> * 1000, <liquid:hydrogen> * 4000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(96, [<gregtech:meta_item_1:32766>.withTag({Configuration: 3}), <gregtech:meta_item_1:2012>], [<liquid:oxygen> * 1000, <liquid:hydrogen> * 4000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:hydrogen> * 6000, <liquid:carbon_dioxide> * 3000])
    .fluidOutputs([<liquid:methanol> * 6000, <liquid:water> * 3000])
    .duration(120).EUt(96).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .fluidInputs([<liquid:hydrogen> * 4000, <liquid:carbon_monoxide> * 2000])
    .fluidOutputs([<liquid:methanol> * 6000])
    .duration(120).EUt(96).buildAndRegister();

//Carbon Monoxide
RecipeMap.getByName("chemical_reactor").findRecipe(8, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1}), <gregtech:meta_item_1:2012>], [<liquid:oxygen> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(8, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1}), <minecraft:coal:1>], [<liquid:oxygen> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(8, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1}), <gregtech:meta_item_1:2101>], [<liquid:oxygen> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(8, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1}), <minecraft:coal>], [<liquid:oxygen> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(8, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1}), <gregtech:meta_item_1:2106>], [<liquid:oxygen> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(8, [<gregtech:meta_item_1:2012>], [<liquid:carbon_dioxide> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2012> | <minecraft:coal> | <minecraft:coal:1> | <gregtech:meta_item_1:2106> | <gregtech:meta_item_1:2101>])
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs([<liquid:oxygen> * 1000])
    .outputs([<gregtech:meta_item_1:89>])
    .fluidOutputs([<liquid:carbon_monoxide> * 2000])
    .duration(80).EUt(8).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2012> | <minecraft:coal> | <minecraft:coal:1> | <gregtech:meta_item_1:2106> | <gregtech:meta_item_1:2101>])
    .fluidInputs([<liquid:carbon_dioxide> * 3000])
    .outputs([<gregtech:meta_item_1:89>])
    .fluidOutputs([<liquid:carbon_monoxide> * 4000])
    .duration(800).EUt(8).buildAndRegister();

//Ammonia
RecipeMap.getByName("chemical_reactor").findRecipe(384, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:nitrogen> * 1000, <liquid:hydrogen> * 3000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs(<liquid:nitrogen> * 1000, <liquid:hydrogen> * 3000)
    .fluidOutputs(<liquid:ammonia> * 4000)
    .EUt(120).duration(320).buildAndRegister();

//Hypochlorous acid
RecipeMap.getByName("chemical_reactor").findRecipe(8, [], [<liquid:chlorine> * 10000, <liquid:water> * 10000, <liquid:mercury> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:chlorine> * 2000, <liquid:water> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:water> * 24000, <liquid:chlorine> * 8000, <liquid:mercury> * 100])
    .fluidOutputs([<liquid:hypochlorous_acid> * 24000, <liquid:hydrogen> * 8000])
    .duration(600).EUt(8).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs([<liquid:water> * 6000, <liquid:chlorine> * 2000])
    .fluidOutputs([<liquid:hypochlorous_acid> * 3000, <liquid:diluted_hydrochloric_acid> * 5000])
    .duration(120).EUt(30).buildAndRegister();

//Chloramine
RecipeMap.getByName("chemical_reactor").findRecipe(30, [], [<liquid:ammonia> * 1000, <liquid:hypochlorous_acid> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:ammonia> * 4000, <liquid:hypochlorous_acid> * 3000])
    .fluidOutputs([<liquid:chloramine> * 4000, <liquid:water> * 3000])
    .duration(160).EUt(30).buildAndRegister();

//Dimethylamine
RecipeMap.getByName("chemical_reactor").findRecipe(120, [], [<liquid:methanol> * 2000, <liquid:ammonia> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:methanol> * 12000, <liquid:ammonia> * 4000])
    .fluidOutputs([<liquid:dimethylamine> * 10000, <liquid:water> * 6000])
    .duration(240).EUt(120).buildAndRegister();

//Dimethylhydrazine
RecipeMap.getByName("chemical_reactor").findRecipe(480, [null], [<liquid:chloramine> * 1000, <liquid:dimethylamine> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(480, [null], [<liquid:methanol> * 2000, <liquid:ammonia> * 2000, <liquid:hypochlorous_acid> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs(<liquid:chloramine> * 4000, <liquid:dimethylamine> * 10000, <liquid:water> * 3000)
    .fluidOutputs(<liquid:dimethylhidrazine> * 12000, <liquid:diluted_hydrochloric_acid> * 5000)
    .EUt(120).duration(960).buildAndRegister();

//Dinitrogen Tetroxide
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:nitrogen_dioxide> * 2000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 3})], [<liquid:ammonia> * 2000, <liquid:oxygen> * 7000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(480, [<gregtech:meta_item_1:32766>.withTag({Configuration: 23})], [<liquid:hydrogen> * 6000, <liquid:nitrogen> * 2000, <liquid:oxygen> * 7000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs([<liquid:nitrogen_dioxide> * 6000])
    .fluidOutputs([<liquid:dinitrogen_tetroxide> * 6000])
    .duration(640).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
    .fluidInputs([<liquid:ammonia> * 8000, <liquid:oxygen> * 7000])
    .fluidOutputs([<liquid:dinitrogen_tetroxide> * 6000, <liquid:water> * 9000])
    .duration(480).EUt(30).buildAndRegister();

//Acetic Acid
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:ethylene> * 1000, <liquid:oxygen> * 2000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(60, [<gregtech:meta_item_1:2373>], [<liquid:water> * 1000, <liquid:methyl_acetate> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [], [<liquid:methanol> * 1000, <liquid:carbon_monoxide> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:carbon_monoxide> * 2000, <liquid:hydrogen> * 4000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 4}), <gregtech:meta_item_1:2012> * 2], [<liquid:oxygen> * 2000, <liquid:hydrogen> * 4000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs([<liquid:oxygen> * 2000, <liquid:ethylene> * 6000])
    .fluidOutputs([<liquid:acetic_acid> * 8000])
    .duration(100).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:carbon_monoxide> * 2000, <liquid:methanol> * 6000])
    .fluidOutputs([<liquid:acetic_acid> * 8000])
    .duration(300).EUt(30).buildAndRegister();


//Hydrofluoric Acid
RecipeMap.getByName("chemical_reactor").findRecipe(8, [], [<liquid:hydrogen> * 1000, <liquid:fluorine> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder().fluidInputs([<liquid:hydrogen> * 1000, <liquid:fluorine> * 1000]).fluidOutputs([<liquid:hydrofluoric_acid> * 2000]).duration(60).EUt(8).buildAndRegister();

//Tetranitromethane
RecipeMap.getByName("chemical_reactor").findRecipe(120, [], [<liquid:methyl_acetate> * 2000, <liquid:nitric_acid> * 4000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:nitric_acid> * 40000, <liquid:acetic_acid> * 8000])
    .fluidOutputs([<liquid:tetranitromethane> * 26000, <liquid:water> * 18000])
    .duration(3840).EUt(120).buildAndRegister();

//Vinyl Acetate
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 3})], [<liquid:ethylene> * 1000, <liquid:acetic_acid> * 1000, <liquid:oxygen> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
    .fluidInputs([<liquid:oxygen> * 1000, <liquid:acetic_acid> * 8000, <liquid:ethylene> * 6000])
    .fluidOutputs([<liquid:vinyl_acetate> * 12000, <liquid:water> * 3000])
    .duration(180).EUt(30).buildAndRegister();

//Cumene
RecipeMap.getByName("chemical_reactor").findRecipe(30, [], [<liquid:benzene> * 8000, <liquid:propene> * 8000, <liquid:phosphoric_acid> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder().fluidInputs([<liquid:benzene> * 12000, <liquid:propene> * 9000, <liquid:phosphoric_acid> * 100]).fluidOutputs([<liquid:cumene> * 21000]).duration(1920).EUt(30).buildAndRegister();

//Tetrafluoroethylene
RecipeMap.getByName("chemical_reactor").findRecipe(256, [null], [<liquid:chloroform> * 2000, <liquid:hydrofluoric_acid> * 4000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:chloroform> * 10000, <liquid:hydrofluoric_acid> * 8000])
    .fluidOutputs([<liquid:tetrafluoroethylene> * 6000, <liquid:hydrochloric_acid> * 12000])
    .duration(240).EUt(480).buildAndRegister();

//Allyl Chloride
RecipeMap.getByName("chemical_reactor").findRecipe(30, [], [<liquid:chlorine> * 2000, <liquid:propene> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:propene> * 9000, <liquid:chlorine> * 2000])
    .fluidOutputs([<liquid:allyl_chloride> * 9000, <liquid:hydrochloric_acid> * 2000])
    .duration(160).EUt(30).buildAndRegister();

//Isoprene
RecipeMap.getByName("chemical_reactor").findRecipe(30, [], [<liquid:ethylene> * 1000, <liquid:propene> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:ethylene> * 6000, <liquid:propene> * 9000])
    .fluidOutputs([<liquid:isoprene> * 13000, <liquid:hydrogen> * 2000])
    .duration(120).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs([<liquid:propene> * 18000])
    .fluidOutputs([<liquid:methane> * 5000, <liquid:isoprene> * 13000])
    .duration(120).EUt(30).buildAndRegister();

//Phosphoric Acid
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:2050> * 4, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:oxygen> * 10000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:2050> * 2, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:oxygen> * 5000, <liquid:water> * 3000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:2466> * 14], [<liquid:water> * 6000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:2226> * 9], [<liquid:sulfuric_acid> * 5000, <liquid:water> * 10000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2050> * 4])
    .fluidInputs([<liquid:oxygen> * 10000])
    .outputs([<gregtech:meta_item_1:2466> * 14])
    .duration(320).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2226> * 21])
    .fluidInputs([<liquid:sulfuric_acid> * 35000, <liquid:water> * 30000])
    .outputs([<gregtech:meta_item_1:2287> * 60])
    .fluidOutputs([<liquid:phosphoric_acid> * 24000,  <liquid:hydrochloric_acid> * 2000])
    .duration(320).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2466> * 14])
    .fluidInputs([<liquid:water> * 18000])
    .fluidOutputs([<liquid:phosphoric_acid> * 32000])
    .duration(320).EUt(30).buildAndRegister();

//Methyl Acetate
RecipeMap.getByName("chemical_reactor").findRecipe(30, [], [<liquid:acetic_acid> * 1000, <liquid:methanol> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:methanol> * 6000, <liquid:acetic_acid> * 8000])
    .fluidOutputs([<liquid:methyl_acetate> * 11000, <liquid:water> * 3000])
    .duration(240).EUt(30).buildAndRegister();

//Glyceryl Trinitrate
RecipeMap.getByName("chemical_reactor").findRecipe(30, [], [<liquid:glycerol> * 1000, <liquid:nitration_mixture> * 3000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:nitration_mixture> * 36000, <liquid:glycerol> * 14000])
    .fluidOutputs([<liquid:glyceryl> * 20000, <liquid:diluted_sulfuric_acid> * 30000])
    .duration(1800).EUt(30).buildAndRegister();

//Epichlorohydrin
RecipeMap.getByName("chemical_reactor").findRecipe(30, [], [<liquid:glycerol> * 1000, <liquid:hydrochloric_acid> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:2373> * 3], [<liquid:hypochlorous_acid> * 1000, <liquid:allyl_chloride> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:glycerol> * 14000, <liquid:hydrochloric_acid> * 2000])
    .fluidOutputs([<liquid:epichlorhydrin> * 10000, <liquid:water> * 6000])
    .duration(480).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2373> * 3]).fluidInputs([<liquid:allyl_chloride> * 9000, <liquid:hypochlorous_acid> * 3000])
    .fluidOutputs([<liquid:epichlorhydrin> * 10000, <liquid:salt_water> * 5000])
    .duration(480).EUt(30).buildAndRegister();

//Bisphenol A
RecipeMap.getByName("chemical_reactor").findRecipe(30, [], [<liquid:phenol> * 2000, <liquid:acetone> * 1000, <liquid:hydrochloric_acid> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:phenol> * 26000, <liquid:acetone> * 10000, <liquid:hydrochloric_acid> * 2000])
    .fluidOutputs([<liquid:bisphenol_a> * 33000, <liquid:diluted_hydrochloric_acid> * 5000])
    .duration(160).EUt(30).buildAndRegister();

//Sodium Bisulfate
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:2155> * 2], [<liquid:sulfuric_acid> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:2382> * 7], [<liquid:water> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:2382> * 7], [<liquid:water> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2155> * 2])
    .fluidInputs([<liquid:sulfuric_acid> * 7000])
    .outputs([<gregtech:meta_item_1:2382> * 7])
    .fluidOutputs([<liquid:hydrochloric_acid> * 2000])
    .duration(60).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2373> * 3])
    .fluidInputs([<liquid:sulfuric_acid> * 7000])
    .outputs([<gregtech:meta_item_1:2382> * 7])
    .fluidOutputs([<liquid:water> * 3000])
    .duration(60).EUt(30).buildAndRegister();

//Magnesium and Calcuim Carbonate recipes
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:2374> * 2], [<liquid:carbon_dioxide> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:2460> * 2], [<liquid:carbon_dioxide> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:2097> * 5, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], []).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:2130> * 5], []).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2374> * 2])
    .fluidInputs([<liquid:carbon_dioxide> * 3000])
    .outputs([<gregtech:meta_item_1:2097> * 5])
    .duration(80).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2097> * 5])
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs([<gregtech:meta_item_1:2374> * 2])
    .fluidOutputs([<liquid:carbon_dioxide> * 3000])
    .duration(240).EUt(30).buildAndRegister();

//Calcium acetate hydrate
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:2011>, <gregtech:meta_item_1:2012>], [<liquid:oxygen> * 3000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(120, [<gregtech:meta_item_1:2097> * 5], [<liquid:acetic_acid> * 2000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(380, [<gregtech:meta_item_1:2374> * 2], [<liquid:acetic_acid> * 2000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(380, [<gregtech:meta_item_1:2011>], [<liquid:acetic_acid> * 2000, <liquid:oxygen> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2097> * 5])
    .fluidInputs([<liquid:acetic_acid> * 16000])
    .fluidOutputs([<liquid:calcium_acetate> * 18000, <liquid:carbon_dioxide> * 3000])
    .duration(400).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2374> * 2])
    .fluidInputs([<liquid:acetic_acid> * 16000])
    .fluidOutputs([<liquid:calcium_acetate> * 18000])
    .duration(400).EUt(30).buildAndRegister();
   
   
   
/**
* Water & salt production - for when you need a simple chemical to be produced from elements for more complex ones to spring up
*/
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .fluidInputs([<liquid:oxygen> * 1000, <liquid:hydrogen> * 2000])
    .fluidOutputs([<liquid:water> * 3000])
    .duration(20).EUt(30).buildAndRegister();



/**
* Fischer-Tropsch Process - the production of hydrocarbons from CO and H - normally this produces mixed but ehhhhh, perfect is better
*/
//MV
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .fluidInputs([<liquid:hydrogen> * 6000, <liquid:carbon_monoxide> * 2000])
    .fluidOutputs([<liquid:methane> * 5000, <liquid:water> * 3000])
    .duration(1200).EUt(120).buildAndRegister();
//HV
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs([<liquid:hydrogen> * 10000, <liquid:carbon_monoxide> * 4000])
    .fluidOutputs([<liquid:ethane> * 8000, <liquid:water> * 6000])
    .duration(1200).EUt(480).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs([<liquid:hydrogen> * 8000, <liquid:carbon_monoxide> * 4000])
    .fluidOutputs([<liquid:ethylene> * 6000, <liquid:water> * 6000])
    .duration(1200).EUt(480).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
    .fluidInputs([<liquid:hydrogen> * 14000, <liquid:carbon_monoxide> * 6000])
    .fluidOutputs([<liquid:propane> * 11000, <liquid:water> * 9000])
    .duration(1200).EUt(480).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
    .fluidInputs([<liquid:hydrogen> * 12000, <liquid:carbon_monoxide> * 6000])
    .fluidOutputs([<liquid:propene> * 9000, <liquid:water> * 9000])
    .duration(1200).EUt(480).buildAndRegister();
//EV
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5}))
    .fluidInputs([<liquid:hydrogen> * 18000, <liquid:carbon_monoxide> * 8000])
    .fluidOutputs([<liquid:butane> * 14000, <liquid:water> * 12000])
    .duration(1200).EUt(1920).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 6}))
    .fluidInputs([<liquid:hydrogen> * 16000, <liquid:carbon_monoxide> * 8000])
    .fluidOutputs([<liquid:butene> * 12000, <liquid:water> * 12000])
    .duration(1200).EUt(1920).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 7}))
    .fluidInputs([<liquid:hydrogen> * 14000, <liquid:carbon_monoxide> * 8000])
    .fluidOutputs([<liquid:butadiene> * 10000, <liquid:water> * 12000])
    .duration(1200).EUt(1920).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .fluidInputs([<liquid:hydrogen> * 18000, <liquid:carbon_monoxide> * 10000])
    .fluidOutputs([<liquid:isoprene> * 13000, <liquid:water> * 15000])
    .duration(1200).EUt(1920).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 9}))
    .fluidInputs([<liquid:hydrogen> * 18000, <liquid:carbon_monoxide> * 12000])
    .fluidOutputs([<liquid:benzene> * 12000, <liquid:water> * 18000])
    .duration(1200).EUt(1920).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 10}))
    .fluidInputs([<liquid:hydrogen> * 22000, <liquid:carbon_monoxide> * 14000])
    .fluidOutputs([<liquid:toluene> * 15000, <liquid:water> * 21000])
    .duration(1200).EUt(1920).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
    .fluidInputs([<liquid:hydrogen> * 30000, <liquid:carbon_monoxide> * 18000])
    .fluidOutputs([<liquid:cumene> * 21000, <liquid:water> * 27000])
    .duration(1200).EUt(1920).buildAndRegister();
    
    

/**
* Misc. item recipes
*/
RecipeMap.getByName("chemical_reactor").findRecipe(192, [<minecraft:sugar>, <gregtech:meta_item_1:141>], [<liquid:toluene> * 133]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(24, [<gregtech:meta_item_2:32010> * 4], [<liquid:sulfuric_acid> * 250]).remove();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_2:32010> * 32])
    .fluidInputs([<liquid:nitration_mixture> * 12000])
    .outputs([<minecraft:tnt> * 8])
    .duration(200).EUt(120).buildAndRegister();
