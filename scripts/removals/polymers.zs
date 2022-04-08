import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.gregtech.recipe.RecipeMap;
import scripts.removals.common.removeDust;
import scripts.removals.common.removeBasicIngot;
import scripts.removals.common.removeAdvancedIngot;



print("Removing useless polymers, removed high-tier and entirely such");

/**
* Remove polymer production processes for useless or otherwise superfluous chemicals
*/
RecipeMap.getByName("chemical_reactor").findRecipe(30, null, [<liquid:benzene> * 1000, <liquid:chlorine> * 4000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, null, [<liquid:benzene> * 1000, <liquid:ethylene> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 3})], [<liquid:methane> * 1000, <liquid:chlorine> * 2000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:methanol> * 1000, <liquid:hydrochloric_acid> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(96, [<gregtech:meta_item_1:2061>], [<liquid:chloromethane> * 2000]).remove();
RecipeMap.getByName("electrolyzer").findRecipe(60, null, [<liquid:chloromethane> * 2000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(120, null, [<liquid:sulfuric_acid> * 1000, <liquid:acetic_acid> * 1000]).remove();
RecipeMap.getByName("distillation_tower").findRecipe(640, null, [<liquid:acetone> * 1000]).remove();
RecipeMap.getByName("distillery").findRecipe(160, [<gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:acetone> * 1000]).remove();
RecipeMap.getByName("distillery").findRecipe(160, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:acetone> * 1000]).remove();
RecipeMap.getByName("fluid_heater").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:acetone> * 100]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(240, null, [<liquid:styrene> * 36, <liquid:butadiene> * 108, <liquid:air> * 2000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(240, null, [<liquid:styrene> * 36, <liquid:butadiene> * 108, <liquid:oxygen> * 2000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:styrene> * 144, <liquid:air> * 2000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:styrene> * 144, <liquid:oxygen> * 2000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:styrene> * 2160, <liquid:titanium_tetrachloride> * 100, <liquid:air> * 7500]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:styrene> * 2160, <liquid:titanium_tetrachloride> * 100, <liquid:oxygen> * 7500]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(96, null, [<liquid:water> * 1000, <liquid:dimethyldichlorosilane> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(96, [<gregtech:meta_item_1:2061>], [<liquid:methanol> * 2000, <liquid:hydrochloric_acid> * 2000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(96, [<gregtech:meta_item_1:2061>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:methane> * 2000, <liquid:chlorine> * 4000, <liquid:water> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(360, [<gregtech:meta_item_1:2163> * 3], [<liquid:air> * 16000, <liquid:dichlorobenzene> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(360, [<gregtech:meta_item_1:2163> * 3], [<liquid:oxygen> * 16000, <liquid:dichlorobenzene> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:2373> * 6], [<liquid:dichlorobenzene> * 1000]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:2392> * 9, <gregtech:meta_item_1:2065>], null).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(30, [<gregtech:meta_item_1:2397> * 9, <gregtech:meta_item_1:2065>], null).remove();

/**
* Remove polymer materials for removed polymers
*/
removeDust(143, 0, 43, 42, false, false, false, false, null);
RecipeMap.getByName("fluid_extractor").findRecipe(32, [<gregtech:meta_item_1:12143>], null).remove();
RecipeMap.getByName("fluid_extractor").findRecipe(32, [<gregtech:meta_block_compressed_8:15>], null).remove();
RecipeMap.getByName("cutting_saw").findRecipe(30, [<gregtech:meta_block_compressed_8:15>], [<liquid:water> * 12]).remove();
RecipeMap.getByName("cutting_saw").findRecipe(30, [<gregtech:meta_block_compressed_8:15>], [<liquid:distilled_water> * 9]).remove();
RecipeMap.getByName("cutting_saw").findRecipe(30, [<gregtech:meta_block_compressed_8:15>], [<liquid:lubricant> * 3]).remove();
RecipeMap.getByName("fluid_solidifier").findRecipe(8, [<gregtech:meta_item_1:32301>], [<liquid:silicone> * 144]).remove();
RecipeMap.getByName("fluid_solidifier").findRecipe(8, [<gregtech:meta_item_1:32308>], [<liquid:silicone> * 1296]).remove();
RecipeMap.getByName("compressor").findRecipe(2, [<gregtech:meta_item_1:2143>], null).remove();
RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_1:12143>], null).remove();
removeAndHide(<gregtech:meta_item_1:12143>);
removeDust(392, 0, 40, 34, false, false, false, false, null);
removeAdvancedIngot(391, 40, 34, false, false, [5, 3, 1], null, null, [true, false, true, false, false, true, false], false, null, true);
removeBasicIngot(395, 56, 48, false, false, true, [4, 3, 1], null, false, true);
RecipeMap.getByName("metal_bender").findRecipe(24, [<gregtech:meta_item_1>.definition.makeStack(395 + 12000), <gregtech:meta_item_1:32766>.withTag({Configuration: 4})], null).remove();
RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(395 + 19000)], null).remove();
RecipeMap.getByName("arc_furnace").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(395 + 19000)], [<liquid:oxygen> * 15]).remove();
RecipeMap.getByName("fluid_extractor").findRecipe(32, [<gregtech:meta_item_1>.definition.makeStack(395 + 19000)], null).remove();
removeAndHide(<gregtech:meta_item_1>.definition.makeStack(395 + 19000));
removeDust(397, 0, 146, 120, false, false, false, false, null);
removeAdvancedIngot(398, 146, 120, false, false, [4, 3, 1], null, null, [true, false, false, false, false, true, false], false, null, true);
removeAdvancedIngot(411, 56, 52, false, false, [6, 5, 1], null, [4, 3, 1, 4, 3, 1], [false, false, true, false, false, false, false]);



/**
* Remove chemicals and polymers from above from JEI and remove their fab and replication processes
*/
RecipeMap.getByName("mass_fab").findRecipe(32, null, [<liquid:radon> * 1000]).remove();
RecipeMap.getByName("mass_fab").findRecipe(32, null, [<liquid:styrene> * 1000]).remove();
RecipeMap.getByName("mass_fab").findRecipe(32, null, [<liquid:dichlorobenzene> * 1000]).remove();
RecipeMap.getByName("mass_fab").findRecipe(32, null, [<liquid:ethenone> * 1000]).remove();
RecipeMap.getByName("mass_fab").findRecipe(32, null, [<liquid:dimethyldichlorosilane> * 1000]).remove();
RecipeMap.getByName("mass_fab").findRecipe(32, null, [<liquid:chloromethane> * 1000]).remove();
RecipeMap.getByName("replicator").findRecipe(32, [<gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "radon", Amount: 1000}})], [<liquid:positive_matter> * 86, <liquid:neutral_matter> * 134]).remove();
RecipeMap.getByName("replicator").findRecipe(32, [<gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "styrene", Amount: 1000}})], [<liquid:positive_matter> * 56, <liquid:neutral_matter> * 48]).remove();
RecipeMap.getByName("replicator").findRecipe(32, [<gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "dichlorobenzene", Amount: 1000}})], [<liquid:positive_matter> * 74, <liquid:neutral_matter> * 72]).remove();
RecipeMap.getByName("replicator").findRecipe(32, [<gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "ethenone", Amount: 1000}})], [<liquid:positive_matter> * 22, <liquid:neutral_matter> * 20]).remove();
RecipeMap.getByName("replicator").findRecipe(32, [<gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "dimethyldichlorosilane", Amount: 1000}})], [<liquid:positive_matter> * 66, <liquid:neutral_matter> * 62]).remove();
RecipeMap.getByName("replicator").findRecipe(32, [<gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "chloromethane", Amount: 1000}})], [<liquid:positive_matter> * 26, <liquid:neutral_matter> * 24]).remove();

/**
* Remove cable recipes with disabled rubbers to clean up assembler recipes
*/
//The ids of everything that has a cable
removeInsulation(1, true, [72, 144, 288, 576, 1152], [48, 96, 192, 384, 768]);
removeInsulation(18, false, [48, 96, 192, 384, 768], [36, 72, 144, 288, 576]);
removeInsulation(26, false, [72, 144, 288, 576, 1152], [36, 72, 144, 288, 576]);
removeInsulation(33, false, [48, 96, 192, 384, 768], [36, 72, 144, 288, 576]);
removeInsulation(35, false, [48, 96, 192, 384, 768], [36, 72, 144, 288, 576]);
removeInsulation(44, false, [48, 96, 192, 384, 768], [36, 72, 144, 288, 576]);
removeInsulation(47, true, [144, 288, 576, 1152, 2305], [48, 96, 192, 384, 768]);
removeInsulation(49, true, [144, 288, 576, 1152, 2305], [48, 96, 192, 384, 768]);
removeInsulation(51, true, [144, 288, 576, 1152, 2305], [48, 96, 192, 384, 768]);
removeInsulation(62, false, [72, 144, 288, 576, 1152], [36, 72, 144, 288, 576]);
removeInsulation(72, true, [72, 144, 288, 576, 1152], [48, 96, 192, 384, 768]);
removeInsulation(79, false, [48, 96, 192, 384, 768], [36, 72, 144, 288, 576]);
removeInsulation(87, false, [72, 144, 288, 576, 1152], [36, 72, 144, 288, 576]);
removeInsulation(94, false, [48, 96, 192, 384, 768], [36, 72, 144, 288, 576]);
removeInsulation(109, false, [48, 96, 192, 384, 768], [36, 72, 144, 288, 576]);
removeInsulation(112, false, [72, 144, 288, 576, 1152], [36, 72, 144, 288, 576]);
removeInsulation(127, false, [72, 144, 288, 576, 1152], [36, 72, 144, 288, 576]);
removeInsulation(133, true, [72, 144, 288, 576, 1152], [48, 96, 192, 384, 768]);
removeInsulation(180, false, [48, 96, 192, 384, 768], [36, 72, 144, 288, 576]);
removeInsulation(184, true, [72, 144, 288, 576, 1152], [48, 96, 192, 384, 768]);
removeInsulation(205, true, [144, 288, 576, 1152, 2305], [48, 96, 192, 384, 768]);
removeInsulation(235, true, [144, 288, 576, 1152, 2305], [48, 96, 192, 384, 768]);
removeInsulation(237, false, [48, 96, 192, 384, 768], [36, 72, 144, 288, 576]);

//The function that does the special rubber removals
function removeInsulation(id as int, add as bool, styrene as int[], silicone as int[], rubber2 as bool = false ) {
    print("Fixing removed rubber insulation recipes for material " + id);
    var rubber = [144, 288, 576, 1152, 2304] as int[];
    //Remove all cables from the assembling machine
    for i in 0 to 5 {
        if (i < 5) {
            //Remove recipes from the assembler for cable production
            var tierMult = pow(2, i);
            RecipeMap.getByName("assembler").findRecipe(8,
                [<gregtech:cable>.definition.makeStack(id + (i * 1000)), <gregtech:meta_item_1:32766>.withTag({Configuration: 24})],
                [<liquid:silicon_rubber> * silicone[i]]).remove();
            RecipeMap.getByName("assembler").findRecipe(8,
                [<gregtech:cable>.definition.makeStack(id + (i * 1000)), <gregtech:meta_item_1:32766>.withTag({Configuration: 24})],
                [<liquid:styrene_butadiene_rubber> * styrene[i]]).remove();
            if (rubber2) {
                RecipeMap.getByName("assembler").findRecipe(8,
                    [<gregtech:cable>.definition.makeStack(id + (i * 1000)), <gregtech:meta_item_1:32766>.withTag({Configuration: 24})],
                    [<liquid:rubber> * (2 * silicone[i])]).remove();
            }
            if(i != 0) {
                RecipeMap.getByName("assembler").findRecipe(8,
                    [<gregtech:cable>.definition.makeStack(id) * tierMult, <gregtech:meta_item_1:32766>.withTag({Configuration: (24 + i)})],
                    [<liquid:silicon_rubber> * silicone[i]]).remove();
                RecipeMap.getByName("assembler").findRecipe(8,
                    [<gregtech:cable>.definition.makeStack(id) * tierMult, <gregtech:meta_item_1:32766>.withTag({Configuration: (24 + i)})],
                    [<liquid:styrene_butadiene_rubber> * styrene[i]]).remove();
                if (rubber2) {
                    RecipeMap.getByName("assembler").findRecipe(8,
                        [<gregtech:cable>.definition.makeStack(id) * tierMult, <gregtech:meta_item_1:32766>.withTag({Configuration: (24 + i)})],
                        [<liquid:rubber> * (2 * silicone[i])]).remove();
                }
            
            }
            if(add) {
                RecipeMap.getByName("assembler").recipeBuilder()
                    .inputs([<gregtech:cable>.definition.makeStack(id + (i * 1000)), <gregtech:meta_item_1:32766>.withTag({Configuration: 24})])
                    .fluidInputs([<liquid:rubber> * (rubber[i] * 2)])
                    .outputs([<gregtech:cable>.definition.makeStack(id + ((i + 5) * 1000))])
                    .duration(150).EUt(8).buildAndRegister();
                if(i != 0) {
                    RecipeMap.getByName("assembler").recipeBuilder()
                        .inputs([<gregtech:cable>.definition.makeStack(id) * tierMult, <gregtech:meta_item_1:32766>.withTag({Configuration: (24 + i)})])
                        .fluidInputs([<liquid:rubber> * (rubber[i] * 2)])
                        .outputs([<gregtech:cable>.definition.makeStack(id + ((i + 5) * 1000))])
                        .duration(150).EUt(8).buildAndRegister();
                }
            }
        }
    }
}
