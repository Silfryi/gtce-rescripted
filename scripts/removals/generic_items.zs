import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.gregtech.recipe.RecipeMap;



//Remove useless rounds, they do absolutely nothing
removeAndHide(<gtadditions:ga_meta_item:2001>);
removeAndHide(<gtadditions:ga_meta_item:2043>);
removeAndHide(<gtadditions:ga_meta_item:2072>);
removeAndHide(<gtadditions:ga_meta_item:2094>);
removeAndHide(<gtadditions:ga_meta_item:2183>);
removeAndHide(<gtadditions:ga_meta_item:2184>);
removeAndHide(<gtadditions:ga_meta_item:2235>);
removeAndHide(<gtadditions:ga_meta_item:2298>);
removeAndHide(<gtadditions:ga_meta_item:2302>);
removeAndHide(<gtadditions:ga_meta_item:2303>);
removeAndHide(<gtadditions:ga_meta_item:2972>);
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9001)], null).remove();
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9043)], null).remove();
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9072)], null).remove();
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9094)], null).remove();
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9183)], null).remove();
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9184)], null).remove();
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9235)], null).remove();
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9298)], null).remove();
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9302)], null).remove();
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9303)], null).remove();
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9972)], null).remove();
