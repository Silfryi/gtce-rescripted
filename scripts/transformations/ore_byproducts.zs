import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialRegistry;



print("Transforming many ore byproducts to avoid nonexistent materials or materials they're no longer associated with");

/**
* Transform ore byproducts for registered minerals
*/
//Ores whose byproducts need changing
retoolByproducts(146, <gregtech:ore_powellite_0>         , 2 , 100, 239, 239);
retoolByproducts(271, <gregtech:ore_pentlandite_0>       , 4 , 148, 112, 108);
retoolByproducts(100, <gregtech:ore_chalcopyrite_0>      , 8 , 148, 13 , 26);
retoolByproducts(360, <gregtech:ore_bornite_0>           , 4 , 148, 13 , 112);
retoolByproducts(295, <gregtech:ore_soapstone_0>         , 6 , 294, 102, 289);
retoolByproducts(359, <gregtech:ore_cuprite_0>           , 4 , 90 , 185, 185);
retoolByproducts(204, <gregtech:ore_graphite_0>          , 2 , 357, 111, 111);
retoolByproducts(255, <gregtech:ore_vanadium_magnetite_0>, 2 , 131, 102, 121);
retoolByproducts(158, <gregtech:ore_scheelite_0>         , 4 , 220, 239, 239);
retoolByproducts(115, <gregtech:ore_garnierite_0>        , 4 , 294, 460, 460);
retoolByproducts(108, <gregtech:ore_cooperite_0>         , 4 , 271, 100, 112);
retoolByproducts(983, <gregtech:ore_sperrylite_0>        , 2 , 271, 148, 112);
retoolByproducts(984, <gregtech:ore_sperrylite_omeiite_0>, 2 , 271, 148, 51);
retoolByproducts(154, <gregtech:ore_ruby_0>              , 2 , 103, 102, 215);
retoolByproducts(270, <gregtech:ore_bastnasite_0>        , 4 , 97 , 81 , 326);
retoolByproducts(281, <gregtech:ore_monazite_0>          , 16, 239, 220, 326);
retoolByproducts(182, <gregtech:ore_sphalerite_0>        , 4 , 13 , 25 , 148);
retoolByproducts(121, <gregtech:ore_ilmenite_0>          , 6 , 131, 102, 255);
retoolByproducts(102, <gregtech:ore_chromite_0>          , 2 , 131, 460, 121);
retoolByproducts(294, <gregtech:ore_talc_0>              , 2 , 295, 102, 289);
retoolByproducts(286, <gregtech:ore_barite_0>            , 2 , 269, 114, 114);
retoolByproducts(106, <gregtech:ore_coal_0>              , 4 , 211, 25 , 211);
retoolByproducts(211, <gregtech:ore_lignite_0>           , 4 , 106, 25 , 106);
retoolByproducts(185, <gregtech:ore_stibnite_0>          , 6 , 188, 361, 62);
retoolByproducts(198, <gregtech:ore_wulfenite_0>         , 2 , 114, 148, 148);
retoolByproducts(278, <gregtech:ore_bentonite_0>         , 14, 249, 105, 105);
retoolByproducts(113, <gregtech:ore_emerald_0>           , 2 , 154, 146, 158);
retoolByproducts(148, <gregtech:ore_pyrite_0>            , 6 , 100, 361, 26);
retoolByproducts(123, <gregtech:ore_bauxite_0>           , 6 , 90 , 270, 121);
retoolByproducts(361, <gregtech:ore_chalcocite_0>        , 4 , 114, 182, 112);
retoolByproducts(274, <gregtech:ore_lepidolite_0>        , 10, 151, 313, 313);
retoolByproducts(358, <gregtech:ore_tenorite_0>          , 4 , 359, 149, 26);
retoolByproducts(239, <gregtech:ore_phosphor_0>          , 6 , 226, 158, 146);
retoolByproducts(114, <gregtech:ore_galena_0>            , 2 , 100, 13 , 182);
retoolByproducts(224, <gregtech:ore_tantalite_0>         , 4 , 149, 326, 326);
retoolByproducts(188, <gregtech:ore_tetrahedrite_0>      , 6 , 185, 360, 62);
retoolByproducts(65 , <gregtech:ore_sulfur_0>            , 2 , 182, 148, 100);
retoolByproducts(131, <gregtech:ore_magnetite_0>         , 4 , 255, 121, 102);
retoolByproducts(149, <gregtech:ore_pyrolusite_0>        , 6 , 90 , 224, 224);
retoolByproducts(96, <gregtech:ore_brown_limonite_0>     , 8 , 199, 105, 90);
retoolByproducts(199, <gregtech:ore_yellow_limonite_0>   , 8 , 96 , 105, 278);
retoolByproducts(201, <gregtech:ore_nether_quartz_0>     , 4 , 202, 269, 286);
retoolByproducts(202, <gregtech:ore_certus_quartz_0>     , 4 , 201, 269, 286);
//Maybe transform every ore to make sure everything produces MC granite/diorite/andesite dusts?



/**
* Function definition for the ore byproduct change function
*/
function retoolByproducts(id as int, ore as IItemStack, num as int, pulv as int, centrifuge as int, wash as int) {
    //Remove ore from macerator processing
    for q in 3 to 14 { // We need to skip some because the recipes are added by OD so get removed for multiple metas at a time
        if (q != 5 && q != 9) RecipeMap.getByName("macerator").findRecipe(12, [ore.definition.makeStack(q)], null).remove();
    }
    //Readd ores, properly varying dusts by type which gregtech does not
    RecipeMap.getByName("macerator").recipeBuilder()
        .inputs(ore)
        .outputs([<gregtech:meta_item_1>.definition.makeStack(id + 5000) * num])
        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(pulv + 2000), 1400, 850)
        .chancedOutput(<gregtech:meta_item_1:2328>, 6700, 800)
        .duration(400).EUt(12).buildAndRegister();
    RecipeMap.getByName("macerator").recipeBuilder()
        .inputs(ore.definition.makeStack(1))
        .outputs([<gregtech:meta_item_1>.definition.makeStack(id + 5000) * num])
        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(pulv + 2000), 1400, 850)
        .chancedOutput(<gregtech:meta_item_1:2449>, 6700, 800)
        .duration(400).EUt(12).buildAndRegister();
    RecipeMap.getByName("macerator").recipeBuilder()
        .inputs(ore.definition.makeStack(2))
        .outputs([<gregtech:meta_item_1>.definition.makeStack(id + 5000) * num])
        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(pulv + 2000), 1400, 850)
        .chancedOutput(<gregtech:meta_item_1:2242>, 6700, 800)
        .duration(400).EUt(12).buildAndRegister();
    RecipeMap.getByName("macerator").recipeBuilder()
        .inputs(ore.definition.makeStack(3))
        .outputs([<gregtech:meta_item_1>.definition.makeStack(id + 5000) * num])
        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(pulv + 2000), 1400, 850)
        .chancedOutput(<gregtech:meta_item_1:2241>, 6700, 800)
        .duration(400).EUt(12).buildAndRegister();
    RecipeMap.getByName("macerator").recipeBuilder()
        .inputs(ore.definition.makeStack(4))
        .outputs([<gregtech:meta_item_1>.definition.makeStack(id + 5000) * num])
        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(pulv + 2000), 1400, 850)
        .chancedOutput(<gregtech:meta_item_1:2220>, 6700, 800)
        .duration(400).EUt(12).buildAndRegister();
    RecipeMap.getByName("macerator").recipeBuilder()
        .inputs(ore.definition.makeStack(6))
        .outputs([<gregtech:meta_item_1>.definition.makeStack(id + 5000) * num])
        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(pulv + 2000), 1400, 850)
        .chancedOutput(<gregtech:meta_item_1:2333>, 6700, 800)
        .duration(400).EUt(12).buildAndRegister();
    RecipeMap.getByName("macerator").recipeBuilder()
        .inputs(ore.definition.makeStack(7))
        .outputs([<gregtech:meta_item_1>.definition.makeStack(id + 5000) * num])
        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(pulv + 2000), 1400, 850)
        .chancedOutput(<gregtech:meta_item_1:2332>, 6700, 800)
        .duration(400).EUt(12).buildAndRegister();
    RecipeMap.getByName("macerator").recipeBuilder()
        .inputs(ore.definition.makeStack(8) | ore.definition.makeStack(9))
        .outputs([<gregtech:meta_item_1>.definition.makeStack(id + 5000) * num])
        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(pulv + 2000), 1400, 850)
        .chancedOutput(<gregtech:meta_item_1:2328>, 3300, 400)
        .duration(400).EUt(12).buildAndRegister();
    RecipeMap.getByName("macerator").recipeBuilder()
        .inputs(ore.definition.makeStack(10))
        .outputs([<gregtech:meta_item_1>.definition.makeStack(id + 5000) * num])
        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(pulv + 2000), 1400, 850)
        .chancedOutput(<gregtech:meta_item_1:2251>, 6700, 800)
        .duration(400).EUt(12).buildAndRegister();
    RecipeMap.getByName("macerator").recipeBuilder()
        .inputs(ore.definition.makeStack(11))
        .outputs([<gregtech:meta_item_1>.definition.makeStack(id + 5000) * num])
        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(pulv + 2000), 1400, 850)
        .chancedOutput(<gregtech:meta_item_1:2252>, 6700, 800)
        .duration(400).EUt(12).buildAndRegister();
    RecipeMap.getByName("macerator").recipeBuilder()
        .inputs(ore.definition.makeStack(12))
        .outputs([<gregtech:meta_item_1>.definition.makeStack(id + 5000) * num])
        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(pulv + 2000), 1400, 850)
        .chancedOutput(<gregtech:meta_item_1:2245>, 6700, 800)
        .duration(400).EUt(12).buildAndRegister();
    RecipeMap.getByName("macerator").recipeBuilder()
        .inputs(ore.definition.makeStack(13))
        .outputs([<gregtech:meta_item_1>.definition.makeStack(id + 5000) * num])
        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(pulv + 2000), 1400, 850)
        .chancedOutput(<gregtech:meta_item_1:2240>, 6700, 800)
        .duration(400).EUt(12).buildAndRegister();
    //Crushed ore recipes
    RecipeMap.getByName("macerator").findRecipe(12, [<gregtech:meta_item_1>.definition.makeStack(id + 5000)], null).remove();
    RecipeMap.getByName("macerator").recipeBuilder()
        .inputs(<gregtech:meta_item_1>.definition.makeStack(id + 5000))
        .outputs([<gregtech:meta_item_1>.definition.makeStack(id + 3000)])
        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(pulv + 2000), 1400, 850)
        .duration(200).EUt(12).buildAndRegister();
    RecipeMap.getByName("orewasher").findRecipe(16, [<gregtech:meta_item_1>.definition.makeStack(id + 5000)], [<liquid:water> * 1000]).remove();
    RecipeMap.getByName("orewasher").recipeBuilder()
        .inputs(<gregtech:meta_item_1>.definition.makeStack(id + 5000))
        .fluidInputs([<liquid:distilled_water> * 1000])
        .outputs([<gregtech:meta_item_1>.definition.makeStack(id + 6000), <gregtech:meta_item_1>.definition.makeStack(pulv) * 3, <gregtech:meta_item_1:2328>])
        .duration(400).EUt(16).buildAndRegister();
    RecipeMap.getByName("orewasher").findRecipe(16, [<gregtech:meta_item_1>.definition.makeStack(id + 5000)], [<liquid:distilled_water> * 1000]).remove();
    RecipeMap.getByName("orewasher").recipeBuilder()
        .inputs(<gregtech:meta_item_1>.definition.makeStack(id + 5000))
        .fluidInputs([<liquid:distilled_water> * 1000])
        .outputs([<gregtech:meta_item_1>.definition.makeStack(id + 6000), <gregtech:meta_item_1>.definition.makeStack(pulv) * 3, <gregtech:meta_item_1:2328>])
        .duration(300).EUt(16).buildAndRegister();
    //Impure dust recipes
    var time = RecipeMap.getByName("centrifuge").findRecipe(24, [<gregtech:meta_item_1>.definition.makeStack(id + 3000)], null).duration;
    RecipeMap.getByName("centrifuge").findRecipe(24, [<gregtech:meta_item_1>.definition.makeStack(id + 3000)], null).remove();
    RecipeMap.getByName("centrifuge").recipeBuilder()
        .inputs(<gregtech:meta_item_1>.definition.makeStack(id + 3000))
        .outputs([<gregtech:meta_item_1>.definition.makeStack(id + 2000), <gregtech:meta_item_1>.definition.makeStack(centrifuge) * 3])
        .duration(time).EUt(24).buildAndRegister();
    //Purified ore recipes
    RecipeMap.getByName("macerator").findRecipe(12, [<gregtech:meta_item_1>.definition.makeStack(id + 6000)], null).remove();
    RecipeMap.getByName("macerator").recipeBuilder()
        .inputs(<gregtech:meta_item_1>.definition.makeStack(id + 6000))
        .outputs([<gregtech:meta_item_1>.definition.makeStack(id + 4000)])
        .chancedOutput(<gregtech:meta_item_1>.definition.makeStack(wash + 2000), 1400, 850)
        .duration(200).EUt(12).buildAndRegister();
    //Purified dust recipes
    var time2 = RecipeMap.getByName("centrifuge").findRecipe(5, [<gregtech:meta_item_1>.definition.makeStack(id + 4000)], null).duration;
    RecipeMap.getByName("centrifuge").findRecipe(5, [<gregtech:meta_item_1>.definition.makeStack(id + 4000)], null).remove();
    RecipeMap.getByName("centrifuge").recipeBuilder()
        .inputs(<gregtech:meta_item_1>.definition.makeStack(id + 4000))
        .outputs([<gregtech:meta_item_1>.definition.makeStack(id + 2000), <gregtech:meta_item_1>.definition.makeStack(wash) * 3])
        .duration(time2).EUt(5).buildAndRegister();
}
