import crafttweaker.item.IItemStack;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.gregtech.recipe.RecipeMap;
import scripts.removals.common.removeCable;


/**
* Remove higher-tier compoents from JEI - we don't need them and they clog it up with promises of higher tiers 
*/
//UV & MAX Components
removeAndHide(<gregtech:meta_item_2:32605>);
removeAndHide(<gregtech:meta_item_1:32707>);
removeAndHide(<gregtech:meta_item_1:32697>);
removeAndHide(<gregtech:meta_item_1:32687>);
removeAndHide(<gregtech:meta_item_1:32677>);
removeAndHide(<gregtech:meta_item_1:32657>);
removeAndHide(<gregtech:meta_item_1:32647>);
removeAndHide(<gregtech:meta_item_1:32637>);
removeAndHide(<gregtech:meta_item_1:32617>);
removeAndHide(<gregtech:meta_item_1:32608>);
removeAndHide(<gregtech:meta_item_1:32607>);
//ZPM Components
removeAndHide(<gregtech:meta_item_2:32706>);
removeAndHide(<gregtech:meta_item_1:32696>);
removeAndHide(<gregtech:meta_item_1:32686>);
removeAndHide(<gregtech:meta_item_1:32676>);
removeAndHide(<gregtech:meta_item_1:32656>);
removeAndHide(<gregtech:meta_item_1:32646>);
removeAndHide(<gregtech:meta_item_1:32636>);
removeAndHide(<gregtech:meta_item_1:32616>);
removeAndHide(<gregtech:meta_item_1:32607>);
removeAndHide(<gregtech:meta_item_1:32606>);
//LuV Components
removeAndHide(<gregtech:meta_item_2:32705>);
removeAndHide(<gregtech:meta_item_1:32695>);
removeAndHide(<gregtech:meta_item_1:32685>);
removeAndHide(<gregtech:meta_item_1:32675>);
removeAndHide(<gregtech:meta_item_1:32655>);
removeAndHide(<gregtech:meta_item_1:32645>);
removeAndHide(<gregtech:meta_item_1:32635>);
removeAndHide(<gregtech:meta_item_1:32615>);
removeAndHide(<gregtech:meta_item_1:32606>);
removeAndHide(<gregtech:meta_item_1:32605>);

/**
* Remove higher-tier wires & cables from JEI - past IV you should just be using superconductors, the voltage is too great otherwise
*/
//UV & MAX Wires
removeCable(308 as int, true, 4, false, false);
removeCable(312 as int, false, 1, false, false);
//ZPM Wires
removeCable(307 as int, false, 4, false, false);
//LuV Wires
removeCable(135 as int, true, 4, false, true);
removeCable(195 as int, false, 4, false, true);
removeCable(200 as int, true, 4, false, true);

/**
* Remove very low- or very high-tier items that make little sense and have no reason to exist now that they can't be used for their purpose
*/
//Low-tier complexity BS
removeAndHide(<gregtech:meta_item_2:32456>);
removeAndHide(<gregtech:meta_item_2:32012>);
removeAndHide(<gregtech:meta_item_2:32011>);
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_2:16018>, <gregtech:meta_item_1:16424>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_2:16018>, <gregtech:meta_item_1:16184>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_2:16087>, <gregtech:meta_item_1:16424>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_2:16087>, <gregtech:meta_item_1:16184>], null).remove();
//High-tier complexity BS
removeAndHide(<gregtech:meta_item_2:32432>);
removeAndHide(<gregtech:meta_item_2:32434>);
removeAndHide(<gregtech:meta_item_2:32435>);
removeAndHide(<gregtech:meta_item_2:32505>);
removeAndHide(<gregtech:meta_item_2:32433>);
removeAndHide(<gregtech:meta_item_2:32506>);
RecipeMap.getByName("compressor").findRecipe(2, [<gregtech:meta_item_2:32432>], null).remove();
RecipeMap.getByName("compressor").findRecipe(2, [<gregtech:meta_item_2:32505>], null).remove();
RecipeMap.getByName("packer").findRecipe(4, [<gregtech:meta_item_2:32504> * 4, <gtadditions:ga_meta_item:32132>], null).remove();
RecipeMap.getByName("implosion_compressor").findRecipe(30, [<minecraft:tnt> * 4, <gregtech:meta_item_2:32434>], null).remove();
//Redo clay stuff done by SoG
removeAndHide(<gregtech:meta_item_2:32013>);
recipes.remove(<gtadditions:ga_meta_item:32032>);
furnace.remove(<minecraft:brick>);
furnace.addRecipe(<minecraft:brick>, <minecraft:clay_ball>);
RecipeMap.getByName("alloy_smelter").findRecipe(2, [<minecraft:clay_ball>, <gregtech:meta_item_1:32306>], null).remove();
recipes.addShaped(<gtadditions:ga_meta_item:32032> * 4, 
 [[<minecraft:clay_ball>, <ore:sand>, <minecraft:clay_ball>],
 [<minecraft:clay_ball>, <liquid:water> * 1000, <minecraft:clay_ball>],
 [<minecraft:clay_ball>, <ore:sand>, <minecraft:clay_ball>]]);
 
/**
* Remove the entirety of the recipes of some high-tier machines, so we can write their recipes anew
*/
for recipe in RecipeMap.getByName("assembly_line").recipes {
    recipe.remove();
}