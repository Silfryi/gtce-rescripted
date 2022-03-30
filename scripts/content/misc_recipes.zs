import crafttweaker.item.IItemStack;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.gregtech.recipe.RecipeMap;



/**
* Fertilizer crafting from various otherwise-useless dusts
*/
recipes.addShapeless(<minecraft:dye:15>, [<gregtech:meta_item_1:2239> | <gregtech:meta_item_1:2226> | <gregtech:meta_item_1:2287>]);
recipes.addShapeless(<minecraft:dye:15> * 4, [<gregtech:meta_item_1:2239> * 3 | <gregtech:meta_item_1:2226> * 3, <gregtech:meta_item_1:2156>]);
recipes.addShapeless(<minecraft:dye:15> * 4, [<gregtech:meta_item_1:2239> * 2 | <gregtech:meta_item_1:2226> * 2, <gregtech:meta_item_1:2287>, <gregtech:meta_item_1:2156>]);
RecipeMap.getByName("mixer").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2239> * 3 | <gregtech:meta_item_1:2226> * 3, <gregtech:meta_item_1:2156>])
    .fluidInputs([<liquid:water> * 1000])
    .outputs([<minecraft:dye:15> * 6])
    .duration(240).EUt(30).buildAndRegister();
RecipeMap.getByName("mixer").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2239> * 2 | <gregtech:meta_item_1:2226> * 2, <gregtech:meta_item_1:2287>, <gregtech:meta_item_1:2156>])
    .fluidInputs([<liquid:water> * 1000, <liquid:ammonia> * 250])
    .outputs([<minecraft:dye:15> * 12])
    .duration(160).EUt(30).buildAndRegister();
