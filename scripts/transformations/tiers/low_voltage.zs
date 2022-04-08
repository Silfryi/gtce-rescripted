import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.gregtech.recipe.RecipeMap;



/**
* Cable reworks, make brass ACTUALLY braided copper
*/
recipes.removeByRegex(".*(ass_wire_sing).*");
recipes.addShaped(<gregtech:cable:94> * 3, 
    [[null, <ore:craftingToolWrench>, null],
    [<ore:wireGtSingleCopper>, <ore:craftingToolWireCutter>, <ore:wireGtSingleCopper>],
    [null, <ore:craftingToolScrewdriver>, null]]);
var oxygen = [30, 60, 120, 240, 480] as int[];
for i in 0 to 10 {
    //Recycling
    RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:cable>.definition.makeStack(94 + (i * 1000))], null).remove();
    RecipeMap.getByName("fluid_extractor").findRecipe(32, [<gregtech:cable>.definition.makeStack(94 + (i * 1000))], null).remove();
    RecipeMap.getByName("arc_furnace").findRecipe(30, [<gregtech:cable>.definition.makeStack(94 + (i * 1000))], [<liquid:oxygen> * oxygen[i % 5]]).remove();
}
//Remove and retool wire/fine wire recipes
RecipeMap.getByName("wiremill").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(94 + 10000)], null).remove();
RecipeMap.getByName("extruder").findRecipe(48, [<gregtech:meta_item_1>.definition.makeStack(94 + 10000), <gregtech:meta_item_1:32356>], null).remove();
RecipeMap.getByName("wiremill").findRecipe(8,[<gregtech:cable>.definition.makeStack(94)], null).remove();
RecipeMap.getByName("wiremill").recipeBuilder()
    .inputs([<gregtech:meta_item_1>.definition.makeStack(94 + 10000)])
    .outputs([<gregtech:meta_item_2>.definition.makeStack(94 + 16000) * 8])
    .duration(400).EUt(8).buildAndRegister();
RecipeMap.getByName("extruder").recipeBuilder()
    .inputs([<gregtech:meta_item_1>.definition.makeStack(94 + 10000), <gregtech:meta_item_1:32356>])
    .outputs([<gregtech:meta_item_2>.definition.makeStack(94 + 16000) * 8])
    .duration(800).EUt(48).buildAndRegister();

    
    
/**
* Parts recipes redos
*/
removeAndHide(<gregtech:meta_item_1:32690>);
//Assembler
RecipeMap.getByName("assembler").findRecipe(1, [<gregtech:cable:5071>, <gregtech:meta_item_1:12091>], [<liquid:plastic> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(30, [<gregtech:meta_item_1:8203>, <gregtech:meta_item_2:32500>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:14094>], null).remove();
RecipeMap.getByName("assembler").findRecipe(30, [<gregtech:meta_item_1:8203>, <gregtech:meta_item_2:32500> * 2, <gregtech:cable:5071>, <gregtech:meta_item_1:14094> * 4, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], null).remove();
RecipeMap.getByName("assembler").findRecipe(30, [<gregtech:cable:5071> * 3, <gregtech:meta_item_1:14184> * 2, <gregtech:meta_item_1:32600> * 2, <gregtech:meta_item_1:32640>, <gregtech:meta_item_2:32495>], null).remove();
RecipeMap.getByName("assembler").findRecipe(30, [<gregtech:cable:5071> * 2, <gregtech:meta_item_1:14184> * 2, <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:12184> * 3, <gregtech:meta_item_2:17184>], null).remove();
RecipeMap.getByName("assembler").findRecipe(30, [<gregtech:cable:5071>, <gregtech:meta_item_1:32600> * 2, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:rubber> * 864]).remove();
RecipeMap.getByName("assembler").findRecipe(30, [<gregtech:cable:5071>, <gregtech:meta_item_1:17071>, <gregtech:meta_item_2:18071>, <gregtech:fluid_pipe:2095>, <gregtech:meta_item_1:32600>], [<liquid:rubber> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(30, [<gregtech:cable:5071>, <gregtech:meta_item_1:17071>, <gregtech:meta_item_2:18071>, <gregtech:fluid_pipe:2095>, <gregtech:meta_item_1:32600>], [<liquid:styrene_butadiene_rubber> * 108]).remove();
RecipeMap.getByName("assembler").findRecipe(30, [<gregtech:cable:5071>, <gregtech:meta_item_1:17071>, <gregtech:meta_item_2:18071>, <gregtech:fluid_pipe:2095>, <gregtech:meta_item_1:32600>], [<liquid:silicon_rubber> * 72]).remove();
RecipeMap.getByName("assembler").findRecipe(30, [<gregtech:cable:5071> * 2, <gregtech:meta_item_1:14184> * 2, <gregtech:meta_item_1:14298>, <gregtech:cable:18> * 4], null).remove();
RecipeMap.getByName("assembler").findRecipe(30, [<gregtech:cable:5071> * 2, <gregtech:meta_item_1:14033> * 2, <gregtech:meta_item_1:14297>, <gregtech:cable:18> * 4], null).remove();
RecipeMap.getByName("assembler").recipeBuilder()
    .inputs([<gregtech:cable:5094>, <gregtech:meta_item_2:18094>, <gregtech:fluid_pipe:2094>, <gregtech:meta_item_1:32600>])
    .fluidInputs([<liquid:rubber> * 144])
    .outputs([<gregtech:meta_item_1:32610>])
    .duration(100).EUt(7).buildAndRegister();
RecipeMap.getByName("assembler").recipeBuilder()
    .inputs([<gregtech:cable:5094>, <gregtech:meta_item_1:12091>])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<gregtech:meta_item_1:32500>])
    .duration(800).EUt(1).buildAndRegister();
//Crafting table
recipes.replaceAllOccurences(<gregtech:fluid_pipe:2095>, <gregtech:fluid_pipe:2094>, <gregtech:meta_item_1:32610>);
recipes.replaceAllOccurences(<gregtech:meta_item_1:17071>, <ore:craftingToolHardHammer>);
recipes.replaceAllOccurences(<gregtech:meta_item_1:8203>, <ore:paneGlass>);
recipes.removeByRegex(".*(pump_paper).*");
recipes.removeByRegex(".*(styrene).*");
recipes.removeByRegex(".*(pump_silicon).*");
recipes.remove(<gregtech:meta_item_1:32600>);
recipes.addShaped(<gregtech:meta_item_1:32600>, 
    [[<gregtech:cable:5094>, <gregtech:cable:18>, <gregtech:meta_item_1:14184>],
    [<gregtech:cable:18>, <gregtech:meta_item_1:14298>, <gregtech:cable:18>],
    [<gregtech:meta_item_1:12184>, <gregtech:cable:18>, <gregtech:cable:5094>]]);
    


/**
* Machine recipe redos
*/
//Recipe replacement
recipes.replaceAllOccurences(<gregtech:cable:5071>, <gregtech:cable:5094>);
recipes.replaceAllOccurences(<gregtech:cable:7071>, <gregtech:cable:7094>);
recipes.replaceAllOccurences(<gregtech:meta_item_2:18071>, <gregtech:meta_item_2:18094>);
recipes.replaceAllOccurences(<gregtech:cable:1071>, <gregtech:cable:1094>);
recipes.replaceAllOccurences(<gregtech:cable:2018>, <gregtech:cable:2109>, <gregtech:machine:70>);
recipes.replaceAllOccurences(<gregtech:cable:1018>, <gregtech:cable:1109>, <gregtech:machine:50>);
recipes.replaceAllOccurences(<gregtech:meta_item_1:32640>, <gregtech:cable:2109>, <gregtech:machine:300>);
recipes.replaceAllOccurences(<gregtech:meta_item_1:32610>, <gregtech:cable:2109>, <gregtech:machine:300>);
recipes.replaceAllOccurences(<minecraft:glass>, <gregtech:cable:2109>, <gregtech:machine:300>);
recipes.replaceAllOccurences(<gregtech:meta_item_1:12184>, <gregtech:cable:1109>, <gregtech:machine:110>);
recipes.replaceAllOccurences(<gregtech:cable:7094>, <gregtech:meta_item_1:10204>, <gregtech:machine:90>);
recipes.replaceAllOccurences(<gregtech:meta_item_1:12184>, <gregtech:cable:7094>, <gregtech:machine:90>);
recipes.replaceAllOccurences(<gregtech:cable:5094>, <gregtech:meta_item_1:32600>, <gregtech:machine:120>);
recipes.replaceAllOccurences(<gregtech:meta_item_1:32640>, <gregtech:meta_item_1:32600>, <gregtech:machine:120>);
recipes.replaceAllOccurences(<ore:craftingToolWrench>, <gregtech:meta_item_1:32600>, <gregtech:machine:120>);
recipes.replaceAllOccurences(<ore:circuitBasic>, <gregtech:cable:5094>, <gregtech:machine:120>);
recipes.replaceAllOccurences(<gregtech:fluid_pipe:2095>, <gregtech:fluid_pipe:2094>, <gregtech:machine:900>);
recipes.replaceAllOccurences(<gregtech:fluid_pipe:2095>, <gregtech:fluid_pipe:2094>, <gregtech:machine:485>);



/**
* Misc. recipes & machine casings
*/
//Hulls
recipes.remove(<gregtech:machine:501>);
RecipeMap.getByName("assembler").findRecipe(16, [<gregtech:cable:5071> * 2, <gregtech:machine_casing:1>], null).remove();
recipes.addShaped(<gregtech:machine:501>, 
    [[<ore:paper>, <ore:craftingToolKnife>, <ore:paper>],
    [<ore:paper>, <gregtech:machine_casing:1>, <ore:paper>],
    [<ore:paper>, <ore:craftingToolScrewdriver>, <ore:paper>]]);
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:machine_casing:1>])
    .fluidInputs([<liquid:rubber> * 288])
    .outputs([<gregtech:machine:501>])
    .duration(100).EUt(30).buildAndRegister();
//Misc
RecipeMap.getByName("polarizer").recipeBuilder()
    .inputs([<gregtech:meta_item_1:14184>])
    .outputs([<gregtech:meta_item_1:14298>])
    .duration(100).EUt(30).buildAndRegister();
RecipeMap.getByName("polarizer").recipeBuilder()
    .inputs([<gregtech:meta_item_1:14042>])
    .outputs([<gregtech:meta_item_1:14299>])
    .duration(100).EUt(120).buildAndRegister();
RecipeMap.getByName("lathe").recipeBuilder()
    .inputs([<gregtech:meta_item_2:16018> * 2])
    .outputs([<gregtech:cable:94>])
    .duration(100).EUt(7).buildAndRegister();
