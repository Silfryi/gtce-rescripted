import crafttweaker.item.IItemStack;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hideCategory;
import mods.gregtech.recipe.RecipeMap;
import scripts.removals.common.removeAllCentrifugedOres;
import scripts.removals.common.recalibrateAllSifterRecipes;



print("Removing useless machines, steam and otherwise");

//Plasma Arc Furnace
hideCategory("gregtech:plasma_arc_furnace");
removeAndHide(<gregtech:machine:410>);
removeAndHide(<gregtech:machine:411>);
removeAndHide(<gregtech:machine:412>);
removeAndHide(<gregtech:machine:413>);

//Thermal Centrifuge
hideCategory("gregtech:thermal_centrifuge");
removeAndHide(<gregtech:machine:460>);
removeAndHide(<gregtech:machine:461>);
removeAndHide(<gregtech:machine:462>);
removeAndHide(<gregtech:machine:463>);
removeAllCentrifugedOres();

//Naquadah Reactors
hideCategory("gregtech:naquadah_reactor");
removeAndHide(<gregtech:machine:2172>);
removeAndHide(<gregtech:machine:2173>);
removeAndHide(<gregtech:machine:2174>);
removeAndHide(<gregtech:machine:2191>);

//Sifter & ore processing page
recalibrateAllSifterRecipes();
hideCategory("gregtech:ore_by_product");

//All low-tier steam BS
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
