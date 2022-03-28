import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.gregtech.recipe.RecipeMap;



/**
* Remove Vanilla tools - you should be using GregTech tools or bust
*/
//Wood
removeAndHide(<minecraft:wooden_sword>);
removeAndHide(<minecraft:wooden_shovel>);
removeAndHide(<minecraft:wooden_pickaxe>);
removeAndHide(<minecraft:wooden_axe>);
removeAndHide(<minecraft:wooden_hoe>);
//Stone
removeAndHide(<minecraft:stone_sword>);
removeAndHide(<minecraft:stone_shovel>);
removeAndHide(<minecraft:stone_pickaxe>);
removeAndHide(<minecraft:stone_axe>);
removeAndHide(<minecraft:stone_hoe>);
//Iron
removeAndHide(<minecraft:iron_sword>);
removeAndHide(<minecraft:iron_shovel>);
removeAndHide(<minecraft:iron_pickaxe>);
removeAndHide(<minecraft:iron_axe>);
removeAndHide(<minecraft:iron_hoe>);
//Gold
removeAndHide(<minecraft:golden_sword>);
removeAndHide(<minecraft:golden_shovel>);
removeAndHide(<minecraft:golden_pickaxe>);
removeAndHide(<minecraft:golden_axe>);
removeAndHide(<minecraft:golden_hoe>);
//Diamond
removeAndHide(<minecraft:diamond_sword>);
removeAndHide(<minecraft:diamond_shovel>);
removeAndHide(<minecraft:diamond_pickaxe>);
removeAndHide(<minecraft:diamond_axe>);
removeAndHide(<minecraft:diamond_hoe>);



/**
* Hide the rather ridiculous number of GregTech tool heads from JEI because no one needs to SEE those, you can just search 'pickaxe' and find the recipes
*/
removeAndHide(<gregtech:meta_tool:14>);
for p in 0 to 999 {
    for u in 0 to 16 {
        hide(<gregtech:meta_item_2>.definition.makeStack(p + (u * 1000)));
    }
}



/**
* Fix GregTech power tool (specialty) recipes, most of them using iridum alloy (which no longer exists)
*/
recipes.remove(<gregtech:meta_item_2:32577>);
recipes.remove(<gregtech:meta_item_2:32578>);
recipes.addShaped(<gregtech:meta_item_2:32577>,
    [[null, null, <ore:stickLongPlatinum>],
    [null, <ore:stickLongPlatinum>, <ore:circuitExtreme>],
    [<ore:stickPolyvinylChloride>, <gregtech:meta_item_2:32212>, <gregtech:meta_item_1:32707>]]);
recipes.addShaped(<gregtech:meta_item_2:32578>,
    [[<gregtech:meta_item_2:32213>, <gregtech:meta_item_1:32683>, <gregtech:meta_item_2:32213>],
    [<gregtech:meta_item_1:32683>, <gregtech:meta_item_1:32673>, <gregtech:meta_item_1:32683>],
    [<ore:circuitExtreme>, <gregtech:meta_item_1:32707>, <ore:circuitExtreme>]]);
