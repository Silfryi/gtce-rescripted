import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hideCategory;
import mods.gregtech.recipe.RecipeMap;
import scripts.removals.common.removeCable;
import scripts.removals.common.removeDust;
import scripts.removals.common.removeBasicIngot;
import scripts.removals.common.removeRodIngot;
import scripts.removals.common.removeAdvancedIngot;
import scripts.removals.common.removeTool;



/**
* Remove utterly useless materials - none of these have ANY use whether it is one we want or not
*/
//Remove nonmetal useless dusts
removeDust(88, 18, 140, 136, false, false, false, true, null);
removeDust(210, 3, 270, 276, false, false, false, true, null);
removeDust(221, 10, 366, 374, false, false, false, true, null);
removeDust(248, 4, 269, 258, false, false, false, true, null);
removeDust(253, 1, 140, 136, false, false, false, true, null);
removeDust(254, 8, 196, 232, false, false, false, true, null);
removeDust(266, 2, 634, 650, false, false, false, true, null);
removeDust(268, 2, 7502, 7746, false, false, false, true, null);
removeDust(273, 22, 308, 348, false, false, false, true, null);
removeDust(276, 21, 193, 192, false, false, false, true, null);
removeDust(277, 29, 324, 326, false, false, false, true, null);
removeDust(279, 21, 197, 188, false, false, false, true, null);
removeDust(283, 17, 170, 150, false, false, false, true, null);
removeDust(284, 19, 198, 199, false, false, false, true, null);
removeDust(285, 14, 114, 109, false, false, false, true, null);
removeDust(288, 26, 204, 199, false, false, false, true, null);
removeDust(290, 5, 58, 58, false, false, false, true, null);
removeDust(291, 0, 1442, 1386, false, false, false, false, null);
removeDust(292, 8, 80, 80, false, false, false, true, null);
removeDust(293, 17, 130, 126, false, false, false, true, null);

//Remove basic metals - ingot/plate/etc but not much else
removeBasicIngot(2, 95, 150, false, false, false, [], null);
removeBasicIngot(10, 55, 77, false, false, false, [], null);
removeBasicIngot(20, 66, 96, true, false, false, [], null);
removeBasicIngot(21, 68, 99, true, true, true, [125, 94, 31], null);
removeBasicIngot(24, 64, 93, true, false, false, [], null);
removeBasicIngot(27, 67, 97, true, false, false, [], null);
removeBasicIngot(55, 59, 81, true, false, true, [105, 78, 26], null);
removeBasicIngot(56, 61, 83, true, false, true, [108, 81, 27], null);
removeBasicIngot(58, 37, 48, false, false, true, [63, 47, 15], null);
removeBasicIngot(59, 62, 88, true, false, true, [112, 84, 28], null);
removeBasicIngot(60, 21, 24, true, true, true, [33, 25, 8], null);
removeBasicIngot(64, 38, 49, false, false, true, [65, 49, 16], null);
removeBasicIngot(67, 52, 75, false, false, true, [95, 71, 28], null);
removeBasicIngot(68, 65, 93, true, false, true, [118, 89, 29], null);
removeBasicIngot(70, 69, 99, true, true, true, [126, 94, 31], null);
removeBasicIngot(353, 70, 103, true, false, true, [129, 97, 32], null);

/**
* Remove otherwise useful but worthless to us materials - some of these may have MANY uses but metals go because they're too bloat-y or I just dislike them on principle (looking at you, tin)
*/
//Hide Forge Filled Bucket to make buckets not shown
removeAndHide(<forge:bucketfilled>.anyDamage());

//Bismuth, Bismuth Bronze, & Black Bronze
removeBasicIngot(8, 83, 125, false, false, false, [], <gregtech:ore_bismuth_0>);
recipes.removeByRegex(".*(bismuth_bronze).*");
removeTool(230, 200, 262, true, false, [69, 51, 17], null, [4, 3, 1, 4, 3, 1], [false, false, true, true, false, true, false]);
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:94> * 4, <gregtech:meta_item_1:8>], null).remove();
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:1094> * 4, <gregtech:meta_item_1:1008>], null).remove();
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:2094> * 4, <gregtech:meta_item_1:2008>], null).remove();
RecipeMap.getByName("centrifuge").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(230 + 2000) * 5], null).remove();
recipes.removeByRegex(".*(black_bronze).*");
removeTool(229, 213, 279, true, true, [73, 55, 18], null, [4, 3, 1, 4, 3, 1], [false, false, true, true, false, true, false], false);
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:18> * 3, <gregtech:meta_item_1:112> * 2], null).remove();
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:1018> * 3, <gregtech:meta_item_1:1112> * 2], null).remove();
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:2018> * 3, <gregtech:meta_item_1:2112> * 2], null).remove();
RecipeMap.getByName("centrifuge").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(229 + 2000) * 5], null).remove();

//Tin, Tin Alloys, Cassierite, Cassiterite Sand
//Bronze
removeTool(95, 137, 170, false, false, [57, 42, 14], null, [4, 3, 1, 4, 3, 1], [true, true, true, true, false, true, false], false, <gregtech:frame_bronze>);
RecipeMap.getByName("centrifuge").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(95 + 2000) * 4], null).remove();
//Tin, Tin Alloy, & Cassiterites
removeDust(98, 3, 66, 84, false, false, false, true, <gregtech:ore_cassiterite_0>);
removeDust(99, 3, 66, 84, false, false, false, true, <gregtech:ore_cassiterite_sand_0>);

//Fissile materials - Uranium (All types), Plutonium (All types), Thorium, Miscelanous Ores
//Thorium
removeTool(69, 90, 140, false, false, [172, 129, 43], <gregtech:ore_thorium_0>, null, [false, false, false, false, false, true, false], false, null);
//Uranium & accessories
removeDust(193, 0, 108, 162, false, false, false, false, <gregtech:ore_uraninite_0>);
removeDust(280, 5, 496, 751, false, false, false, true, <gregtech:ore_pitchblende_0>);
removeTool(75, 92, 146, false, false, [178, 138, 44], <gregtech:ore_uranium_0>, null, [false, false, false, false, false, true, false], false, null);
removeTool(76, 92, 143, false, false, [176, 132, 44], <gregtech:ore_uranium235_0>, null, [false, false, false, false, false, true, false], false, null);
//Plutonium 241 & Plutonium 244
removeRodIngot(52, 94, 152, false, false, [184, 138, 46], null, [6, 4, 1, 4, 3, 1]);
removeRodIngot(53, 94, 149, false, false, [182, 136, 45], null, [6, 4, 1, 4, 3, 1]);

//Nickel Zinc Ferrite, which is ONLY used for small coils and is unneeded otherwise
removeDust(423, 0, 162, 185, false, false, false, false, null);
RecipeMap.getByName("centrifuge").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(423 + 2000) * 6], null).remove();
RecipeMap.getByName("mixer").findRecipe(30, [<gregtech:meta_item_1:33> * 4, <gregtech:meta_item_1:44>, <gregtech:meta_item_1:79>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], null).remove();
RecipeMap.getByName("mixer").findRecipe(30, [<gregtech:meta_item_1:1033> * 4, <gregtech:meta_item_1:1044>, <gregtech:meta_item_1:1079>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], null).remove();
RecipeMap.getByName("mixer").findRecipe(30, [<gregtech:meta_item_1:2033> * 4, <gregtech:meta_item_1:2044>, <gregtech:meta_item_1:2079>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], null).remove();
removeRodIngot(424, 226, 249, true, false, [24, 18, 6], null, [4, 3, 1, 4, 3, 1]);
RecipeMap.getByName("electrolyzer").findRecipe(60, [<gregtech:meta_item_1>.definition.makeStack(424 + 2000) * 14], null).remove();
RecipeMap.getByName("blast_furnace").findRecipe(120, [<gregtech:meta_item_1>.definition.makeStack(423 + 2000) * 6], [<liquid:oxygen> * 8000]).remove();

//High Speed Steels, because they're BS and I don't care
recipes.removeByRegex(".*(hssg).*");
removeCable(302 as int, true, 4, false, true);
removeTool(302, 631, 857, true, true, [73, 55, 18], null, [4, 3, 1, 4, 3, 1], [true, true, true, true, true, true, true], true, <gregtech:frame_hssg>);
RecipeMap.getByName("centrifuge").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(302 + 2000) * 9], null).remove();
recipes.removeByRegex(".*(hsse).*");
removeTool(303, 3852, 5218, true, true, [60, 45, 15], null, [4, 3, 1, 4, 3, 1], [true, true, true, true, true, true, false], true, <gregtech:frame_hsse>);
RecipeMap.getByName("centrifuge").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(303 + 2000) * 9], null).remove();
recipes.removeByRegex(".*(hsss).*");
removeTool(304, 4016, 5486, true, true, [96, 72, 24], null, [4, 3, 1, 4, 3, 1], [false, false, true, true, false, true, false], true);
RecipeMap.getByName("centrifuge").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(304 + 2000) * 9], null).remove();

//Colored steels, they're painful alloys with about three uses between all three steels. They can and SHOULD go
recipes.removeByRegex(".*(black_steel).*");
removeCable(231 as int, false, 2, false, true);
removeTool(231, 319, 399, true, false, [48, 36, 12], null, [4, 3, 1, 4, 3, 1], [false, false, false, false, false, true, true]);
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:184> * 3, <gregtech:meta_item_1:229>, <gregtech:meta_item_1:44>], null).remove();
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:1184> * 3, <gregtech:meta_item_1:1229>, <gregtech:meta_item_1:1044>], null).remove();
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:2184> * 3, <gregtech:meta_item_1:2229>, <gregtech:meta_item_1:2044>], null).remove();
RecipeMap.getByName("centrifuge").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(231 + 2000) * 5], null).remove();
recipes.removeByRegex(".*(red_steel).*");
removeTool(232, 1745, 2192, true, false, [51, 38, 12], null, [4, 3, 1, 4, 3, 1], [false, false, false, false, false, true, true]);
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:231> * 4, <gregtech:meta_item_1:184> * 2, <gregtech:meta_item_1:227>, <gregtech:meta_item_1:230>], null).remove();
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:1231> * 4, <gregtech:meta_item_1:1184> * 2, <gregtech:meta_item_1:1227>, <gregtech:meta_item_1:1230>], null).remove();
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:2231> * 4, <gregtech:meta_item_1:2184> * 2, <gregtech:meta_item_1:2227>, <gregtech:meta_item_1:2230>], null).remove();
RecipeMap.getByName("centrifuge").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(232 + 2000) * 8], null).remove();
recipes.removeByRegex(".*(blue_steel).*");
removeTool(233, 1790, 2295, true, false, [56, 42, 14], null, [4, 3, 1, 4, 3, 1], [false, false, false, false, false, true, true], false, <gregtech:frame_blue_steel>);
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:231> * 4, <gregtech:meta_item_1:184> * 2, <gregtech:meta_item_1:228>, <gregtech:meta_item_1:94>], null).remove();
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:1231> * 4, <gregtech:meta_item_1:1184> * 2, <gregtech:meta_item_1:1228>, <gregtech:meta_item_1:1094>], null).remove();
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:2231> * 4, <gregtech:meta_item_1:2184> * 2, <gregtech:meta_item_1:2228>, <gregtech:meta_item_1:2094>], null).remove();
RecipeMap.getByName("centrifuge").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(233 + 2000) * 8], null).remove();






