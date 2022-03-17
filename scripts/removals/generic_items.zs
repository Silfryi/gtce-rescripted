import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.gregtech.recipe.RecipeMap;



print("Removing unused generic items from GT and other mods");

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

//Remove gem turbine blades from JEI, as they're completely nonproducible and wouldn't be good in a turbine anyway

//Remove random items from SoG and GTCE that are uncraftable or useless
removeAndHide(<gregtech:crusher_blade>);
removeAndHide(<gregtech:machine:826>);
removeAndHide(<gtadditions:ga_meta_tool>.anyDamage());
removeAndHide(<gtadditions:ga_meta_item:32023>);
removeAndHide(<gregtech:meta_item_1:32000>);
removeAndHide(<gregtech:meta_item_1:32001>);
removeAndHide(<gregtech:meta_item_1:32002>);
removeAndHide(<gregtech:meta_item_1:32003>);
removeAndHide(<gregtech:meta_item_1:32004>);
removeAndHide(<gregtech:meta_item_1:32005>);
removeAndHide(<gregtech:meta_item_1:32006>);
removeAndHide(<gregtech:meta_item_1:32007>);
removeAndHide(<gregtech:meta_item_1:32009>);
RecipeMap.getByName("forming_press").findRecipe(16, [<gregtech:meta_item_1:12109>, <gregtech:meta_item_1:32304>], null).remove();
RecipeMap.getByName("forming_press").findRecipe(16, [<gregtech:meta_item_1:12094>, <gregtech:meta_item_1:32304>], null).remove();

//Any removals from other mods
removeAndHide(<theoneprobe:probenote>);
removeAndHide(<theoneprobe:iron_helmet_probe>);
removeAndHide(<theoneprobe:gold_helmet_probe>);
removeAndHide(<theoneprobe:diamond_helmet_probe>);
removeAndHide(<theoneprobe:probe>);
removeAndHide(<theoneprobe:creativeprobe>);
removeAndHide(<flourishingfoliage:leaves_repairing>);
removeAndHide(<wumpleutil:repairing_block>);
