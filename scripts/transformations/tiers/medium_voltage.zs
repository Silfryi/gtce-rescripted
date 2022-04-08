import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.gregtech.recipe.RecipeMap;

    
  
/*
* Galvanized Steel recipe removals
*/
var fluid = RecipeMap.getByName("fluid_extractor").findRecipe(32, [<gregtech:meta_item_1>.definition.makeStack(648 + 9000)], null).fluidOutputs[0].definition;
//Remove some decomposition recipes for tool parts
var oxygen = [120, 180, 60, 180, 120, 360, 120, 120, 240, 120, 240, 60, 180, 0, 240, 300] as int[];
for z in 0 to 16 {
if (z != 13) {
    removeAndHide(<gregtech:meta_item_2>.definition.makeStack(648 + (z * 1000)));
        RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_2>.definition.makeStack(648 + (z * 1000))], null).remove();
        RecipeMap.getByName("arc_furnace").findRecipe(30, [<gregtech:meta_item_2>.definition.makeStack(648 + (z * 1000))], [<liquid:oxygen> * oxygen[z]]).remove();
        RecipeMap.getByName("fluid_extractor").findRecipe(32, [<gregtech:meta_item_2>.definition.makeStack(648 + (z * 1000))], null).remove();
    }
}
//Remove special product recipes
RecipeMap.getByName("extruder").findRecipe(48, [<gregtech:meta_item_1>.definition.makeStack(648 + 10000), <gregtech:meta_item_1:32353>], null).remove();
RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(648 + 18000)], null).remove();
RecipeMap.getByName("arc_furnace").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(648 + 18000)], [<liquid:oxygen> * 15]).remove();
RecipeMap.getByName("fluid_extractor").findRecipe(32, [<gregtech:meta_item_1>.definition.makeStack(648 + 18000)], null).remove();
RecipeMap.getByName("fluid_solidifier").findRecipe(20, [<gregtech:meta_item_1:32318>], [fluid * 576]).remove();
RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_2>.definition.makeStack(648 + 18000)], null).remove();
RecipeMap.getByName("arc_furnace").findRecipe(30, [<gregtech:meta_item_2>.definition.makeStack(648 + 18000)], [<liquid:oxygen> * 240]).remove();
RecipeMap.getByName("fluid_extractor").findRecipe(32, [<gregtech:meta_item_2>.definition.makeStack(648 + 18000)], null).remove();
RecipeMap.getByName("fluid_solidifier").findRecipe(8, [<gregtech:meta_item_1:32317>], [fluid * 144]).remove();
RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_2>.definition.makeStack(648 + 17000)], null).remove();
RecipeMap.getByName("arc_furnace").findRecipe(30, [<gregtech:meta_item_2>.definition.makeStack(648 + 17000)], [<liquid:oxygen> * 60]).remove();
RecipeMap.getByName("fluid_extractor").findRecipe(32, [<gregtech:meta_item_2>.definition.makeStack(648 + 17000)], null).remove();
RecipeMap.getByName("extruder").findRecipe(64, [<gregtech:meta_item_1>.definition.makeStack(648 + 10000) * 4, <gregtech:meta_item_1:32372>], null).remove();
RecipeMap.getByName("alloy_smelter").findRecipe(16, [<gregtech:meta_item_1>.definition.makeStack(648 + 10000) * 8, <gregtech:meta_item_1:32303>], null).remove();
RecipeMap.getByName("fluid_solidifier").findRecipe(8, [<gregtech:meta_item_1:32303>], [fluid * 576]).remove();
RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_2>.definition.makeStack(648 + 26000)], null).remove();
RecipeMap.getByName("arc_furnace").findRecipe(30, [<gregtech:meta_item_2>.definition.makeStack(648 + 26000)], [<liquid:oxygen> * 240]).remove();
RecipeMap.getByName("fluid_extractor").findRecipe(32, [<gregtech:meta_item_2>.definition.makeStack(648 + 26000)], null).remove();
RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:frame_galvanized_steel>], null).remove();
RecipeMap.getByName("arc_furnace").findRecipe(30, [<gregtech:frame_galvanized_steel>], [<liquid:oxygen> * 82]).remove();
RecipeMap.getByName("fluid_extractor").findRecipe(32, [<gregtech:frame_galvanized_steel>], null).remove();
recipes.removeByRegex(".*(stick_galvanized_steel).*");
//Remove rod product recipes
RecipeMap.getByName("extruder").findRecipe(48, [<gregtech:meta_item_1>.definition.makeStack(648 + 10000), <gregtech:meta_item_1:32351>], null).remove();
RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(648 + 14000)], null).remove();
RecipeMap.getByName("arc_furnace").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(648 + 14000)], [<liquid:oxygen> * 30]).remove();
RecipeMap.getByName("fluid_extractor").findRecipe(32, [<gregtech:meta_item_1>.definition.makeStack(648 + 14000)], null).remove();
RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_2>.definition.makeStack(648 + 19000)], null).remove();
RecipeMap.getByName("arc_furnace").findRecipe(30, [<gregtech:meta_item_2>.definition.makeStack(648 + 19000)], [<liquid:oxygen> * 60]).remove();
RecipeMap.getByName("fluid_extractor").findRecipe(32, [<gregtech:meta_item_2>.definition.makeStack(648 + 19000)], null).remove();
//Bolt
RecipeMap.getByName("extruder").findRecipe(120, [<gregtech:meta_item_1>.definition.makeStack(648 + 10000), <gregtech:meta_item_1:32352>], null).remove();
RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(648 + 16000)], null).remove();
RecipeMap.getByName("arc_furnace").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(648 + 16000)], [<liquid:oxygen> * 7]).remove();
RecipeMap.getByName("fluid_extractor").findRecipe(32, [<gregtech:meta_item_1>.definition.makeStack(648 + 16000)], null).remove();
//Screw
RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(648 + 17000)], null).remove();
RecipeMap.getByName("arc_furnace").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(648 + 17000)], [<liquid:oxygen> * 7]).remove();
RecipeMap.getByName("fluid_extractor").findRecipe(32, [<gregtech:meta_item_1>.definition.makeStack(648 + 17000)], null).remove();
//Hide ingot/etc in JEI
recipes.remove(<gregtech:meta_item_1>.definition.makeStack(648 + 9000));
recipes.remove(<gregtech:meta_item_1>.definition.makeStack(648 + 10000));
recipes.remove(<gregtech:meta_item_1>.definition.makeStack(648 + 12000));
//Remove smelting recipes for ingots & nuggets
furnace.remove(<gregtech:meta_item_1>.definition.makeStack(648 + 10000));
furnace.remove(<gregtech:meta_item_1>.definition.makeStack(648 + 9000));
//Remove maceration recipes for ingot-type components
RecipeMap.getByName("macerator").findRecipe(32, [<gregtech:meta_item_1>.definition.makeStack(648 + 9000)], null).remove();
RecipeMap.getByName("macerator").findRecipe(32, [<gregtech:meta_item_1>.definition.makeStack(648 + 10000)], null).remove();
RecipeMap.getByName("macerator").findRecipe(32, [<gregtech:meta_item_1>.definition.makeStack(648 + 12000)], null).remove();
//Remove block recipes
RecipeMap.getByName("unpacker").findRecipe(8, [<gregtech:meta_block_compressed_40:8>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], null).remove();
RecipeMap.getByName("alloy_smelter").findRecipe(32, [<gregtech:meta_item_1>.definition.makeStack(648 + 10000) * 9, <gregtech:meta_item_1:32308>], null).remove();
RecipeMap.getByName("extruder").findRecipe(64, [<gregtech:meta_item_1>.definition.makeStack(648 + 10000) * 9, <gregtech:meta_item_1:32363>], null).remove();
//Remove melting & forming recipes
RecipeMap.getByName("fluid_extractor").findRecipe(32, [<gregtech:meta_item_1>.definition.makeStack(648 + 9000)], null).remove();
RecipeMap.getByName("fluid_extractor").findRecipe(32, [<gregtech:meta_item_1>.definition.makeStack(648 + 10000)], null).remove();
RecipeMap.getByName("fluid_extractor").findRecipe(32, [<gregtech:meta_block_compressed_40:8>], null).remove();
RecipeMap.getByName("fluid_extractor").findRecipe(32, [<gregtech:meta_item_1>.definition.makeStack(648 + 12000)], null).remove();
RecipeMap.getByName("fluid_solidifier").findRecipe(8, [<gregtech:meta_item_1:32309>], [fluid * 144]).remove();
RecipeMap.getByName("fluid_solidifier").findRecipe(8, [<gregtech:meta_item_1:32306>], [fluid * 144]).remove();
RecipeMap.getByName("fluid_solidifier").findRecipe(8, [<gregtech:meta_item_1:32308>], [fluid * 1296]).remove();
RecipeMap.getByName("fluid_solidifier").findRecipe(8, [<gregtech:meta_item_1:32301>], [fluid * 144]).remove();
//Remove pack/unpack recipes
RecipeMap.getByName("unpacker").findRecipe(12, [<gregtech:meta_item_1>.definition.makeStack(648 + 10000), <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], null).remove();
RecipeMap.getByName("unpacker").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(648 + 10000), <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], null).remove();
RecipeMap.getByName("packer").findRecipe(12, [<gregtech:meta_item_1>.definition.makeStack(648 + 9000) * 9, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], null).remove();
RecipeMap.getByName("packer").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(648 + 9000) * 9, <gtadditions:ga_meta_item:32133>], null).remove();
//Arc furnacing of plates
RecipeMap.getByName("arc_furnace").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(648 + 12000)], [<liquid:oxygen> * 60]).remove();
//Remove platemaking recipes
RecipeMap.getByName("alloy_smelter").findRecipe(16, [<gregtech:meta_item_1>.definition.makeStack(648 + 10000) * 2, <gregtech:meta_item_1:32301>], null).remove();
RecipeMap.getByName("extruder").findRecipe(64, [<gregtech:meta_item_1>.definition.makeStack(648 + 10000), <gregtech:meta_item_1:32350>], null).remove();
RecipeMap.getByName("metal_bender").findRecipe(24, [<gregtech:meta_item_1>.definition.makeStack(648 + 10000), <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
RecipeMap.getByName("forge_hammer").findRecipe(16, [<gregtech:meta_item_1>.definition.makeStack(648 + 10000) * 3], null).remove();
RecipeMap.getByName("cutting_saw").findRecipe(30, [<gregtech:meta_block_compressed_40:8>], [<liquid:water> * 42]).remove();
RecipeMap.getByName("cutting_saw").findRecipe(30, [<gregtech:meta_block_compressed_40:8>], [<liquid:distilled_water> * 31]).remove();
RecipeMap.getByName("cutting_saw").findRecipe(30, [<gregtech:meta_block_compressed_40:8>], [<liquid:lubricant> * 10]).remove();
removeAndHide(<gregtech:meta_item_1>.definition.makeStack(648));
removeAndHide(<gregtech:meta_item_1>.definition.makeStack(648 + 1000));
removeAndHide(<gregtech:meta_item_1>.definition.makeStack(648 + 2000));
//Remove recipes for tiny and small dusts
RecipeMap.getByName("unpacker").findRecipe(12, [<gregtech:meta_item_1>.definition.makeStack(648 + 2000), <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], null).remove();
RecipeMap.getByName("unpacker").findRecipe(12, [<gregtech:meta_item_1>.definition.makeStack(648 + 2000), <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], null).remove();
//Remove recipes for packing dust
RecipeMap.getByName("packer").findRecipe(12, [<gregtech:meta_item_1>.definition.makeStack(648) * 9, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], null).remove();
RecipeMap.getByName("packer").findRecipe(12, [<gregtech:meta_item_1>.definition.makeStack(648 + 1000) * 4, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], null).remove();
RecipeMap.getByName("packer").findRecipe(12, [<gregtech:meta_item_1>.definition.makeStack(648) * 9, <gtadditions:ga_meta_item:32134>], null).remove();
RecipeMap.getByName("packer").findRecipe(12, [<gregtech:meta_item_1>.definition.makeStack(648 + 1000) * 4, <gtadditions:ga_meta_item:32134>], null).remove();



/**
* Galvanized Steel galvanization recipes
*/
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_1:9184>])
    .fluidInputs([<liquid:zinc> * 2])
    .outputs([<gregtech:meta_item_1:9648>])
    .duration(50).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_1:10184>])
    .fluidInputs([<liquid:zinc> * 16])
    .outputs([<gregtech:meta_item_1:10648>])
    .duration(400).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_1:12184>])
    .fluidInputs([<liquid:zinc> * 16])
    .outputs([<gregtech:meta_item_1:12648>])
    .duration(400).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_1:14184>])
    .fluidInputs([<liquid:zinc> * 8])
    .outputs([<gregtech:meta_item_1:14648>])
    .duration(200).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_1:16184>])
    .fluidInputs([<liquid:zinc> * 2])
    .outputs([<gregtech:meta_item_1:16648>])
    .duration(50).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_1:17184>])
    .fluidInputs([<liquid:zinc> * 2])
    .outputs([<gregtech:meta_item_1:17648>])
    .duration(50).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_1:18184>])
    .fluidInputs([<liquid:zinc> * 4])
    .outputs([<gregtech:meta_item_1:18648>])
    .duration(100).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_2:17184>])
    .fluidInputs([<liquid:zinc> * 16])
    .outputs([<gregtech:meta_item_2:17648>])
    .duration(400).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_2:18184>])
    .fluidInputs([<liquid:zinc> * 70])
    .outputs([<gregtech:meta_item_2:18648>])
    .duration(1750).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_2:19184>])
    .fluidInputs([<liquid:zinc> * 16])
    .outputs([<gregtech:meta_item_2:19648>])
    .duration(400).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_2:26184>])
    .fluidInputs([<liquid:zinc> * 64])
    .outputs([<gregtech:meta_item_2:26648>])
    .duration(1600).EUt(30).buildAndRegister();
    
    

/**
* Parts recipes redos
*/
removeAndHide(<gregtech:meta_item_1:32691>);
//Assembler
RecipeMap.getByName("assembler").findRecipe(120, [<minecraft:quartz>, <gregtech:meta_item_2:32490>, <gregtech:meta_item_1:12001>, <gregtech:meta_item_1:14112>], null).remove();
RecipeMap.getByName("assembler").findRecipe(120, [<minecraft:quartz>, <gregtech:meta_item_2:32490> * 2, <gregtech:cable:5018>, <gregtech:meta_item_1:14112> * 4, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], null).remove();
RecipeMap.getByName("assembler").findRecipe(120, [<gregtech:cable:5018> * 3, <gregtech:meta_item_1:14001> * 2, <gregtech:meta_item_1:32601> * 2, <gregtech:meta_item_1:32641>, <gregtech:meta_item_2:32490>], null).remove();
RecipeMap.getByName("assembler").findRecipe(120, [<gregtech:cable:5018> * 2, <gregtech:meta_item_1:14001> * 2, <gregtech:meta_item_1:32601>, <gregtech:meta_item_1:12001> * 3, <gregtech:meta_item_2:17001>], null).remove();
RecipeMap.getByName("assembler").findRecipe(120, [<gregtech:cable:5018>, <gregtech:meta_item_1:32601> * 2, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:rubber> * 864]).remove();
RecipeMap.getByName("assembler").findRecipe(120, [<gregtech:cable:5018>, <gregtech:meta_item_1:17095>, <gregtech:meta_item_2:18095>, <gregtech:fluid_pipe:2184>, <gregtech:meta_item_1:32601>], [<liquid:rubber> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(120, [<gregtech:cable:5018>, <gregtech:meta_item_1:17095>, <gregtech:meta_item_2:18095>, <gregtech:fluid_pipe:2184>, <gregtech:meta_item_1:32601>], [<liquid:styrene_butadiene_rubber> * 108]).remove();
RecipeMap.getByName("assembler").findRecipe(120, [<gregtech:cable:5018>, <gregtech:meta_item_1:17095>, <gregtech:meta_item_2:18095>, <gregtech:fluid_pipe:2184>, <gregtech:meta_item_1:32601>], [<liquid:silicon_rubber> * 72]).remove();
RecipeMap.getByName("assembler").findRecipe(120, [<gregtech:cable:5018> * 2, <gregtech:meta_item_1:14001> * 2, <gregtech:meta_item_1:14298>, <gregtech:cable:1018> * 4], null).remove();
RecipeMap.getByName("assembler").recipeBuilder()
    .inputs([<gregtech:cable:5018>, <gregtech:meta_item_2:18094>, <gregtech:fluid_pipe:2649>, <gregtech:meta_item_1:32601>])
    .fluidInputs([<liquid:rubber> * 144])
    .outputs([<gregtech:meta_item_1:32610>])
    .duration(100).EUt(30).buildAndRegister();
//Crafting table
recipes.replaceAllOccurences(<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12648>, <gregtech:meta_item_1:32641>);
recipes.replaceAllOccurences(<gregtech:meta_item_1:14001>, <gregtech:meta_item_1:14648>, <gregtech:meta_item_1:32641>);
recipes.replaceAllOccurences(<gregtech:meta_item_1:14001>, <gregtech:meta_item_1:14648>, <gregtech:meta_item_1:32651>);
recipes.replaceAllOccurences(<gregtech:meta_item_2:17001>, <gregtech:meta_item_2:17648>);
recipes.replaceAllOccurences(<gregtech:fluid_pipe:2184>, <gregtech:fluid_pipe:2649>, <gregtech:meta_item_1:32611>);
recipes.replaceAllOccurences(<gregtech:meta_item_1:17095>, <ore:craftingToolHardHammer>);
recipes.remove(<gregtech:meta_item_1:32601>);
recipes.addShaped(<gregtech:meta_item_1:32601>, 
    [[<gregtech:cable:5018>, <gregtech:cable:1018>, <gregtech:meta_item_1:14648>],
    [<gregtech:cable:1018>, <gregtech:meta_item_1:14298>, <gregtech:cable:1018>],
    [<gregtech:meta_item_1:12648>, <gregtech:cable:1018>, <gregtech:cable:5018>]]);



/**
* Machine recipe redos
*/
//Recipe replacement
recipes.replaceAllOccurences(<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12648>, <gregtech:machine>.anyDamage());
recipes.replaceAllOccurences(<gregtech:meta_item_2:26001>, <gregtech:meta_item_2:26648>);
recipes.replaceAllOccurences(<gregtech:meta_item_2:18095>, <gregtech:meta_item_2:18649>);
recipes.replaceAllOccurences(<gregtech:meta_item_1:32641>, <gregtech:cable:2109>, <gregtech:machine:301>);
recipes.replaceAllOccurences(<gregtech:meta_item_1:32611>, <gregtech:cable:2109>, <gregtech:machine:301>);
recipes.replaceAllOccurences(<minecraft:glass>, <gregtech:cable:2109>, <gregtech:machine:301>);
recipes.replaceAllOccurences(<gregtech:meta_item_1:12001>, <gregtech:cable:1109>, <gregtech:machine:111>);
recipes.replaceAllOccurences(<gregtech:cable:7018>, <gregtech:meta_item_1:10204>, <gregtech:machine:91>);
recipes.replaceAllOccurences(<gregtech:meta_item_1:12001>, <gregtech:cable:7018>, <gregtech:machine:91>);
recipes.replaceAllOccurences(<gregtech:cable:5018>, <gregtech:meta_item_1:32601>, <gregtech:machine:121>);
recipes.replaceAllOccurences(<gregtech:meta_item_1:32641>, <gregtech:meta_item_1:32601>, <gregtech:machine:121>);
recipes.replaceAllOccurences(<ore:craftingToolWrench>, <gregtech:meta_item_1:32601>, <gregtech:machine:121>);
recipes.replaceAllOccurences(<ore:circuitBasic>, <gregtech:cable:5018>, <gregtech:machine:121>);
recipes.replaceAllOccurences(<gregtech:fluid_pipe:2184>, <gregtech:fluid_pipe:2649>, <gregtech:machine:910>);
recipes.replaceAllOccurences(<gregtech:fluid_pipe:2184>, <gregtech:fluid_pipe:2649>, <gregtech:machine:486>);
recipes.remove(<gregtech:machine:271>);
recipes.addShaped(<gregtech:machine:271>,
    [[<gregtech:cable:2109>, <gregtech:cable:2109>, <ore:circuitGood>],
    [<gregtech:meta_item_1:32641>, <gregtech:machine:502>, <gregtech:fluid_pipe:1184>],
    [<gregtech:cable:2109>, <gregtech:cable:2109>, <ore:circuitGood>]]);



/**
* Machine casings
*/
//Hulls
recipes.remove(<gregtech:machine:502>);
RecipeMap.getByName("assembler").findRecipe(16, [<gregtech:cable:5087> * 2, <gregtech:machine_casing:2>], null).remove();
RecipeMap.getByName("assembler").findRecipe(16, [<gregtech:cable:5018> * 2, <gregtech:machine_casing:2>], null).remove();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:machine_casing:2>])
    .fluidInputs([<liquid:plastic> * 288])
    .outputs([<gregtech:machine:502>])
    .duration(100).EUt(30).buildAndRegister();
//Casing
recipes.replaceAllOccurences(<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12648>, <gregtech:machine_casing:2>);
RecipeMap.getByName("assembler").findRecipe(16, [<gregtech:meta_item_1:12001> * 8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
RecipeMap.getByName("assembler").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .inputs([<gregtech:meta_item_1:12648> * 8])
    .outputs([<gregtech:machine_casing:2>])
    .duration(50).EUt(16).buildAndRegister();
