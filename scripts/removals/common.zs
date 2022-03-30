import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.gregtech.recipe.RecipeMap;



//GT Block IDs for use in removals - we can't easily autogen these from item ID so we go with this method
global gtBlockID  as IItemStack[] = [<gregtech:meta_block_compressed_0>, <gregtech:meta_block_compressed_1>, <gregtech:meta_block_compressed_2>, <gregtech:meta_block_compressed_3>, <gregtech:meta_block_compressed_4>,
                                     <gregtech:meta_block_compressed_5>, <gregtech:meta_block_compressed_6>, <gregtech:meta_block_compressed_7>, <gregtech:meta_block_compressed_8>, <gregtech:meta_block_compressed_9>,
                                     <gregtech:meta_block_compressed_10>, <gregtech:meta_block_compressed_11>, <gregtech:meta_block_compressed_12>, <gregtech:meta_block_compressed_13>, <gregtech:meta_block_compressed_14>,
                                     <gregtech:meta_block_compressed_15>, <gregtech:meta_block_compressed_16>, <gregtech:meta_block_compressed_17>, <gregtech:meta_block_compressed_18>, <gregtech:meta_block_compressed_19>,
                                     <gregtech:meta_block_compressed_20>, <gregtech:meta_block_compressed_21>, <gregtech:meta_block_compressed_22>, <gregtech:meta_block_compressed_23>, <gregtech:meta_block_compressed_24>, <gregtech:meta_block_compressed_25>, <gregtech:meta_block_compressed_26>];

/**
* Function that removes an advanced ingot tool material from the game - all tool parts and their recipes, the required stuff below it, etc
*/
function removeTool(id as int, protons as int, neutrons as int, blast as bool, cool as bool, cut as int[], ore as IItemStack, bolt as int[], products as bool[], super as bool = false, frame as IItemStack = null, keep as bool = false) {
    print("Removing tool parts for material " + id);
    var fluid = RecipeMap.getByName("fluid_extractor").findRecipe(super ? 512 : blast ? 128 : 32, [<gregtech:meta_item_1>.definition.makeStack(id + 9000)], null).fluidOutputs[0].definition;
    removeAdvancedIngot(id, protons, neutrons, blast, cool, cut, ore, bolt, products, super, frame, false, keep);
    //Remove some decomposition recipes for tool parts
    var oxygen = [120, 180, 60, 180, 120, 360, 120, 120, 240, 120, 240, 60, 180, 0, 240, 300] as int[];
    for z in 0 to 16 {
        if (z != 13) {
            removeAndHide(<gregtech:meta_item_2>.definition.makeStack(id + (z * 1000)));
            RecipeMap.getByName("macerator").findRecipe(super ? 128 : blast ? 32 : 8, [<gregtech:meta_item_2>.definition.makeStack(id + (z * 1000))], null).remove();
            RecipeMap.getByName("arc_furnace").findRecipe(super ? 480 : blast ? 120 : 30, [<gregtech:meta_item_2>.definition.makeStack(id + (z * 1000))], [<liquid:oxygen> * oxygen[z]]).remove();
            RecipeMap.getByName("fluid_extractor").findRecipe(super ? 512 : blast ? 128 : 32, [<gregtech:meta_item_2>.definition.makeStack(id + (z * 1000))], null).remove();
        }
    }
    //Remove crafting for tool and turbine parts
    RecipeMap.getByName("extruder").findRecipe(super ? 256 : 64, [<gregtech:meta_item_1>.definition.makeStack(id + 10000) * 2, <gregtech:meta_item_1:32364>], null).remove();
    RecipeMap.getByName("extruder").findRecipe(super ? 256 : 64, [<gregtech:meta_item_1>.definition.makeStack(id + 10000) * 3, <gregtech:meta_item_1:32365>], null).remove();
    RecipeMap.getByName("extruder").findRecipe(super ? 256 : 64, [<gregtech:meta_item_1>.definition.makeStack(id + 10000) * 1, <gregtech:meta_item_1:32366>], null).remove();
    RecipeMap.getByName("extruder").findRecipe(super ? 256 : 64, [<gregtech:meta_item_1>.definition.makeStack(id + 10000) * 3, <gregtech:meta_item_1:32367>], null).remove();
    RecipeMap.getByName("extruder").findRecipe(super ? 256 : 64, [<gregtech:meta_item_1>.definition.makeStack(id + 10000) * 3, <gregtech:meta_item_1:32368>], null).remove();
    RecipeMap.getByName("extruder").findRecipe(super ? 256 : 64, [<gregtech:meta_item_1>.definition.makeStack(id + 10000) * 6, <gregtech:meta_item_1:32369>], null).remove();
    RecipeMap.getByName("extruder").findRecipe(super ? 256 : 64, [<gregtech:meta_item_1>.definition.makeStack(id + 10000) * 2, <gregtech:meta_item_1:32370>], null).remove();
    RecipeMap.getByName("extruder").findRecipe(super ? 256 : 64, [<gregtech:meta_item_1>.definition.makeStack(id + 10000) * 2, <gregtech:meta_item_1:32371>], null).remove();
    RecipeMap.getByName("lathe").findRecipe(super ? 240 : 56, [<gregtech:meta_item_2>.definition.makeStack(id + 26000)], null).remove();
    if (!isNull(bolt)) RecipeMap.getByName("assembler").findRecipe(256, [<gregtech:meta_item_1>.definition.makeStack(id + 12000) * 5,
                                                                             <gregtech:meta_item_1>.definition.makeStack(id + 17000) * 2,
                                                                             <gregtech:meta_item_1:32766>.withTag({Configuration: 10})], null).remove();
    RecipeMap.getByName("assembler").findRecipe(400, [<gregtech:meta_item_2>.definition.makeStack(id + 15000) * 8, <gregtech:meta_item_2:19072>], null).remove();
}
  
/**
* Function that removes a metal of any variety that is not a tool material - fine wire, foil, you name it
*/
function removeAdvancedIngot(id as int, protons as int, neutrons as int, blast as bool, cool as bool, cut as int[], ore as IItemStack, bolt as int[], products as bool[], super as bool = false, frame as IItemStack = null, poly as bool = false, keep as bool = false) {
    var fluid = RecipeMap.getByName("fluid_extractor").findRecipe(super ? 512 : blast ? 128 : 32, [<gregtech:meta_item_1>.definition.makeStack(id + 9000)], null).fluidOutputs[0].definition;
    removeRodIngot(id, protons, neutrons, blast, cool, cut, ore, bolt, super, poly, keep);
    //Hide special products from JEI
    removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 18000));
    removeAndHide(<gregtech:meta_item_2>.definition.makeStack(id + 18000));
    removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 19000));
    removeAndHide(<gregtech:meta_item_2>.definition.makeStack(id + 16000));
    removeAndHide(<gregtech:meta_item_2>.definition.makeStack(id + 17000));
    removeAndHide(<gregtech:meta_item_2>.definition.makeStack(id + 26000));
    if (!isNull(frame))removeAndHide(frame.anyDamage());
    //Remove special product recipes
    var mult = super ? 16 : blast ? 4 : 1;
    if (products[0]) {
        RecipeMap.getByName("extruder").findRecipe(super ? 192 : 48, [<gregtech:meta_item_1>.definition.makeStack(id + 10000), <gregtech:meta_item_1:32353>], null).remove();
        RecipeMap.getByName("macerator").findRecipe(8 * mult, [<gregtech:meta_item_1>.definition.makeStack(id + 18000)], null).remove();
        RecipeMap.getByName("arc_furnace").findRecipe(30 * mult, [<gregtech:meta_item_1>.definition.makeStack(id + 18000)], [<liquid:oxygen> * 15]).remove();
        RecipeMap.getByName("fluid_extractor").findRecipe(32 * mult, [<gregtech:meta_item_1>.definition.makeStack(id + 18000)], null).remove();
    }
    if (products[1]) {
        RecipeMap.getByName("fluid_solidifier").findRecipe(20, [<gregtech:meta_item_1:32318>], [fluid * 576]).remove();
        RecipeMap.getByName("macerator").findRecipe(8 * mult, [<gregtech:meta_item_2>.definition.makeStack(id + 18000)], null).remove();
        RecipeMap.getByName("arc_furnace").findRecipe(30 * mult, [<gregtech:meta_item_2>.definition.makeStack(id + 18000)], [<liquid:oxygen> * 240]).remove();
        RecipeMap.getByName("fluid_extractor").findRecipe(32 * mult, [<gregtech:meta_item_2>.definition.makeStack(id + 18000)], null).remove();
    }
    if (products[2]) {
        RecipeMap.getByName("metal_bender").findRecipe(24, [<gregtech:meta_item_1>.definition.makeStack(id + 12000), <gregtech:meta_item_1:32766>.withTag({Configuration: 4})], null).remove();
        RecipeMap.getByName("macerator").findRecipe(8 * mult, [<gregtech:meta_item_1>.definition.makeStack(id + 19000)], null).remove();
        RecipeMap.getByName("arc_furnace").findRecipe(30 * mult, [<gregtech:meta_item_1>.definition.makeStack(id + 19000)], [<liquid:oxygen> * 15]).remove();
        RecipeMap.getByName("fluid_extractor").findRecipe(32 * mult, [<gregtech:meta_item_1>.definition.makeStack(id + 19000)], null).remove();
    }
    if (products[3]) {
        RecipeMap.getByName("wiremill").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(id + 10000)], null).remove();
        if(products[6]) RecipeMap.getByName("extruder").findRecipe(super ? 192 : 48, [<gregtech:meta_item_1>.definition.makeStack(id + 10000), <gregtech:meta_item_1:32356>], null).remove();
        RecipeMap.getByName("macerator").findRecipe(8 * mult, [<gregtech:meta_item_2>.definition.makeStack(id + 16000)], null).remove();
        RecipeMap.getByName("arc_furnace").findRecipe(30 * mult, [<gregtech:meta_item_2>.definition.makeStack(id + 16000)], [<liquid:oxygen> * 7]).remove();
        RecipeMap.getByName("fluid_extractor").findRecipe(32 * mult, [<gregtech:meta_item_2>.definition.makeStack(id + 16000)], null).remove();
    }
    if (products[4]) {
        RecipeMap.getByName("forge_hammer").findRecipe(6, [<gregtech:meta_item_1>.definition.makeStack(id + 12000)], null).remove();
        RecipeMap.getByName("fluid_solidifier").findRecipe(8, [<gregtech:meta_item_1:32317>], [fluid * 144]).remove();
        RecipeMap.getByName("macerator").findRecipe(8 * mult, [<gregtech:meta_item_2>.definition.makeStack(id + 17000)], null).remove();
        RecipeMap.getByName("arc_furnace").findRecipe(30 * mult, [<gregtech:meta_item_2>.definition.makeStack(id + 17000)], [<liquid:oxygen> * 60]).remove();
        RecipeMap.getByName("fluid_extractor").findRecipe(32 * mult, [<gregtech:meta_item_2>.definition.makeStack(id + 17000)], null).remove();
    }
    if (products[5]) {
        RecipeMap.getByName("extruder").findRecipe(super ? 256 : 64, [<gregtech:meta_item_1>.definition.makeStack(id + 10000) * 4, <gregtech:meta_item_1:32372>], null).remove();
        RecipeMap.getByName("alloy_smelter").findRecipe(super ? 64 : 16, [<gregtech:meta_item_1>.definition.makeStack(id + 10000) * 8, <gregtech:meta_item_1:32303>], null).remove();
        RecipeMap.getByName("fluid_solidifier").findRecipe(8, [<gregtech:meta_item_1:32303>], [fluid * 576]).remove();
        RecipeMap.getByName("macerator").findRecipe(8 * mult, [<gregtech:meta_item_2>.definition.makeStack(id + 26000)], null).remove();
        RecipeMap.getByName("arc_furnace").findRecipe(30 * mult, [<gregtech:meta_item_2>.definition.makeStack(id + 26000)], [<liquid:oxygen> * 240]).remove();
        RecipeMap.getByName("fluid_extractor").findRecipe(32 * mult, [<gregtech:meta_item_2>.definition.makeStack(id + 26000)], null).remove();
    }
    if (!isNull(frame)) {
        RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(id + 12000) * 3, <gregtech:meta_item_1>.definition.makeStack(id + 14000) * 5, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], null).remove();
        RecipeMap.getByName("macerator").findRecipe(8 * mult, [frame], null).remove();
        RecipeMap.getByName("arc_furnace").findRecipe(30 * mult, [frame], [<liquid:oxygen> * 82]).remove();
        RecipeMap.getByName("fluid_extractor").findRecipe(32 * mult, [frame], null).remove();
    }
}

/**
* Function that removes a rod + ingot combo and consitutent parts from the game
*/
function removeRodIngot(id as int, protons as int, neutrons as int, blast as bool, cool as bool, cut as int[], ore as IItemStack, bolt as int[], super as bool = false, poly as bool = false, keep as bool = false) {
    removeBasicIngot(id, protons, neutrons, blast, cool, true, cut, ore, super, poly, keep);
    //Hide rod products from JEI
    if(id != 298 && id != 299)
        removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 14000));
    else
        recipes.remove(<gregtech:meta_item_1>.definition.makeStack(id + 14000));
    removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 16000));
    removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 17000));
    removeAndHide(<gregtech:meta_item_2>.definition.makeStack(id + 19000));
    //Remove rod product recipes
    RecipeMap.getByName("lathe").findRecipe(16, [<gregtech:meta_item_1>.definition.makeStack(id + 10000)], null).remove();
    if (!poly) RecipeMap.getByName("extruder").findRecipe(super ? 192 : 48, [<gregtech:meta_item_1>.definition.makeStack(id + 10000), <gregtech:meta_item_1:32351>], null).remove();
    RecipeMap.getByName("macerator").findRecipe(super ? 128 : blast ? 32 : 8, [<gregtech:meta_item_1>.definition.makeStack(id + 14000)], null).remove();
    RecipeMap.getByName("arc_furnace").findRecipe(super ? 480 : blast ? 120 : 30, [<gregtech:meta_item_1>.definition.makeStack(id + 14000)], [<liquid:oxygen> * 30]).remove();
    RecipeMap.getByName("fluid_extractor").findRecipe(super ? 512 : blast ? 128 : 32, [<gregtech:meta_item_1>.definition.makeStack(id + 14000)], null).remove();
    if (!isNull(bolt)) {
        //Long rod
        RecipeMap.getByName("forge_hammer").findRecipe(16, [<gregtech:meta_item_1>.definition.makeStack(id + 14000) * 2], null).remove();
        RecipeMap.getByName("macerator").findRecipe(super ? 128 : blast ? 32 : 8, [<gregtech:meta_item_2>.definition.makeStack(id + 19000)], null).remove();
        RecipeMap.getByName("arc_furnace").findRecipe(super ? 480 : blast ? 120 : 30, [<gregtech:meta_item_2>.definition.makeStack(id + 19000)], [<liquid:oxygen> * 60]).remove();
        RecipeMap.getByName("fluid_extractor").findRecipe(super ? 512 : blast ? 128 : 32, [<gregtech:meta_item_2>.definition.makeStack(id + 19000)], null).remove();
        RecipeMap.getByName("cutting_saw").findRecipe(4, [<gregtech:meta_item_2>.definition.makeStack(id + 19000)], [<liquid:water> * bolt[3]]).remove();
        RecipeMap.getByName("cutting_saw").findRecipe(4, [<gregtech:meta_item_2>.definition.makeStack(id + 19000)], [<liquid:distilled_water> * bolt[4]]).remove();
        RecipeMap.getByName("cutting_saw").findRecipe(4, [<gregtech:meta_item_2>.definition.makeStack(id + 19000)], [<liquid:lubricant> * bolt[5]]).remove();
        //Bolt
        RecipeMap.getByName("extruder").findRecipe(120, [<gregtech:meta_item_1>.definition.makeStack(id + 10000), <gregtech:meta_item_1:32352>], null).remove();
        RecipeMap.getByName("macerator").findRecipe(super ? 128 : blast ? 32 : 8, [<gregtech:meta_item_1>.definition.makeStack(id + 16000)], null).remove();
        RecipeMap.getByName("arc_furnace").findRecipe(super ? 480 : blast ? 120 : 30, [<gregtech:meta_item_1>.definition.makeStack(id + 16000)], [<liquid:oxygen> * 7]).remove();
        RecipeMap.getByName("fluid_extractor").findRecipe(super ? 512 : blast ? 128 : 32, [<gregtech:meta_item_1>.definition.makeStack(id + 16000)], null).remove();
        RecipeMap.getByName("cutting_saw").findRecipe(4, [<gregtech:meta_item_1>.definition.makeStack(id + 14000)], [<liquid:water> * bolt[0]]).remove();
        RecipeMap.getByName("cutting_saw").findRecipe(4, [<gregtech:meta_item_1>.definition.makeStack(id + 14000)], [<liquid:distilled_water> * bolt[1]]).remove();
        RecipeMap.getByName("cutting_saw").findRecipe(4, [<gregtech:meta_item_1>.definition.makeStack(id + 14000)], [<liquid:lubricant> * bolt[2]]).remove();
        RecipeMap.getByName("cutting_saw").findRecipe(24, [<gregtech:meta_item_1>.definition.makeStack(id + 17000)], [<liquid:water> * bolt[3]]).remove();
        RecipeMap.getByName("cutting_saw").findRecipe(24, [<gregtech:meta_item_1>.definition.makeStack(id + 17000)], [<liquid:distilled_water> * bolt[4]]).remove();
        RecipeMap.getByName("cutting_saw").findRecipe(24, [<gregtech:meta_item_1>.definition.makeStack(id + 17000)], [<liquid:lubricant> * bolt[5]]).remove();
        //Screw
        RecipeMap.getByName("lathe").findRecipe(4, [<gregtech:meta_item_1>.definition.makeStack(id + 16000)], null).remove();
        RecipeMap.getByName("macerator").findRecipe(super ? 128 : blast ? 32 : 8, [<gregtech:meta_item_1>.definition.makeStack(id + 17000)], null).remove();
        RecipeMap.getByName("arc_furnace").findRecipe(super ? 480 : blast ? 120 : 30, [<gregtech:meta_item_1>.definition.makeStack(id + 17000)], [<liquid:oxygen> * 7]).remove();
        RecipeMap.getByName("fluid_extractor").findRecipe(super ? 512 : blast ? 128 : 32, [<gregtech:meta_item_1>.definition.makeStack(id + 17000)], null).remove();
    }
}
                                     
/**
* Function that removes a basic ingot and its constituent parts from the game - doesn't do cable/pipe/rotor/etc, just basic ingot parts. Does no special recipes
*/
function removeBasicIngot(id as int, protons as int, neutrons as int, blast as bool, cool as bool, plate as bool, cut as int[], ore as IItemStack, super as bool = false, poly as bool = false, keep as bool = false) {
    print("Removing ingot material for "  + id + " with" + (cool ? " supered" : blast ? " high-temperature" : "") + " smelting");
    if (!keep)
        removeDust(id, 0, protons, neutrons, true, blast, cool, false, ore, super);
    else {
        recipes.addShapeless(gtBlockID[(id/16) as int].definition.makeStack(id % 16),
            [<gregtech:meta_item_1>.definition.makeStack(id + 2000), <gregtech:meta_item_1>.definition.makeStack(id + 2000), <gregtech:meta_item_1>.definition.makeStack(id + 2000),
            <gregtech:meta_item_1>.definition.makeStack(id + 2000), <gregtech:meta_item_1>.definition.makeStack(id + 2000), <gregtech:meta_item_1>.definition.makeStack(id + 2000),
            <gregtech:meta_item_1>.definition.makeStack(id + 2000), <gregtech:meta_item_1>.definition.makeStack(id + 2000), <gregtech:meta_item_1>.definition.makeStack(id + 2000)]);
    }
    var fluid = RecipeMap.getByName("fluid_extractor").findRecipe(super ? 512 : blast ? 128 : 32, [<gregtech:meta_item_1>.definition.makeStack(id + 9000)], null).fluidOutputs[0].definition;
    //Hide ingot/etc in JEI
    removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 9000));
    removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 10000));
    if (cool) removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 11000));
    if (plate) removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 12000));
    //Remove smelting recipes for ingots & nuggets
    if (!blast) { 
        furnace.remove(<gregtech:meta_item_1>.definition.makeStack(id + 10000));
        furnace.remove(<gregtech:meta_item_1>.definition.makeStack(id + 9000));
    }
    if (cool) RecipeMap.getByName("vacuum_freezer").findRecipe(120, [<gregtech:meta_item_1>.definition.makeStack(id + 11000)], [null]).remove();
    //Remove maceration recipes for ingot-type components\
    RecipeMap.getByName("macerator").findRecipe(super ? 128 : 32, [<gregtech:meta_item_1>.definition.makeStack(id + 9000)], null).remove();
    RecipeMap.getByName("macerator").findRecipe(super ? 128 : 32, [<gregtech:meta_item_1>.definition.makeStack(id + 10000)], null).remove();
    if (plate) RecipeMap.getByName("macerator").findRecipe(super ? 128 : 32, [<gregtech:meta_item_1>.definition.makeStack(id + 12000)], null).remove();
    //Remove block recipes
    RecipeMap.getByName("unpacker").findRecipe(8, [gtBlockID[(id/16) as int].definition.makeStack(id % 16), <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], null).remove();
    RecipeMap.getByName("alloy_smelter").findRecipe(super ? 128 : 32, [<gregtech:meta_item_1>.definition.makeStack(id + 10000) * 9, <gregtech:meta_item_1:32308>], null).remove();
    RecipeMap.getByName("extruder").findRecipe(super ? 256 : 64, [<gregtech:meta_item_1>.definition.makeStack(id + 10000) * 9, <gregtech:meta_item_1:32363>], null).remove();
    //Remove melting & forming recipes
    RecipeMap.getByName("fluid_extractor").findRecipe(super ? 512 : blast ? 128 : 32, [<gregtech:meta_item_1>.definition.makeStack(id + 9000)], null).remove();
    RecipeMap.getByName("fluid_extractor").findRecipe(super ? 512 : blast ? 128 : 32, [<gregtech:meta_item_1>.definition.makeStack(id + 10000)], null).remove();
    RecipeMap.getByName("fluid_extractor").findRecipe(super ? 512 : blast ? 128 : 32, [gtBlockID[(id/16) as int].definition.makeStack(id % 16)], null).remove();
    if (plate) RecipeMap.getByName("fluid_extractor").findRecipe(super ? 512 : blast ? 128 : 32, [<gregtech:meta_item_1>.definition.makeStack(id + 12000)], null).remove();
    RecipeMap.getByName("fluid_solidifier").findRecipe(8, [<gregtech:meta_item_1:32309>], [fluid * 144]).remove();
    RecipeMap.getByName("fluid_solidifier").findRecipe(8, [<gregtech:meta_item_1:32306>], [fluid * 144]).remove();
    RecipeMap.getByName("fluid_solidifier").findRecipe(8, [<gregtech:meta_item_1:32308>], [fluid * 1296]).remove();
    if (plate) RecipeMap.getByName("fluid_solidifier").findRecipe(8, [<gregtech:meta_item_1:32301>], [fluid * 144]).remove();
    //Remove pack/unpack recipes
    RecipeMap.getByName("unpacker").findRecipe(12, [<gregtech:meta_item_1>.definition.makeStack(id + 10000), <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], null).remove();
    RecipeMap.getByName("unpacker").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(id + 10000), <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], null).remove();
    RecipeMap.getByName("packer").findRecipe(12, [<gregtech:meta_item_1>.definition.makeStack(id + 9000) * 9, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], null).remove();
    RecipeMap.getByName("packer").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(id + 9000) * 9, <gtadditions:ga_meta_item:32133>], null).remove();
    //Arc furnacing of plates
    if (plate) RecipeMap.getByName("arc_furnace").findRecipe(super ? 480 : blast ? 120 : 30, [<gregtech:meta_item_1>.definition.makeStack(id + 12000)], [<liquid:oxygen> * 60]).remove();
    //Remove platemaking recipes
    if (plate) {
        if (!poly) {
            RecipeMap.getByName("alloy_smelter").findRecipe(super ? 64 : 16, [<gregtech:meta_item_1>.definition.makeStack(id + 10000) * 2, <gregtech:meta_item_1:32301>], null).remove();
            RecipeMap.getByName("extruder").findRecipe(super ? 256 : 64, [<gregtech:meta_item_1>.definition.makeStack(id + 10000), <gregtech:meta_item_1:32350>], null).remove();
            RecipeMap.getByName("metal_bender").findRecipe(24, [<gregtech:meta_item_1>.definition.makeStack(id + 10000), <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
            RecipeMap.getByName("forge_hammer").findRecipe(16, [<gregtech:meta_item_1>.definition.makeStack(id + 10000) * 3], null).remove();
        }
        RecipeMap.getByName("cutting_saw").findRecipe(30, [gtBlockID[(id/16) as int].definition.makeStack(id % 16)], [<liquid:water> * cut[0]]).remove();
        RecipeMap.getByName("cutting_saw").findRecipe(30, [gtBlockID[(id/16) as int].definition.makeStack(id % 16)], [<liquid:distilled_water> * cut[1]]).remove();
        RecipeMap.getByName("cutting_saw").findRecipe(30, [gtBlockID[(id/16) as int].definition.makeStack(id % 16)], [<liquid:lubricant> * cut[2]]).remove();
    }
}

/**
* Function that removes a gem and its constituent parts from the game - this does the whole shebang
*/
function removeGem(id as int, size as int, protons as int, neutrons as int, electrolyze as bool, tool as bool, ore as IItemStack, cut as int[], lens as bool = true, rod as bool = true) {
    print("Removing gem material for " + id);
    removeDust(id, size, protons, neutrons, false, false, false, electrolyze, ore, false, true);
    //Hide components from JEI
    removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 8000));
    removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 12000));
    removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 14000));
    removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 15000));
    removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 16000));
    removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 17000));
    removeAndHide(<gregtech:meta_item_2>.definition.makeStack(id + 19000));
    removeAndHide(<gregtech:meta_item_2>.definition.makeStack(id + 22000));
    removeAndHide(<gregtech:meta_item_2>.definition.makeStack(id + 23000));
    removeAndHide(<gregtech:meta_item_2>.definition.makeStack(id + 24000));
    removeAndHide(<gregtech:meta_item_2>.definition.makeStack(id + 25000));
    //Hide tool parts from JEI
    if (tool) {
        for t in 0 to 16 {
            if (t != 13) {
                removeAndHide(<gregtech:meta_item_2>.definition.makeStack(id + (t * 1000)));
                RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_2>.definition.makeStack(id + (t * 1000))], null).remove();
            }
        }
    }
    //Gem production recipes
    furnace.remove(<gregtech:meta_item_1>.definition.makeStack(id + 8000));
    if (id != 203) RecipeMap.getByName("implosion_compressor").findRecipe(30, [<gregtech:meta_item_1>.definition.makeStack(id + 2000) * 4, <minecraft:tnt> * 2], null).remove();
    //Remove forge hammer recipes for gems
    RecipeMap.getByName("forge_hammer").findRecipe(16, [<gregtech:meta_item_1>.definition.makeStack(id + 8000)], null).remove();
    if (rod) RecipeMap.getByName("forge_hammer").findRecipe(16, [<gregtech:meta_item_1>.definition.makeStack(id + 14000) * 2], null).remove();
    RecipeMap.getByName("forge_hammer").findRecipe(16, [<gregtech:meta_item_2>.definition.makeStack(id + 23000)], null).remove();
    RecipeMap.getByName("forge_hammer").findRecipe(16, [<gregtech:meta_item_2>.definition.makeStack(id + 24000)], null).remove();
    RecipeMap.getByName("forge_hammer").findRecipe(16, [<gregtech:meta_item_2>.definition.makeStack(id + 25000)], null).remove();
    RecipeMap.getByName("forge_hammer").findRecipe(24, [gtBlockID[(id/16) as int].definition.makeStack(id % 16)], null).remove();
    //Remove macerator recipes
    RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(id + 8000)], null).remove();
    if (id != 203) RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(id + 12000)], null).remove();
    if (rod) RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(id + 14000)], null).remove();
    if (lens) RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(id + 15000)], null).remove();
    if (rod) RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(id + 16000)], null).remove();
    if (rod) RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_2>.definition.makeStack(id + 19000)], null).remove();
    RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_2>.definition.makeStack(id + 22000)], null).remove();
    RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_2>.definition.makeStack(id + 23000)], null).remove();
    RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_2>.definition.makeStack(id + 24000)], null).remove();
    RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_2>.definition.makeStack(id + 25000)], null).remove();
    //Remove lathe and other recipes for gems
    if (rod) RecipeMap.getByName("lathe").findRecipe(16, [<gregtech:meta_item_1>.definition.makeStack(id + 8000)], null).remove();
    if (lens) RecipeMap.getByName("lathe").findRecipe(16, [<gregtech:meta_item_1>.definition.makeStack(id + 12000)], null).remove();
    //Cutting saw
    if (rod) {
        //Long rod
        RecipeMap.getByName("cutting_saw").findRecipe(4, [<gregtech:meta_item_2>.definition.makeStack(id + 19000)], [<liquid:water> * 4]).remove();
        RecipeMap.getByName("cutting_saw").findRecipe(4, [<gregtech:meta_item_2>.definition.makeStack(id + 19000)], [<liquid:distilled_water> * 3]).remove();
        RecipeMap.getByName("cutting_saw").findRecipe(4, [<gregtech:meta_item_2>.definition.makeStack(id + 19000)], [<liquid:lubricant> * 1]).remove();
        //Bolt
        RecipeMap.getByName("cutting_saw").findRecipe(4, [<gregtech:meta_item_1>.definition.makeStack(id + 14000)], [<liquid:water> * 4]).remove();
        RecipeMap.getByName("cutting_saw").findRecipe(4, [<gregtech:meta_item_1>.definition.makeStack(id + 14000)], [<liquid:distilled_water> * 3]).remove();
        RecipeMap.getByName("cutting_saw").findRecipe(4, [<gregtech:meta_item_1>.definition.makeStack(id + 14000)], [<liquid:lubricant> * 1]).remove();
    }
    //Plate
    if (id != 203 && id != 85) {
        RecipeMap.getByName("cutting_saw").findRecipe(30, [gtBlockID[(id/16) as int].definition.makeStack(id % 16)], [<liquid:water> * cut[0]]).remove();
        RecipeMap.getByName("cutting_saw").findRecipe(30, [gtBlockID[(id/16) as int].definition.makeStack(id % 16)], [<liquid:distilled_water> * cut[1]]).remove();
        RecipeMap.getByName("cutting_saw").findRecipe(30, [gtBlockID[(id/16) as int].definition.makeStack(id % 16)], [<liquid:lubricant> * cut[2]]).remove();
    }
}

/**
* Function that removes a dust and its constituent parts from the game - this does nothing about _ingot_ parts, just dust. Does no special recipes
*/
function removeDust(id as int, size as int, protons as int, neutrons as int, ingot as bool, blast as bool, cool as bool, electrolyze as bool, ore as IItemStack, super as bool = false, gem as bool = false) {
    if (!ingot && !gem) print("Removing dust material for " + id);
    if (!isNull(ore)) removeOre(id, ore, gem, ingot);
    //Hide the requisite items from JEI
    removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id));
    removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 1000));
    removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 2000));
    removeAndHide(gtBlockID[(id/16) as int].definition.makeStack(id % 16));
    //Remove recipes for the block and for block decomposition
    if (!ingot && !gem) RecipeMap.getByName("unpacker").findRecipe(8, [gtBlockID[(id/16) as int].definition.makeStack(id % 16), <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], null).remove();
    RecipeMap.getByName("macerator").findRecipe(super ? 128 : ingot ? 32 : 8, [gtBlockID[(id/16) as int].definition.makeStack(id % 16)], null).remove();
    if (!ingot && !gem) RecipeMap.getByName("forge_hammer").findRecipe(24, [gtBlockID[(id/16) as int].definition.makeStack(id % 16)], null).remove();
    //Remove recipes for tiny and small dusts
    RecipeMap.getByName("unpacker").findRecipe(12, [<gregtech:meta_item_1>.definition.makeStack(id + 2000), <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], null).remove();
    RecipeMap.getByName("unpacker").findRecipe(12, [<gregtech:meta_item_1>.definition.makeStack(id + 2000), <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], null).remove();
    //Remove recipes for packing dust
    RecipeMap.getByName("packer").findRecipe(12, [<gregtech:meta_item_1>.definition.makeStack(id) * 9, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], null).remove();
    RecipeMap.getByName("packer").findRecipe(12, [<gregtech:meta_item_1>.definition.makeStack(id + 1000) * 4, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], null).remove();
    RecipeMap.getByName("packer").findRecipe(12, [<gregtech:meta_item_1>.definition.makeStack(id) * 9, <gtadditions:ga_meta_item:32134>], null).remove();
    RecipeMap.getByName("packer").findRecipe(12, [<gregtech:meta_item_1>.definition.makeStack(id + 1000) * 4, <gtadditions:ga_meta_item:32134>], null).remove();
    //Remove production/destruction recipes [electrolyser, replication]
    if(electrolyze && id != 191) RecipeMap.getByName("electrolyzer").findRecipe(((size < 4 && id != 107) || (ingot && size < 6)) ? 30 : 60, [<gregtech:meta_item_1>.definition.makeStack(id + 2000) * size], null).remove();
    else if (id == 191) RecipeMap.getByName("electrolyzer").findRecipe(1920, [<gregtech:meta_item_1>.definition.makeStack(id + 2000) * size], [<liquid:hydrogen> * 7000]).remove();
    if (protons != 0 && neutrons != 0) {
        RecipeMap.getByName("mass_fab").findRecipe(32, [<gregtech:meta_item_1>.definition.makeStack(id + 2000)], null).remove();
        RecipeMap.getByName("replicator").findRecipe(32, [<gregtech:meta_item_1>.definition.makeStack(id + 2000)], [<liquid:neutral_matter> * neutrons, <liquid:positive_matter> * protons]).remove();
    }
}

/**
* Function that removes an ore from the game - nothing but an ore, but an ore
*/
function removeOre(id as int, ore as IItemStack, gem as bool = false, ingot as bool = false, item as IItemStack = null) {
    //Hide ore & crushed vairants in JEI
    removeAndHide(ore.anyDamage());
    removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 3000));
    removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 4000));
    removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 5000));
    removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 6000));
    //Remove from macerator & forge hammer processing processing
    for q in 3 to 14 { // We need to skip some because the recipes are added by OD so get removed for multiple metas at a time
        if (q != 5 && q != 9) {
            RecipeMap.getByName("macerator").findRecipe(12, [ore.definition.makeStack(q)], null).remove();
            RecipeMap.getByName("forge_hammer").findRecipe(6, [ore.definition.makeStack(q)], null).remove();
            furnace.remove(!isNull(item) ? item : <gregtech:meta_item_1>.definition.makeStack(id + (gem ? 8000 : ingot ? 10000 : 2000)));
            if (ingot) furnace.addRecipe(<gregtech:meta_item_1>.definition.makeStack(id + 10000), <gregtech:meta_item_1>.definition.makeStack(id + 2000));
        }
    }
    RecipeMap.getByName("macerator").findRecipe(12, [<gregtech:meta_item_1>.definition.makeStack(id + 5000)], null).remove();
    RecipeMap.getByName("macerator").findRecipe(12, [<gregtech:meta_item_1>.definition.makeStack(id + 6000)], null).remove();
    RecipeMap.getByName("forge_hammer").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(id + 5000)], null).remove();
    RecipeMap.getByName("forge_hammer").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(id + 6000)], null).remove();
    //Remove from other processing
    RecipeMap.getByName("orewasher").findRecipe(16, [<gregtech:meta_item_1>.definition.makeStack(id + 5000)], [<liquid:water> * 1000]).remove();
    RecipeMap.getByName("orewasher").findRecipe(16, [<gregtech:meta_item_1>.definition.makeStack(id + 5000)], [<liquid:distilled_water> * 1000]).remove();
    RecipeMap.getByName("centrifuge").findRecipe(24, [<gregtech:meta_item_1>.definition.makeStack(id + 3000)], null).remove();
    RecipeMap.getByName("centrifuge").findRecipe(5, [<gregtech:meta_item_1>.definition.makeStack(id + 4000)], null).remove();
}

/**
* Our trusty old "make a function to remove stuff" function - gets rid of all wires and all recipes
*/
function removeCable(id as int, fine as bool, mult as int, rubber as bool, styrene as bool) as void {
    print("Removing cable for material " + id as string + " with " + (rubber ? 3 : styrene ? 2: 1) as string + " rubber types and " + (fine ? "" : "no ") as string + "fine wire");
    //Oxygen levels for cables
    var oxygen = [30, 60, 120, 240, 480] as int[];
    var rubbers = [36, 72, 144, 288, 576] as int[];
    //Remove all cables from the packer and the bundler
    for i in 0 to 10 {
        removeAndHide(<gregtech:cable>.definition.makeStack(id + (i * 1000)));
        if (i < 3 || (i > 4 && i < 8)) {
            RecipeMap.getByName("packer"). findRecipe(4, [<gregtech:cable>.definition.makeStack(id + (i * 1000)) * 4, <gtadditions:ga_meta_item:32132>], null).remove();
        }
        if (i < 4) {
            var power = 1;
            for j in 1 to (5 - i) {
                power *= 2;
                RecipeMap.getByName("bundler").findRecipe(12, [<gregtech:cable>.definition.makeStack(id + (i * 1000)) * power, <gregtech:meta_item_1:32766>.withTag({Configuration: j})], null).remove();
            }
        }
        if (i < 5) {
            //Remove recipes from the assembler for cable production
            var rubberMult = !styrene ? 4 : !rubber ? 2 : 1;
            var tierMult = pow(2, i);
            RecipeMap.getByName("assembler").findRecipe(8,
                [<gregtech:cable>.definition.makeStack(id + (i * 1000)), <gregtech:meta_item_1:32766>.withTag({Configuration: 24})],
                [<liquid:silicon_rubber> * (rubbers[i] * rubberMult)]).remove();
            if(styrene) RecipeMap.getByName("assembler").findRecipe(8,
                [<gregtech:cable>.definition.makeStack(id + (i * 1000)), <gregtech:meta_item_1:32766>.withTag({Configuration: 24})],
                [<liquid:styrene_butadiene_rubber> * (rubbers[i] * 2 * rubberMult)]).remove();
            if(rubber) RecipeMap.getByName("assembler").findRecipe(8,
                [<gregtech:cable>.definition.makeStack(id + (i * 1000)), <gregtech:meta_item_1:32766>.withTag({Configuration: 24})],
                [<liquid:rubber> * (rubbers[i] * 4 * rubberMult)]).remove();
            if(i != 0) {
                RecipeMap.getByName("assembler").findRecipe(8,
                    [<gregtech:cable>.definition.makeStack(id) * tierMult, <gregtech:meta_item_1:32766>.withTag({Configuration: (24 + i)})],
                    [<liquid:silicon_rubber> * (rubbers[i] * rubberMult)]).remove();
                if(styrene) RecipeMap.getByName("assembler").findRecipe(8,
                    [<gregtech:cable>.definition.makeStack(id) * tierMult, <gregtech:meta_item_1:32766>.withTag({Configuration: (24 + i)})],
                    [<liquid:styrene_butadiene_rubber> * (rubbers[i] * 2 * rubberMult)]).remove();
                if(rubber) RecipeMap.getByName("assembler").findRecipe(8,
                    [<gregtech:cable>.definition.makeStack(id) * tierMult, <gregtech:meta_item_1:32766>.withTag({Configuration: (24 + i)})],
                    [<liquid:rubber> * (rubbers[i] * 4 * rubberMult)]).remove();
            
            }
        }
        //Recycling
        RecipeMap.getByName("macerator").findRecipe(8 * mult * mult, [<gregtech:cable>.definition.makeStack(id + (i * 1000))], null).remove();
        RecipeMap.getByName("fluid_extractor").findRecipe(32 * mult * mult, [<gregtech:cable>.definition.makeStack(id + (i * 1000))], null).remove();
        RecipeMap.getByName("arc_furnace").findRecipe(30 * mult * mult, [<gregtech:cable>.definition.makeStack(id + (i * 1000))], [<liquid:oxygen> * oxygen[i % 5]]).remove();
    }
    //Remove and retool wire/fine wire recipes
    RecipeMap.getByName("wiremill").findRecipe(8 * mult, [<gregtech:meta_item_1>.definition.makeStack(id + 10000)], null).remove();
    RecipeMap.getByName("extruder").findRecipe(48 * mult, [<gregtech:meta_item_1>.definition.makeStack(id + 10000), <gregtech:meta_item_1:32356>], null).remove();
    if(fine) {
        RecipeMap.getByName("wiremill").findRecipe(8,[<gregtech:cable>.definition.makeStack(id)], null).remove();
        RecipeMap.getByName("wiremill").recipeBuilder()
            .inputs([<gregtech:meta_item_1>.definition.makeStack(id + 10000)])
            .outputs([<gregtech:meta_item_2>.definition.makeStack(id + 16000) * 8])
            .duration(400).EUt(8).buildAndRegister();
        RecipeMap.getByName("extruder").recipeBuilder()
            .inputs([<gregtech:meta_item_1>.definition.makeStack(id + 10000), <gregtech:meta_item_1:32356>])
            .outputs([<gregtech:meta_item_2>.definition.makeStack(id + 16000) * 8])
            .duration(800).EUt(48 * mult).buildAndRegister();
    }
}

/**
* Our trusty old "make a function to remove stuff" function - gets rid of all wires and all recipes
*/
function removePipe(id as int, mult as int) as void {
    print("Removing pipe for material " + id as string);
    //Oxygen levels for cables
    var oxygen = [30, 60, 180, 360] as int[];
    //Remove all cables from the packer and the bundler
    for y in 0 to 4 {
        removeAndHide(<gregtech:fluid_pipe>.definition.makeStack(id + (y * 1000)));
        RecipeMap.getByName("extruder").findRecipe(48, [<gregtech:meta_item_1>.definition.makeStack(id + 10000) * (y == 3 ? 6 : 3), <gregtech:meta_item_1>.definition.makeStack(32358 + y)], null).remove();
        //Recycling
        RecipeMap.getByName("macerator").findRecipe(8 * mult * mult, [<gregtech:fluid_pipe>.definition.makeStack(id + (y * 1000))], null).remove();
        RecipeMap.getByName("fluid_extractor").findRecipe(32 * mult * mult, [<gregtech:fluid_pipe>.definition.makeStack(id + (y * 1000))], null).remove();
        RecipeMap.getByName("arc_furnace").findRecipe(30 * mult * mult, [<gregtech:fluid_pipe>.definition.makeStack(id + (y * 1000))], [<liquid:oxygen> * oxygen[y]]).remove();
    }
}

/**
* Another remove everything function, this one removes all recipes and items from JEI that would go through the now-disabled thermal centrifuge. The centrifuge did shit all so it goes
*/
function removeAllCentrifugedOres() as void {
    var ids = [1, 7, 8, 17, 18, 26, 32, 33, 35, 36, 41, 42, 44, 45, 47, 49, 51, 62, 65, 69, 71, 75, 76, 79, 85, 90, 92, 96, 97, 98, 99, 100, 102, 103, 106, 107, 108, 111, 113, 114, 115, 117, 118, 121, 122, 123, 128, 130, 131, 132, 139, 146, 148, 149, 150, 151, 154, 155, 156, 157, 158, 161, 181, 182, 185, 187, 188, 190, 191, 193, 198, 199, 201, 202, 203, 204, 206, 211, 212, 213, 214, 215, 216, 224, 226, 239, 243, 244, 247, 255, 270, 271, 272, 274, 275, 278, 280, 281, 282, 286, 294, 295, 307, 309, 324, 358, 359, 360, 361, 362, 363, 983, 984] as int[];
    print("Removing all centrifuged ores from JEI as well as their recipes");
    for id in ids {
        removeAndHide(<gregtech:meta_item_1>.definition.makeStack(id + 7000));
        recipes.removeShapeless(<gregtech:meta_item_1>.anyDamage(), [<gregtech:meta_item_1>.definition.makeStack(id + 7000)], true);
        RecipeMap.getByName("macerator").findRecipe(12, [<gregtech:meta_item_1>.definition.makeStack(id + 7000)], null).remove();
        RecipeMap.getByName("forge_hammer").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(id + 7000)], null).remove();
    }
}

/**
* Retools all sifter recipes to not have or use flawed or chipped gems, instead producing small and tiny dusts and removing flawed/chips from JEI
*/
function recalibrateAllSifterRecipes() as void {
    var ids = [103, 106, 111, 113, 122, 128, 154, 161, 201, 202, 209, 211, 216, 226, 281, 357] as int[];
    print("Removing all chipped and flawed gems from JEI as well as their recipes");
    //Remove default recipes
    recipes.removeByRegex(".*(exquisite).*");
    recipes.removeByRegex(".*(flawless).*");
    for recipe in RecipeMap.getByName("sifter").recipes {
       recipe.remove();
    }
    for id in ids {
        //Hide from JEI
        removeAndHide(<gregtech:meta_item_2>.definition.makeStack(id + 22000));
        removeAndHide(<gregtech:meta_item_2>.definition.makeStack(id + 23000));
        removeAndHide(<gregtech:meta_item_2>.definition.makeStack(id + 24000));
        removeAndHide(<gregtech:meta_item_2>.definition.makeStack(id + 25000));
        //Remove recipes with only gregtech components
        RecipeMap.getByName("forge_hammer").findRecipe(16, [<gregtech:meta_item_2>.definition.makeStack(id + 23000)], null).remove();
        RecipeMap.getByName("forge_hammer").findRecipe(16, [<gregtech:meta_item_2>.definition.makeStack(id + 24000)], null).remove();
        RecipeMap.getByName("forge_hammer").findRecipe(16, [<gregtech:meta_item_2>.definition.makeStack(id + 25000)], null).remove();
        RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_2>.definition.makeStack(id + 22000)], null).remove();
        RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_2>.definition.makeStack(id + 23000)], null).remove();
        RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_2>.definition.makeStack(id + 24000)], null).remove();
        RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_2>.definition.makeStack(id + 25000)], null).remove();
        //Retool the actual sifter recipes
        if (id != 209 && id != 357 && id != 122) {
        //Sifter recipes for both washed and unwashed ore - washed is better for gems, unwashed is better for total yield
            if (id != 111 && id != 113 && id != 216 && id != 106 && id != 201) {
                RecipeMap.getByName("forge_hammer").findRecipe(16, [<gregtech:meta_item_1>.definition.makeStack(id + 8000)], null).remove();
                RecipeMap.getByName("sifter").recipeBuilder()
                    .inputs([<gregtech:meta_item_1>.definition.makeStack(id + 5000)])
                    .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 8000) * 4, 300, 60)
                    .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 8000) * 2, 600, 120)
                    .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 8000), 1200, 240)
                    .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 3000), 2700, 350)
                    .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 1000), 5400, 770)
                    .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id) * 3, 10000, 0)
                    .duration(800).EUt(16).buildAndRegister();
                RecipeMap.getByName("sifter").recipeBuilder()
                    .inputs([<gregtech:meta_item_1>.definition.makeStack(id + 6000)])
                    .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 8000) * 4, 400, 80)
                    .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 8000) * 2, 800, 160)
                    .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 8000), 1600, 320)
                    .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 4000), 2500, 320)
                    .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 1000), 3500, 500)
                    .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id), 10000, 0)
                    .duration(800).EUt(16).buildAndRegister();
            } else {//Vanilla gems my beloathed
                if (id == 111) {
                    RecipeMap.getByName("forge_hammer").findRecipe(16, [<minecraft:diamond>], null).remove();
                    RecipeMap.getByName("sifter").recipeBuilder()
                        .inputs([<gregtech:meta_item_1>.definition.makeStack(id + 5000)])
                        .chancedOutput(<minecraft:diamond> * 4, 300, 60)
                        .chancedOutput(<minecraft:diamond> * 2, 600, 120)
                        .chancedOutput(<minecraft:diamond>, 1200, 240)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 3000), 2700, 350)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 1000), 5400, 770)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id) * 3, 10000, 0)
                        .duration(800).EUt(16).buildAndRegister();
                    RecipeMap.getByName("sifter").recipeBuilder()
                        .inputs([<gregtech:meta_item_1>.definition.makeStack(id + 6000)])
                        .chancedOutput(<minecraft:diamond> * 4, 400, 80)
                        .chancedOutput(<minecraft:diamond> * 2, 800, 160)
                        .chancedOutput(<minecraft:diamond>, 1600, 320)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 4000), 2500, 320)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 1000), 3500, 500)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id), 10000, 0)
                        .duration(800).EUt(16).buildAndRegister();
                } else if (id == 113) {
                    RecipeMap.getByName("forge_hammer").findRecipe(16, [<minecraft:emerald>], null).remove();
                    RecipeMap.getByName("sifter").recipeBuilder()
                        .inputs([<gregtech:meta_item_1>.definition.makeStack(id + 5000)])
                        .chancedOutput(<minecraft:emerald> * 4, 300, 60)
                        .chancedOutput(<minecraft:emerald> * 2, 600, 120)
                        .chancedOutput(<minecraft:emerald>, 1200, 240)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 3000), 2700, 350)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 1000), 5400, 770)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id) * 3, 10000, 0)
                        .duration(800).EUt(16).buildAndRegister();
                    RecipeMap.getByName("sifter").recipeBuilder()
                        .inputs([<gregtech:meta_item_1>.definition.makeStack(id + 6000)])
                        .chancedOutput(<minecraft:emerald> * 4, 400, 80)
                        .chancedOutput(<minecraft:emerald> * 2, 800, 160)
                        .chancedOutput(<minecraft:emerald>, 1600, 320)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 4000), 2500, 320)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 1000), 3500, 500)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id), 10000, 0)
                        .duration(800).EUt(16).buildAndRegister();
                } else if (id == 216) {
                    RecipeMap.getByName("forge_hammer").findRecipe(16, [<minecraft:dye:4>], null).remove();
                    RecipeMap.getByName("sifter").recipeBuilder()
                        .inputs([<gregtech:meta_item_1>.definition.makeStack(id + 5000)])
                        .chancedOutput(<minecraft:dye:4> * 4, 300, 60)
                        .chancedOutput(<minecraft:dye:4> * 2, 600, 120)
                        .chancedOutput(<minecraft:dye:4>, 1200, 240)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 3000), 2700, 350)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 1000), 5400, 770)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id) * 3, 10000, 0)
                        .duration(800).EUt(16).buildAndRegister();
                    RecipeMap.getByName("sifter").recipeBuilder()
                        .inputs([<gregtech:meta_item_1>.definition.makeStack(id + 6000)])
                        .chancedOutput(<minecraft:dye:4> * 4, 400, 80)
                        .chancedOutput(<minecraft:dye:4> * 2, 800, 160)
                        .chancedOutput(<minecraft:dye:4>, 1600, 320)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 4000), 2500, 320)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 1000), 3500, 500)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id), 10000, 0)
                        .duration(800).EUt(16).buildAndRegister();
                } else if (id == 106) {
                    RecipeMap.getByName("forge_hammer").findRecipe(16, [<minecraft:coal>], null).remove();
                    RecipeMap.getByName("sifter").recipeBuilder()
                        .inputs([<gregtech:meta_item_1>.definition.makeStack(id + 5000)])
                        .chancedOutput(<minecraft:coal> * 4, 300, 60)
                        .chancedOutput(<minecraft:coal> * 2, 600, 120)
                        .chancedOutput(<minecraft:coal>, 1200, 240)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 3000), 2700, 350)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 1000), 5400, 770)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id) * 3, 10000, 0)
                        .duration(800).EUt(16).buildAndRegister();
                    RecipeMap.getByName("sifter").recipeBuilder()
                        .inputs([<gregtech:meta_item_1>.definition.makeStack(id + 6000)])
                        .chancedOutput(<minecraft:coal> * 4, 400, 80)
                        .chancedOutput(<minecraft:coal> * 2, 800, 160)
                        .chancedOutput(<minecraft:coal>, 1600, 320)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 4000), 2500, 320)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 1000), 3500, 500)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id), 10000, 0)
                        .duration(800).EUt(16).buildAndRegister();
                } else if (id == 111) {
                    RecipeMap.getByName("forge_hammer").findRecipe(16, [<minecraft:quartz>], null).remove();
                    RecipeMap.getByName("sifter").recipeBuilder()
                        .inputs([<gregtech:meta_item_1>.definition.makeStack(id + 5000)])
                        .chancedOutput(<minecraft:quartz> * 4, 300, 60)
                        .chancedOutput(<minecraft:quartz> * 2, 600, 120)
                        .chancedOutput(<minecraft:quartz>, 1200, 240)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 3000), 2700, 350)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 1000), 5400, 770)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id) * 3, 10000, 0)
                        .duration(800).EUt(16).buildAndRegister();
                    RecipeMap.getByName("sifter").recipeBuilder()
                        .inputs([<gregtech:meta_item_1>.definition.makeStack(id + 6000)])
                        .chancedOutput(<minecraft:quartz> * 4, 400, 80)
                        .chancedOutput(<minecraft:quartz> * 2, 800, 160)
                        .chancedOutput(<minecraft:quartz>, 1600, 320)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 4000), 2500, 320)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id + 1000), 3500, 500)
                        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(id), 10000, 0)
                        .duration(800).EUt(16).buildAndRegister();
                }
            }
        }
    }
}
