import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.gregtech.recipe.RecipeMap;



print("Changing recipes using disabled materials to using their enabled substituions");

//Add table brass recipes for bronze (disabled) items
recipes.remove(<gregtech:machine:2208>);
recipes.remove(<gregtech:machine:2196>);
recipes.remove(<gregtech:machine:3>);
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
recipes.addShaped(<gregtech:machine:3>,
    [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
    [<ore:plateSilver>, <gregtech:fluid_pipe:1094>, <ore:plateSilver>],
    [<gregtech:fluid_pipe:1094>, <gregtech:machine_casing:13>, <gregtech:fluid_pipe:1094>]]);
    
//Lava makes nuggets correctly
RecipeMap.getByName("centrifuge").findRecipe(80, null, [<liquid:lava> * 100]).remove();
RecipeMap.getByName("centrifuge").recipeBuilder()
    .fluidInputs([<liquid:lava> * 1000])
    .chancedOutput(<gregtech:meta_item_1:9066>, 2500, 900)
    .chancedOutput(<minecraft:gold_nugget>, 2500, 800)
    .chancedOutput(<gregtech:meta_item_1:74>, 2500, 700)
    .chancedOutput(<gregtech:meta_item_1:9062>, 2500, 800)
    .chancedOutput(<gregtech:meta_item_1:9079> * 2, 5000, 2700)
    .chancedOutput(<gregtech:meta_item_1:9018> * 4, 5000, 3200)
    .duration(600).EUt(120).buildAndRegister();
    
//Spray cans don't use tin, but instead brass
RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_1:32402>], null).remove();
RecipeMap.getByName("arc_furnace").findRecipe(30, [<gregtech:meta_item_1:32402>], [<liquid:oxygen> * 120]).remove();
RecipeMap.getByName("fluid_extractor").findRecipe(32, [<gregtech:meta_item_1:32402>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<ore:plateTin>.firstItem * 2, <minecraft:redstone>], null).remove();
RecipeMap.getByName("assembler").recipeBuilder()
    .inputs([<ore:plateBrass>.firstItem * 2, <ore:ringBrass>.firstItem])
    .outputs([<gregtech:meta_item_1:32402>])
    .duration(50).EUt(16).buildAndRegister();
    
//Reinforced glass no longer uses advanced alloy
RecipeMap.getByName("alloy_smelter").findRecipe(4, [<gregtech:meta_item_2:32433>, <ore:dustGlass>.firstItem * 3], null).remove();
RecipeMap.getByName("alloy_smelter").findRecipe(4, [<gregtech:meta_item_2:32433>, <minecraft:glass> * 3], null).remove();
RecipeMap.getByName("alloy_smelter").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2364> * 12, <gregtech:meta_item_1:2154> * 4])
    .outputs([<gtadditions:ga_transparent_casing> * 4])
    .duration(400).EUt(480).buildAndRegister();

//Quantum <X> now use UU-Matter instead of plutonium like they did before
RecipeMap.getByName("chemical_bath").findRecipe(384, [<minecraft:ender_eye>], [<liquid:plutonium> * 288]).remove();
RecipeMap.getByName("chemical_bath").findRecipe(384, [<minecraft:nether_star>], [<liquid:plutonium> * 1152]).remove();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<minecraft:ender_eye>])
    .fluidInputs([<liquid:uumatter> * 1000])
    .outputs([<gregtech:meta_item_1:32724>])
    .duration(480).EUt(480).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<minecraft:nether_star>])
    .fluidInputs([<liquid:uumatter> * 4000])
    .outputs([<gregtech:meta_item_1:32725>])
    .duration(1920).EUt(1920).buildAndRegister();
            
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

//Brewery no longer uses fruit juice, plantballs, OR honey, none of which are obtainable
for recipe in RecipeMap.getByName("brewer").recipes {
    recipe.remove();
}
RecipeMap.getByName("brewer").recipeBuilder()
    .inputs([<minecraft:sugar> * 10])
    .fluidInputs([<liquid:water> * 200])
    .fluidOutputs(<liquid:biomass> * 400)
    .duration(1600).EUt(3).buildAndRegister();
RecipeMap.getByName("brewer").recipeBuilder()
    .inputs([<minecraft:beetroot> * 10])
    .fluidInputs([<liquid:water> * 200])
    .fluidOutputs(<liquid:biomass> * 350)
    .duration(1600).EUt(3).buildAndRegister();
RecipeMap.getByName("brewer").recipeBuilder()
    .inputs([<minecraft:reeds> * 10])
    .fluidInputs([<liquid:water> * 200])
    .fluidOutputs(<liquid:biomass> * 300)
    .duration(1600).EUt(3).buildAndRegister();
RecipeMap.getByName("brewer").recipeBuilder()
    .inputs([<minecraft:melon> * 10])
    .fluidInputs([<liquid:water> * 200])
    .fluidOutputs(<liquid:biomass> * 300)
    .duration(1600).EUt(3).buildAndRegister();
RecipeMap.getByName("brewer").recipeBuilder()
    .inputs([<minecraft:pumpkin> * 2])
    .fluidInputs([<liquid:water> * 200])
    .fluidOutputs(<liquid:biomass> * 300)
    .duration(1600).EUt(3).buildAndRegister();
RecipeMap.getByName("brewer").recipeBuilder()
    .inputs([<minecraft:potato> * 10])
    .fluidInputs([<liquid:water> * 200])
    .fluidOutputs(<liquid:biomass> * 300)
    .duration(1600).EUt(3).buildAndRegister();
RecipeMap.getByName("brewer").recipeBuilder()
    .inputs([<minecraft:carrot> * 10])
    .fluidInputs([<liquid:water> * 200])
    .fluidOutputs(<liquid:biomass> * 250)
    .duration(1600).EUt(3).buildAndRegister();
RecipeMap.getByName("brewer").recipeBuilder()
    .inputs([<minecraft:rotten_flesh> * 10])
    .fluidInputs([<liquid:water> * 200])
    .fluidOutputs(<liquid:biomass> * 200)
    .duration(1600).EUt(3).buildAndRegister();
RecipeMap.getByName("brewer").recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>)
    .fluidInputs([<liquid:biomass> * 200])
    .fluidOutputs(<liquid:fermented_biomass> * 200)
    .duration(1600).EUt(3).buildAndRegister();

//Forge hammer makes wooden planks
RecipeMap.getByName("forge_hammer").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2196> * 2])
    .outputs([<gregtech:meta_item_1:12196>])
    .duration(160).EUt(7).buildAndRegister();

//Battery changes - remove lithium, sodium -> lead-acid, add battery recipes to NOT the canning machine (goodbye)
removeAndHide(<gregtech:meta_item_1:32518>);
removeAndHide(<gregtech:meta_item_1:32528>);
removeAndHide(<gregtech:meta_item_1:32538>);
RecipeMap.getByName("extractor").findRecipe(2, [<gregtech:meta_item_1:32518>], null).remove();
RecipeMap.getByName("extractor").findRecipe(2, [<gregtech:meta_item_1:32528>], null).remove();
RecipeMap.getByName("extractor").findRecipe(2, [<gregtech:meta_item_1:32538>], null).remove();
RecipeMap.getByName("packer").recipeBuilder()
    .inputs([<gregtech:meta_item_1:19035> * 4, <gregtech:meta_item_1:32510>.withTag({Charge: 18000 as long})])
    .outputs([<gregtech:meta_item_1:32519>])
    .duration(400).EUt(2).buildAndRegister();
RecipeMap.getByName("packer").recipeBuilder()
    .inputs([<gregtech:meta_item_1:19035> * 16, <gregtech:meta_item_1:32520>.withTag({Charge: 72000 as long})])
    .outputs([<gregtech:meta_item_1:32529>])
    .duration(400).EUt(2).buildAndRegister();
RecipeMap.getByName("packer").recipeBuilder()
    .inputs([<gregtech:meta_item_1:19035> * 32, <gregtech:meta_item_1:32530>.withTag({Charge: 288000 as long})])
    .outputs([<gregtech:meta_item_1:32539>])
    .duration(400).EUt(2).buildAndRegister();
RecipeMap.getByName("packer").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2013> * 2, <gregtech:meta_item_1:32500>])
    .outputs([<gregtech:meta_item_1:32517>])
    .duration(400).EUt(2).buildAndRegister();
RecipeMap.getByName("packer").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2013> * 8, <gregtech:meta_item_1:32501>])
    .outputs([<gregtech:meta_item_1:32527>])
    .duration(400).EUt(2).buildAndRegister();
RecipeMap.getByName("packer").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2013> * 16, <gregtech:meta_item_1:32502>])
    .outputs([<gregtech:meta_item_1:32537>])
    .duration(400).EUt(2).buildAndRegister();

    
