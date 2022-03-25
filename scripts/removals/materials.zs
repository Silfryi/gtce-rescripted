import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hideCategory;
import mods.gregtech.recipe.RecipeMap;
import scripts.removals.common.removeCable;
import scripts.removals.common.removePipe;
import scripts.removals.common.removeOre;
import scripts.removals.common.removeDust;
import scripts.removals.common.removeGem;
import scripts.removals.common.removeBasicIngot;
import scripts.removals.common.removeRodIngot;
import scripts.removals.common.removeAdvancedIngot;
import scripts.removals.common.removeTool;



print("Fixing the parts shown in JEI from the material registry to adequately portray the new meta");

/**
* Remove utterly useless materials, or nonsensical materials - none of these have ANY use whether it is one we want or not, or they're impossible to find/make
*/
//Remove useless dusts
removeDust(5, 0, 33, 42, false, false, false, false, null);
removeDust(86, 20, 250, 258, false, false, false, true, null);
removeDust(88, 18, 140, 136, false, false, false, true, null);
removeDust(107, 3, 76, 90, false, false, false, true, <gregtech:ore_cobaltite_0>);
removeDust(118, 20, 224, 224, false, false, false, true, <gregtech:ore_grossular_0>);
removeDust(132, 3, 74, 85, false, false, false, true, <gregtech:ore_molybdenite_0>);
removeDust(163, 3, 38, 38, false, false, false, true, null);
removeDust(191, 7, 112, 149, false, false, false, true, <gregtech:ore_tungstate_0>);
removeDust(194, 20, 246, 254, false, false, false, true, null);
RecipeMap.getByName("mixer").findRecipe(30, [<gregtech:meta_item_1:2063> * 2, <gregtech:meta_item_1:2065>], null).remove();
removeDust(210, 3, 270, 276, false, false, false, true, null);
removeDust(221, 10, 366, 374, false, false, false, true, null);
removeDust(223, 1, 50, 51, false, false, false, true, null);
removeDust(225, 9, 58, 56, false, false, false, true, null);
RecipeMap.getByName("fluid_extractor").findRecipe(128, [<gregtech:meta_item_1:2225>], null).remove();
RecipeMap.getByName("chemical_bath").findRecipe(4, [<gregtech:meta_item_1:2106>], [<liquid:water> * 125]).remove();
RecipeMap.getByName("chemical_bath").findRecipe(4, [<gregtech:meta_item_1:2106>], [<liquid:distilled_water> * 125]).remove();
removeDust(248, 4, 269, 258, false, false, false, true, null);
removeDust(253, 1, 140, 136, false, false, false, true, null);
removeDust(254, 8, 196, 232, false, false, false, true, null);
removeDust(266, 2, 634, 650, false, false, false, true, null);
removeDust(268, 2, 7502, 7746, false, false, false, true, null);
removeDust(273, 22, 308, 348, false, false, false, true, null);
removeDust(275, 21, 193, 192, false, false, false, true, <gregtech:ore_glauconite_0>);
removeDust(276, 21, 193, 192, false, false, false, true, null);
removeDust(277, 29, 324, 326, false, false, false, true, null);
removeDust(279, 21, 197, 188, false, false, false, true, null);
removeDust(282, 10, 106, 114, false, false, false, true, <gregtech:ore_malachite_0>);
removeDust(283, 17, 170, 150, false, false, false, true, null);
removeDust(284, 19, 198, 199, false, false, false, true, null);
removeDust(285, 14, 114, 109, false, false, false, true, null);
removeDust(288, 26, 204, 199, false, false, false, true, null);
removeDust(290, 5, 58, 58, false, false, false, true, null);
removeDust(291, 0, 1442, 1386, false, false, false, false, null);
removeDust(292, 8, 80, 80, false, false, false, true, null);
removeDust(293, 17, 130, 126, false, false, false, true, null);
removeDust(362, 8, 184, 208, false, false, false, true, <gregtech:ore_enargite_0>);
removeDust(363, 29, 688, 784, false, false, false, true, <gregtech:ore_tennantite_0>);

//Remove useless metals of varying complexities
removeBasicIngot(2, 95, 150, false, false, false, [], null);
removeBasicIngot(10, 55, 77, false, false, false, [], null);
removeBasicIngot(14, 58, 82, true, false, false, [], null);
removeBasicIngot(20, 66, 96, true, false, false, [], null);
removeBasicIngot(21, 68, 99, true, true, true, [125, 94, 31], null);
removeBasicIngot(24, 64, 93, true, false, false, [], null);
removeBasicIngot(27, 67, 97, true, false, false, [], null);
removeBasicIngot(37, 71, 103, true, true, false, [], null);
removeBasicIngot(55, 59, 81, true, false, true, [105, 78, 26], null);
removeBasicIngot(56, 61, 83, true, false, true, [108, 81, 27], null);
removeBasicIngot(58, 37, 48, false, false, true, [63, 47, 15], null);
removeBasicIngot(59, 62, 88, true, false, true, [112, 84, 28], null);
removeBasicIngot(60, 21, 24, true, true, true, [33, 25, 8], null);
removeBasicIngot(64, 38, 49, false, false, true, [65, 49, 16], null);
removeBasicIngot(67, 52, 75, false, false, true, [95, 71, 28], null);
removeBasicIngot(68, 65, 93, true, false, true, [118, 89, 29], null);
removeBasicIngot(70, 69, 99, true, true, true, [126, 94, 31], null);
removeRodIngot(134, 48, 60, true, true, [40, 30, 10], null, [4, 3, 1, 4, 3, 1], true);
RecipeMap.getByName("electrolyzer").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(134 + 2000) * 2], null).remove();
removeBasicIngot(353, 70, 103, true, false, true, [129, 97, 32], null);
RecipeMap.getByName("mixer").findRecipe(30, [<gregtech:meta_item_1:2005>, <gregtech:meta_item_1:2025>], null).remove();
RecipeMap.getByName("centrifuge").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(410 + 2000) * 2], null).remove();
removeBasicIngot(410, 64, 81, true, false, true, [54, 40, 13], null);

//Remove useless, nonfindable gems
recipes.removeByRegex(".*(blue_topaz).*");
removeGem(92, 13, 108, 106, true, true, <gregtech:ore_blue_topaz_0>, [12, 9, 3]);
recipes.removeByRegex(".*(green_sapphire).*");
removeGem(117, 5, 50, 50, true, true, <gregtech:ore_green_sapphire_0>, [15, 11, 3], true, false);
recipes.removeByRegex(".*(sapphire).*");
removeGem(157, 5, 50, 50, true, true, <gregtech:ore_sapphire_0>, [15, 11, 3]);
recipes.removeByRegex(".*(tanzanite).*");
removeGem(187, 22, 226, 225, true, true, <gregtech:ore_tanzanite_0>, [15, 11, 3], false);
recipes.removeByRegex(".*(topaz).*");
removeGem(190, 13, 108, 106, true, true, <gregtech:ore_topaz_0>, [12, 9, 3]);
recipes.removeByRegex(".*(jasper).*");
removeGem(206, 0, 0, 0, false, false, <gregtech:ore_jasper_0>, [73, 55, 18]);
recipes.removeByRegex(".*(opal).*");
removeGem(213, 1, 30, 30, true, true, <gregtech:ore_opal_0>, [15, 11, 3]);
recipes.removeByRegex(".*(amethyst).*");
removeGem(214, 5, 146, 150, true, true, <gregtech:ore_amethyst_0>, [20, 15, 5]);
recipes.removeByRegex(".*(garnet).*");
removeGem(243, 16, 3722, 3902, true, true, <gregtech:ore_garnet_red_0>, [17, 12, 4]);
removeGem(244, 16, 3780, 3844, true, true, <gregtech:ore_garnet_yellow_0>, [17, 12, 4]);
recipes.removeByRegex(".*(vinteum).*");
removeGem(247, 0, 0, 0, false, true, <gregtech:ore_vinteum_0>, [73, 55, 18]);



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

//Cobalt & Cobalt Brass, because cobalt is used for so damn little
recipes.removeByRegex(".*(cobalt).*");
removeCable(17, false, 1, true, true);
removeTool(17, 27, 32, false, false, [44, 33, 11], <gregtech:ore_cobalt_0>, null, [false, false, false, false, false, true, false]);
recipes.removeByRegex(".*(cobalt_brass).*");
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:94> * 7, <gregtech:meta_item_1:17>, <gregtech:meta_item_1:1>], null).remove();
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:1094> * 7, <gregtech:meta_item_1:1017>, <gregtech:meta_item_1:1001>], null).remove();
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:2094> * 7, <gregtech:meta_item_1:2017>, <gregtech:meta_item_1:2001>], null).remove();
removeTool(238, 859, 1004, false, false, [43, 32, 10], null, [4, 3, 1, 4, 3, 1], [false, false, true, true, false, true, false]);

//Tin, Tin Alloys, Cassierite, Cassiterite Sand
//Bronze
recipes.removeByRegex("(gregtech).*(bronze).*");
removePipe(95, 1);
removeTool(95, 137, 170, false, false, [57, 42, 14], null, [4, 3, 1, 4, 3, 1], [true, true, true, true, false, true, false], false, <gregtech:frame_bronze>);
RecipeMap.getByName("alloy_smelter").findRecipe(16, [<gregtech:meta_item_1:2018> * 3, <gregtech:meta_item_1:2071>], null).remove();
RecipeMap.getByName("alloy_smelter").findRecipe(16, [<gregtech:meta_item_1:10018> * 3, <gregtech:meta_item_1:2071>], null).remove();
RecipeMap.getByName("alloy_smelter").findRecipe(16, [<gregtech:meta_item_1:2018> * 3, <gregtech:meta_item_1:10071>], null).remove();
RecipeMap.getByName("alloy_smelter").findRecipe(16, [<gregtech:meta_item_1:10018> * 3, <gregtech:meta_item_1:10071>], null).remove();
RecipeMap.getByName("alloy_smelter").findRecipe(16, [<gregtech:meta_item_1:2087> * 3, <gregtech:meta_item_1:2071>], null).remove();
RecipeMap.getByName("alloy_smelter").findRecipe(16, [<gregtech:meta_item_1:10087> * 3, <gregtech:meta_item_1:2071>], null).remove();
RecipeMap.getByName("alloy_smelter").findRecipe(16, [<gregtech:meta_item_1:2087> * 3, <gregtech:meta_item_1:10071>], null).remove();
RecipeMap.getByName("alloy_smelter").findRecipe(16, [<gregtech:meta_item_1:10087> * 3, <gregtech:meta_item_1:10071>], null).remove();
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:18> * 3, <gregtech:meta_item_1:71>], null).remove();
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:1018> * 3, <gregtech:meta_item_1:1071>], null).remove();
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:2018> * 3, <gregtech:meta_item_1:2071>], null).remove();
RecipeMap.getByName("centrifuge").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(95 + 2000) * 4], null).remove();
//Tin, Tin Alloy, & Cassiterites
removeCable(71, true, 1, true, true);
removeAdvancedIngot(71, 50, 68, false, false, [88, 66, 22], <gregtech:ore_tin_0>, [4, 3, 1, 4, 3, 1], [true, true, true, true, false, true, true]);
removeAdvancedIngot(189, 76, 98, false, false, [65, 49, 16], null, [4, 3, 1, 4, 3, 1], [false, false, true, true, false, true, false]);
RecipeMap.getByName("alloy_smelter").findRecipe(16, [<gregtech:meta_item_1:2033>, <gregtech:meta_item_1:2071>], null).remove();
RecipeMap.getByName("alloy_smelter").findRecipe(16, [<minecraft:iron_ingot>, <gregtech:meta_item_1:2071>], null).remove();
RecipeMap.getByName("alloy_smelter").findRecipe(16, [<gregtech:meta_item_1:2033>, <gregtech:meta_item_1:10071>], null).remove();
RecipeMap.getByName("alloy_smelter").findRecipe(16, [<minecraft:iron_ingot>, <gregtech:meta_item_1:10071>], null).remove();
RecipeMap.getByName("alloy_smelter").findRecipe(16, [<gregtech:meta_item_1:2197>, <gregtech:meta_item_1:2071>], null).remove();
RecipeMap.getByName("alloy_smelter").findRecipe(16, [<gregtech:meta_item_1:10197>, <gregtech:meta_item_1:2071>], null).remove();
RecipeMap.getByName("alloy_smelter").findRecipe(16, [<gregtech:meta_item_1:2197>, <gregtech:meta_item_1:10071>], null).remove();
RecipeMap.getByName("alloy_smelter").findRecipe(16, [<gregtech:meta_item_1:10197>, <gregtech:meta_item_1:10071>], null).remove();
RecipeMap.getByName("centrifuge").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(189 + 2000) * 2], null).remove();
removeDust(98, 3, 66, 84, false, false, false, true, <gregtech:ore_cassiterite_0>);
removeDust(99, 3, 66, 84, false, false, false, true, <gregtech:ore_cassiterite_sand_0>);

//Fissile materials - Uranium (All types), Plutonium (All types), Thorium, Miscelanous Ores
//Thorium
recipes.removeByRegex(".*(thorium).*");
removeTool(69, 90, 140, false, false, [172, 129, 43], <gregtech:ore_thorium_0>, null, [false, false, false, false, false, true, false], false, null);
//Uranium & accessories
removeDust(193, 0, 108, 162, false, false, false, false, <gregtech:ore_uraninite_0>);
furnace.remove(<gregtech:meta_item_1:2193>);
RecipeMap.getByName("chemical_reactor").findRecipe(120, [<ore:dustAluminium>.firstItem, <ore:dustUraninite>.firstItem * 3], null).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(120, [<ore:dustMagnesium>.firstItem, <ore:dustUraninite>.firstItem * 3], null).remove();
removeDust(280, 5, 496, 751, false, false, false, true, <gregtech:ore_pitchblende_0>);
furnace.remove(<gregtech:meta_item_1:2280>);
recipes.removeByRegex(".*(uranium).*");
removeTool(75, 92, 146, false, false, [178, 138, 44], <gregtech:ore_uranium_0>, null, [false, false, false, false, false, true, false], false, null);
removeTool(76, 92, 143, false, false, [176, 132, 44], <gregtech:ore_uranium235_0>, null, [false, false, false, false, false, true, false], false, null);
//Plutonium 241 & Plutonium 244
RecipeMap.getByName("chemical_reactor").findRecipe(8, [<gregtech:meta_item_1:10052> * 3], null).remove();
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

//Ultimet and High Speed Steels, because they're BS and I don't care
recipes.removeByRegex(".*(ultimet).*");
removePipe(192, 4);
RecipeMap.getByName("mixer").findRecipe(30, [<gregtech:meta_item_1:17> * 5, <gregtech:meta_item_1:44>, <gregtech:meta_item_1:41>, <gregtech:meta_item_1:16> * 2], null).remove();
RecipeMap.getByName("mixer").findRecipe(30, [<gregtech:meta_item_1:1017> * 5, <gregtech:meta_item_1:1044>, <gregtech:meta_item_1:1041>, <gregtech:meta_item_1:1016> * 2], null).remove();
RecipeMap.getByName("mixer").findRecipe(30, [<gregtech:meta_item_1:2017> * 5, <gregtech:meta_item_1:2044>, <gregtech:meta_item_1:2041>, <gregtech:meta_item_1:2016> * 2], null).remove();
removeTool(192, 253, 299, true, true, [45, 34, 11], null, [4, 3, 1, 4, 3, 1], [false, false, true, true, false, true, false], true);
RecipeMap.getByName("centrifuge").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(192 + 2000) * 9], null).remove();
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

//Specialty precious metals, like sterling silver and rose gold - they serve no use and make for bad turbines, which objectively makes them worse in my book
recipes.removeByRegex(".*(sterling_silver).*");
removeTool(227, 217, 274, true, false, [73 , 55, 18], null, [4, 3, 1, 4, 3, 1], [false, false, true, true, false, true, false]);
RecipeMap.getByName("mixer").findRecipe(30, [<gregtech:meta_item_1:62> * 4, <gregtech:meta_item_1:18>], null).remove();
RecipeMap.getByName("mixer").findRecipe(30, [<gregtech:meta_item_1:1062> * 4, <gregtech:meta_item_1:1018>], null).remove();
RecipeMap.getByName("mixer").findRecipe(30, [<gregtech:meta_item_1:2062> * 4, <gregtech:meta_item_1:2018>], null).remove();
RecipeMap.getByName("centrifuge").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(227 + 2000) * 5], null).remove();
recipes.removeByRegex(".*(rose_gold).*");
removeTool(228, 345, 502, true, false, [126, 95, 31], null, [4, 3, 1, 4, 3, 1], [false, false, true, true, false, true, false]);
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:26> * 4, <gregtech:meta_item_1:18>], null).remove();
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:1026> * 4, <gregtech:meta_item_1:1018>], null).remove();
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:2026> * 4, <gregtech:meta_item_1:2018>], null).remove();
RecipeMap.getByName("centrifuge").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(228 + 2000) * 5], null).remove();

//Miscelanous materials that need removing
removeBasicIngot(6, 56, 81, false, false, false, null, null);
removeGem(203, 0, 0, 0, false, false, <gregtech:ore_quartzite_0>, null, false, false);
removeAdvancedIngot(297, 26, 30, false, false, [42, 31, 10], null, [4, 3, 1, 4, 3, 1], [false, false, true, true, false, true, false]);
RecipeMap.getByName("centrifuge").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(297 + 2000)], null).remove();
removeRodIngot(22, 63, 88, true, false, [113, 85, 28], null, null);
recipes.removeByRegex(".*(darmstadtium).*");
removeTool(43, 110, 171, false, false, [210, 158, 52], null, [125, 93, 31, 4, 3, 1], [true, true, true, true, true, true, false], false, <gregtech:frame_darmstadtium>);



/**
* Remove ores for metals it makes no sense to have them - pure aluminium ore, pure beryllium, etc
*/
removeOre(1, <gregtech:ore_aluminium_0>, false, true);
removeOre(7, <gregtech:ore_beryllium_0>, false, true);
removeOre(18, <gregtech:ore_copper_0>, false, true);
removeOre(26, <gregtech:ore_gold_0>);
removeOre(32, <gregtech:ore_iridium_0>);
removeOre(33, <gregtech:ore_iron_0>, false, true, <minecraft:iron_ingot>);
removeOre(35, <gregtech:ore_lead_0>, false, true);
removeOre(36, <gregtech:ore_lithium_0>, false, true);
removeOre(41, <gregtech:ore_molybdenum_0>, false, true);
removeOre(42, <gregtech:ore_neodymium_0>);
removeOre(44, <gregtech:ore_nickel_0>, false, true);
removeOre(45, <gregtech:ore_niobium_0>);
removeOre(47, <gregtech:ore_osmium_0>);
removeOre(49, <gregtech:ore_palladium_0>);
removeOre(51, <gregtech:ore_platinum_0>, false, true);
removeOre(62, <gregtech:ore_silver_0>);
removeOre(79, <gregtech:ore_zinc_0>, false, true);
removeOre(122, <gregtech:ore_rutile_0>, true);
removeOre(130, <gregtech:ore_magnesite_0>, false, true, <gregtech:meta_item_1:10038>);
removeOre(139, <gregtech:ore_phosphate_0>);
removeOre(307, <gregtech:ore_naquadah_0>);
