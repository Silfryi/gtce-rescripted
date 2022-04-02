import crafttweaker.item.IItemStack;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.gregtech.recipe.RecipeMap;



/**
* Remove useless or plain wrong ore processing furnace recipes
*/
//Pure Iron Nuggets
furnace.remove(<minecraft:iron_nugget>, <gregtech:meta_item_1>.anyDamage());
furnace.addRecipe(<minecraft:iron_nugget>, <gregtech:meta_item_1:33>);
//Furnace recipes for ores
furnace.remove(<gregtech:meta_item_1:2114>);
furnace.remove(<gregtech:meta_item_1:2255>);
//Molybdenum
furnace.remove(<gregtech:meta_item_1:9041>, <gregtech:meta_item_1>.anyDamage());
furnace.addRecipe(<gregtech:meta_item_1:9041>, <gregtech:meta_item_1:41>);
//Magnesium
furnace.remove(<gregtech:meta_item_1:9051>, <gregtech:meta_item_1>.anyDamage());
furnace.addRecipe(<gregtech:meta_item_1:9051>, <gregtech:meta_item_1:51>);
//Platinum
furnace.remove(<gregtech:meta_item_1:9038>, <gregtech:meta_item_1>.anyDamage());
furnace.addRecipe(<gregtech:meta_item_1:9038>, <gregtech:meta_item_1:38>);



/**
* Add new recipes for dusts & ores that need smelting
*/
//Pig Iron Nuggets
furnace.addRecipe(<gregtech:meta_item_1:9140> * 3, <gregtech:meta_item_1:2255>);
furnace.addRecipe(<gregtech:meta_item_1:9140> * 3, <gregtech:meta_item_1:3255>);
furnace.addRecipe(<gregtech:meta_item_1:9140> * 3, <gregtech:meta_item_1:4255>);
furnace.addRecipe(<gregtech:meta_item_1:9140> * 3, <gregtech:meta_item_1:2255>);
furnace.addRecipe(<gregtech:meta_item_1:9140> * 3, <gregtech:meta_item_1:3255>);
furnace.addRecipe(<gregtech:meta_item_1:9140> * 3, <gregtech:meta_item_1:4255>);
furnace.addRecipe(<gregtech:meta_item_1:9140> * 3, <gregtech:meta_item_1:2090>);
furnace.addRecipe(<gregtech:meta_item_1:9140> * 3, <gregtech:meta_item_1:3090>);
furnace.addRecipe(<gregtech:meta_item_1:9140> * 3, <gregtech:meta_item_1:4090>);
furnace.addRecipe(<gregtech:meta_item_1:9140> * 2, <gregtech:meta_item_1:2096>);
furnace.addRecipe(<gregtech:meta_item_1:9140> * 2, <gregtech:meta_item_1:3096>);
furnace.addRecipe(<gregtech:meta_item_1:9140> * 2, <gregtech:meta_item_1:4096>);
furnace.addRecipe(<gregtech:meta_item_1:9140> * 2, <gregtech:meta_item_1:2199>);
furnace.addRecipe(<gregtech:meta_item_1:9140> * 2, <gregtech:meta_item_1:3199>);
furnace.addRecipe(<gregtech:meta_item_1:9140> * 2, <gregtech:meta_item_1:4199>);
//Lead nuggets
furnace.addRecipe(<gregtech:meta_item_1:9035> * 3, <gregtech:meta_item_1:2114>);
furnace.addRecipe(<gregtech:meta_item_1:9035> * 3, <gregtech:meta_item_1:3114>);
furnace.addRecipe(<gregtech:meta_item_1:9035> * 3, <gregtech:meta_item_1:4114>);
//Add recipes for ores
furnace.addRecipe(<gregtech:meta_item_1:10035>, <gregtech:ore_galena_0>.anyDamage());
furnace.addRecipe(<gregtech:meta_item_1:10079>, <gregtech:ore_sphalerite_0>.anyDamage());
furnace.addRecipe(<gregtech:meta_item_1:10044>, <gregtech:ore_pentlandite_0>.anyDamage());
furnace.addRecipe(<gregtech:meta_item_1:10044>, <gregtech:ore_garnierite_0>.anyDamage());
furnace.addRecipe(<gregtech:meta_item_1:10018>, <gregtech:ore_bornite_0>.anyDamage());
furnace.addRecipe(<gregtech:meta_item_1:10018>, <gregtech:ore_chalcocite_0>.anyDamage());
furnace.addRecipe(<gregtech:meta_item_1:10018>, <gregtech:ore_tenorite_0>.anyDamage());
furnace.addRecipe(<gregtech:meta_item_1:10018>, <gregtech:ore_cuprite_0>.anyDamage());
furnace.addRecipe(<gregtech:meta_item_1:10018>, <gregtech:ore_tetrahedrite_0>.anyDamage());
furnace.addRecipe(<gregtech:meta_item_1:10018>, <gregtech:ore_chalcopyrite_0>.anyDamage());
furnace.addRecipe(<gregtech:meta_item_1:10140>, <gregtech:ore_brown_limonite_0>.anyDamage());
furnace.addRecipe(<gregtech:meta_item_1:10140>, <gregtech:ore_yellow_limonite_0>.anyDamage());
furnace.addRecipe(<gregtech:meta_item_1:10140>, <gregtech:ore_pyrite_0>.anyDamage());
furnace.addRecipe(<gregtech:meta_item_1:10140>, <gregtech:ore_banded_iron_0>.anyDamage());
furnace.addRecipe(<gregtech:meta_item_1:9140> * 6, <gregtech:ore_magnetite_0>.anyDamage());
furnace.addRecipe(<gregtech:meta_item_1:9140> * 3, <gregtech:ore_vanadium_magnetite_0>.anyDamage());



/**
* Add misc. needed iron-processing recipes & fix steel PBF recipes
*/
furnace.addRecipe(<minecraft:iron_ingot>, <gregtech:meta_item_1:10140>);
recipes.addShapeless(<gregtech:meta_item_1:10197>, [<ore:craftingToolHardHammer>, <gregtech:meta_item_1:10140>]);
