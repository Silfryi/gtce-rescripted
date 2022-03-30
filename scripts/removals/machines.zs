import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hideCategory;
import mods.gregtech.recipe.RecipeMap;
import scripts.removals.common.removeAllCentrifugedOres;
import scripts.removals.common.recalibrateAllSifterRecipes;



print("Removing useless machines, steam and otherwise");

//Plasma Arc Furnace - there is NO reason to use plasma for this, it is objectively less energy efficient
hideCategory("gregtech:plasma_arc_furnace");
removeAndHide(<gregtech:machine:410>);
removeAndHide(<gregtech:machine:411>);
removeAndHide(<gregtech:machine:412>);
removeAndHide(<gregtech:machine:413>);

//Thermal Centrifuge - no byproducts are obtainable here that are not in other ways, and the machine is a useless power sink
hideCategory("gregtech:thermal_centrifuge");
removeAndHide(<gregtech:machine:460>);
removeAndHide(<gregtech:machine:461>);
removeAndHide(<gregtech:machine:462>);
removeAndHide(<gregtech:machine:463>);
removeAllCentrifugedOres();

//Naquadah Reactors - we're going to have a multiblock for this and make it true late-HV early-EV power, not whatever these were
hideCategory("gregtech:naquadah_reactor");
removeAndHide(<gregtech:machine:2172>);
removeAndHide(<gregtech:machine:2173>);
removeAndHide(<gregtech:machine:2174>);
removeAndHide(<gregtech:machine:2191>);

//Electromagnetic separator - this machine is objectively worse than EVERY OTHER byproduct machine and produces nothing useful
hideCategory("gregtech:electromagnetic_separator");
removeAndHide(<gregtech:machine:250>);
removeAndHide(<gregtech:machine:251>);
removeAndHide(<gregtech:machine:252>);
removeAndHide(<gregtech:machine:253>);

//Compressor - does very few recipes and is an excess machine to most people
hideCategory("gregtech:compressor");
removeAndHide(<gregtech:machine:12>);
removeAndHide(<gregtech:machine:210>);
removeAndHide(<gregtech:machine:211>);
removeAndHide(<gregtech:machine:212>);
removeAndHide(<gregtech:machine:213>);

//Forming press - does very few recipes and is an excess machine to most people
hideCategory("gregtech:forming_press");
removeAndHide(<gregtech:machine:340>);
removeAndHide(<gregtech:machine:341>);
removeAndHide(<gregtech:machine:342>);
removeAndHide(<gregtech:machine:343>);

//Microwave - extra expensive furnace. why does this exist. it does nothing special
hideCategory("gregtech:microwave");
removeAndHide(<gregtech:machine:360>);
removeAndHide(<gregtech:machine:361>);
removeAndHide(<gregtech:machine:362>);
removeAndHide(<gregtech:machine:363>);

//Fluid Heater - this thing does about 5 recipes, one of which is like. liquid ice (????) and one of the rest is just a horrid abomination of failed molar chemistry. the other two are steam
hideCategory("gregtech:fluid_heater");
removeAndHide(<gregtech:machine:310>);
removeAndHide(<gregtech:machine:311>);
removeAndHide(<gregtech:machine:312>);
removeAndHide(<gregtech:machine:313>);

//Amplifabriactor - does exactly zero recipes
removeAndHide(<gregtech:machine:80>);
removeAndHide(<gregtech:machine:81>);
removeAndHide(<gregtech:machine:82>);
removeAndHide(<gregtech:machine:83>);

//Fermenter - this thing does ONE recipe! ONE! It can be better handled in the brewery.
hideCategory("gregtech:fermenter");
removeAndHide(<gregtech:machine:280>);
removeAndHide(<gregtech:machine:281>);
removeAndHide(<gregtech:machine:282>);
removeAndHide(<gregtech:machine:283>);

//Canning Machine - only does batteries, which I have hereforth decided that can be put into their cans in other ways dammit
hideCategory("gregtech:canner");
removeAndHide(<gregtech:machine:140>);
removeAndHide(<gregtech:machine:141>);
removeAndHide(<gregtech:machine:142>);
removeAndHide(<gregtech:machine:143>);

//Remove all non-rod recipes from polarizer
for recipe in RecipeMap.getByName("polarizer").recipes {
    if ((recipe.inputs[0] as IIngredient).itemArray[0].damage % 14000 != 298 && (recipe.inputs[0] as IIngredient).itemArray[0].damage % 14000 != 299) {
        recipe.remove();
    }
}
//Remove smelting recipes for removed recipe undoal
for w in 0 to 27 {
    if (w != 14) {
        furnace.remove(<gregtech:meta_item_1>.definition.makeStack(184 + (w * 1000)));
        furnace.remove(<gregtech:meta_item_2>.definition.makeStack(184 + (w * 1000)));
        furnace.remove(<gregtech:meta_item_1>.definition.makeStack(42 + (w * 1000)));
        furnace.remove(<gregtech:meta_item_2>.definition.makeStack(42 + (w * 1000)));
    }
}

//Sifter & ore processing page - this machine's recipes were just useless and had many items for no reason
recalibrateAllSifterRecipes();
hideCategory("gregtech:ore_by_product");

//Bronze steam machines - these machines tended towards uselessness - they were extremely slow and only used to make the steel ones and as pre-LV: something the steel ones do equally well
removeAndHide(<gregtech:machine:1>);
removeAndHide(<gregtech:machine:5>);
removeAndHide(<gregtech:machine:7>);
removeAndHide(<gregtech:machine:9>);
removeAndHide(<gregtech:machine:11>);
removeAndHide(<gregtech:machine:13>);
removeAndHide(<gregtech:machine:15>);
removeAndHide(<gregtech:machine:17>);
removeAndHide(<gregtech:machine_casing:10>);
removeAndHide(<gregtech:machine_casing:11>);
