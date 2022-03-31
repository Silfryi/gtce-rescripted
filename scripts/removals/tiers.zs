import crafttweaker.item.IItemStack;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.gregtech.recipe.RecipeMap;
import scripts.removals.common.removeCable;



print("Removing unused high-tier components and items now that IV+ tiers are basically removed");

/**
* Remove higher-tier compoents from JEI - we don't need them and they clog it up with promises of higher tiers 
*/
//UV & MAX Components
removeAndHide(<gregtech:meta_item_2:32707>);
removeAndHide(<gregtech:meta_item_2:32605>);
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
* Remove higher-tier battery buffers/etc from JEI - we don't need them and they clog it up with promises of higher tiers 
*/
//UV & MAX Components
removeAndHide(<gregtech:machine:689>);
removeAndHide(<gregtech:machine:649>);
removeAndHide(<gregtech:machine:648>);
removeAndHide(<gregtech:machine:647>);
removeAndHide(<gregtech:machine:646>);
removeAndHide(<gregtech:machine:688>);
removeAndHide(<gregtech:machine:645>);
removeAndHide(<gregtech:machine:644>);
removeAndHide(<gregtech:machine:643>);
removeAndHide(<gregtech:machine:642>);
//ZPM Components
removeAndHide(<gregtech:machine:687>);
removeAndHide(<gregtech:machine:641>);
removeAndHide(<gregtech:machine:640>);
removeAndHide(<gregtech:machine:639>);
removeAndHide(<gregtech:machine:638>);
//LuV Components
removeAndHide(<gregtech:machine:686>);
removeAndHide(<gregtech:machine:637>);
removeAndHide(<gregtech:machine:636>);
removeAndHide(<gregtech:machine:635>);
removeAndHide(<gregtech:machine:634>);

/**
* Remove higher-tier wires & cables from JEI - past IV you should just be using superconductors, the voltage is too great otherwise
*/
//UV & MAX Wires
removeCable(312 as int, false, 1, false, false);
//ZPM Wires
removeCable(307 as int, false, 4, false, false);
//LuV Wires
removeCable(195 as int, true, 4, false, true);
removeCable(200 as int, true, 4, false, true);



/**
* Remove very high-tier items that make little sense and have no reason to exist now that they can't be used for their purpose
*/
removeAndHide(<gregtech:meta_item_2:32456>);
removeAndHide(<gregtech:meta_item_2:32012>);
removeAndHide(<gregtech:meta_item_2:32011>);
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_2:16018>, <gregtech:meta_item_1:16424>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_2:16018>, <gregtech:meta_item_1:16184>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_2:16087>, <gregtech:meta_item_1:16424>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_2:16087>, <gregtech:meta_item_1:16184>], null).remove();
removeAndHide(<gregtech:meta_item_2:32432>);
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12071>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12079>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12001>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12044>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12071>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12044>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12079>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12044>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12001>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12126>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12071>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12126>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12079>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12126>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12001>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12071>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12079>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12001>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12071>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12079>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12001>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12072>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12071>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12072>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12079>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12072>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12001>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12074>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12071>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12074>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12079>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12074>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12001>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12235>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12071>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12235>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12079>], null).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12235>, <gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12001>], null).remove();
removeAndHide(<gregtech:meta_item_2:32434>);
removeAndHide(<gregtech:meta_item_2:32435>);
removeAndHide(<gregtech:meta_item_2:32505>);
removeAndHide(<gregtech:meta_item_2:32433>);
removeAndHide(<gregtech:meta_item_2:32506>);
RecipeMap.getByName("compressor").findRecipe(2, [<gregtech:meta_item_2:32432>], null).remove();
RecipeMap.getByName("compressor").findRecipe(2, [<gregtech:meta_item_2:32505>], null).remove();
RecipeMap.getByName("packer").findRecipe(4, [<gregtech:meta_item_2:32504> * 4, <gtadditions:ga_meta_item:32132>], null).remove();
RecipeMap.getByName("implosion_compressor").findRecipe(30, [<minecraft:tnt> * 4, <gregtech:meta_item_2:32434>], null).remove();
removeAndHide(<gregtech:wire_coil:3>);
removeAndHide(<gregtech:wire_coil:4>);
removeAndHide(<gregtech:wire_coil:5>);
removeAndHide(<gregtech:wire_coil:6>);
RecipeMap.getByName("assembler").findRecipe(16, [<gregtech:cable:1235> * 8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
RecipeMap.getByName("assembler").findRecipe(16, [<gregtech:cable:1302> * 8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
RecipeMap.getByName("assembler").findRecipe(16, [<gregtech:cable:1307> * 8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
RecipeMap.getByName("assembler").findRecipe(16, [<gregtech:cable:1308> * 8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
 
 
 
/**
* Remove the entirety of the recipes of some high-tier machines, so we can write their recipes anew
*/
//Assembly line and blast furnace, to be readded later
for recipe in RecipeMap.getByName("assembly_line").recipes {
    recipe.remove();
}
for recipe in RecipeMap.getByName("blast_furnace").recipes {
    recipe.remove();
}
//Replicator & mass fabricator non-elements
RecipeMap.getByName("mass_fab").findRecipe(32, [], [<liquid:white_vitriol> * 1000]).remove();
RecipeMap.getByName("mass_fab").findRecipe(32, [], [<liquid:pearl_vitriol> * 1000]).remove();
RecipeMap.getByName("mass_fab").findRecipe(32, [], [<liquid:mixed_vitriols> * 1000]).remove();
RecipeMap.getByName("mass_fab").findRecipe(32, [], [<liquid:copper_rich_mixed_vitriols> * 1000]).remove();
RecipeMap.getByName("replicator").findRecipe(32, [<gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "mixed_vitriols", Amount: 1000}})], [<liquid:positive_matter> * 291, <liquid:neutral_matter> * 272]).remove();
RecipeMap.getByName("replicator").findRecipe(32, [<gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "copper_rich_mixed_vitriols", Amount: 1000}})], [<liquid:positive_matter> * 839, <liquid:neutral_matter> * 792]).remove();
var n = 0;
for recipe in RecipeMap.getByName("replicator").recipes {
    if(n > 112 || (n > 10 && n < 79)) recipe.remove();
    n += 1;
}
var m = 0;
for recipe in RecipeMap.getByName("mass_fab").recipes {
    if(m > 112 || (m > 10 && m < 79)) recipe.remove();
    m += 1;
}
