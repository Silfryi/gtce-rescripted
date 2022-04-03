import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.gregtech.recipe.RecipeMap;



/**
* Remove circuit part chemical reactor recipes that very much do not need to exist
*/
//Wafers
RecipeMap.getByName("chemical_reactor").findRecipe(1920, [<gregtech:meta_item_1:2421> * 2, <gregtech:meta_item_2:32469>], [<liquid:red_alloy> * 288]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(1920, [<gregtech:meta_item_1:32724> * 2, <gregtech:meta_item_2:32467>], [<liquid:gallium_arsenide> * 288]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(1920, [<gregtech:cable:5354> * 8, <gregtech:meta_item_2:32467>], null).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(480, [<gregtech:meta_item_2:32504> * 16, <gregtech:meta_item_2:32464>], [<liquid:glowstone> * 576]).remove();
//Boards
RecipeMap.getByName("chemical_reactor").findRecipe(10, [<gregtech:meta_item_1:19018>, <gregtech:meta_item_1:12141>], [<liquid:sulfuric_acid> * 125]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(10, [<gregtech:meta_item_1:19018>, <gregtech:meta_item_1:12965>], [<liquid:sulfuric_acid> * 125]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(10, [<gregtech:meta_item_1:19018>, <gregtech:meta_item_1:12145>], [<liquid:sulfuric_acid> * 125]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(10, [<gregtech:meta_item_1:19018>, <gregtech:meta_item_1:12142>], [<liquid:sulfuric_acid> * 125]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(10, [<gregtech:meta_item_1:19018>, <gregtech:meta_item_1:12470>], [<liquid:sulfuric_acid> * 125]).remove();
RecipeMap.getByName("chemical_reactor").findRecipe(480, [<gregtech:meta_item_1:19112> * 16, <gregtech:meta_item_2:32445>], [<liquid:sulfuric_acid> * 250]).remove();



/**
* Remove circuit recipes because I completely reorgznied the circuits and so everything is out of whack
*/
RecipeMap.getByName("assembler").findRecipe(34400, [<gregtech:meta_item_2:16200> * 6, <gregtech:meta_item_2:32457> * 4, <gregtech:meta_item_2:32482> * 4,
                                                    <gregtech:meta_item_2:32485> * 4, <gregtech:meta_item_2:32499> * 3, <gregtech:meta_item_2:32449> * 2], [<liquid:tin> * 288]).remove();
RecipeMap.getByName("assembler").findRecipe(34400, [<gregtech:meta_item_2:16200> * 6, <gregtech:meta_item_2:32457> * 4, <gregtech:meta_item_2:32482> * 4,
                                                    <gregtech:meta_item_2:32485> * 4, <gregtech:meta_item_2:32499> * 3, <gregtech:meta_item_2:32449> * 2], [<liquid:soldering_alloy> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(28000, [<gregtech:meta_item_2:16200> * 2, <gregtech:meta_item_2:32458> * 2, <gregtech:meta_item_2:32460> * 2,
                                                    <gregtech:meta_item_2:32481> * 1, <gregtech:meta_item_2:32474> * 1, <gtadditions:ga_meta_item:32015>], [<liquid:tin> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(28000, [<gregtech:meta_item_2:16200> * 2, <gregtech:meta_item_2:32458> * 2, <gregtech:meta_item_2:32460> * 2,
                                                    <gregtech:meta_item_2:32481> * 1, <gregtech:meta_item_2:32474> * 1, <gtadditions:ga_meta_item:32015>], [<liquid:soldering_alloy> * 72]).remove();
RecipeMap.getByName("assembler").findRecipe(7600, [<gregtech:meta_item_2:16135> * 2, <gregtech:meta_item_2:32458> * 2, <gregtech:meta_item_2:32460> * 2,
                                                   <gregtech:meta_item_2:32481> * 1, <gregtech:meta_item_2:32474> * 1, <gregtech:meta_item_2:32446> * 1], [<liquid:tin> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(7600, [<gregtech:meta_item_2:16135> * 2, <gregtech:meta_item_2:32458> * 2, <gregtech:meta_item_2:32460> * 2,
                                                   <gregtech:meta_item_2:32481> * 1, <gregtech:meta_item_2:32474> * 1, <gregtech:meta_item_2:32446> * 1], [<liquid:soldering_alloy> * 72]).remove();
RecipeMap.getByName("assembler").findRecipe(31900, [<gregtech:meta_item_2:16135> * 2, <gregtech:meta_item_2:32475> * 1, <gregtech:meta_item_2:32446> * 1], [<liquid:tin> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(31900, [<gregtech:meta_item_2:16135> * 2, <gregtech:meta_item_2:32475> * 1, <gregtech:meta_item_2:32446> * 1], [<liquid:soldering_alloy> * 72]).remove();
RecipeMap.getByName("assembler").findRecipe(1960, [<gregtech:meta_item_2:16051> * 6, <gregtech:meta_item_2:32456> * 4, <gregtech:meta_item_2:32458> * 4,
                                                   <gregtech:meta_item_2:32485> * 4, <gregtech:meta_item_2:32494> * 2, <gregtech:meta_item_2:32445> * 2], [<liquid:tin> * 288]).remove();
RecipeMap.getByName("assembler").findRecipe(1960, [<gregtech:meta_item_2:16051> * 6, <gregtech:meta_item_2:32456> * 4, <gregtech:meta_item_2:32458> * 4,
                                                   <gregtech:meta_item_2:32485> * 4, <gregtech:meta_item_2:32494> * 2, <gregtech:meta_item_2:32445> * 2], [<liquid:soldering_alloy> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(1960, [<gregtech:meta_item_2:16051> * 2, <gregtech:meta_item_2:32458> * 2, <gregtech:meta_item_2:32460> * 2,
                                                   <gregtech:meta_item_2:32481> * 1, <gregtech:meta_item_2:32484> * 1, <gregtech:meta_item_2:32445> * 1], [<liquid:tin> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(1960, [<gregtech:meta_item_2:16051> * 2, <gregtech:meta_item_2:32458> * 2, <gregtech:meta_item_2:32460> * 2,
                                                   <gregtech:meta_item_2:32481> * 1, <gregtech:meta_item_2:32484> * 1, <gregtech:meta_item_2:32445> * 1], [<liquid:soldering_alloy> * 72]).remove();
RecipeMap.getByName("assembler").findRecipe(32000, [<gregtech:meta_item_2:16051> * 2, <gregtech:meta_item_2:32476> * 1, <gregtech:meta_item_2:32445> * 1], [<liquid:tin> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(32000, [<gregtech:meta_item_2:16051> * 2, <gregtech:meta_item_2:32476> * 1, <gregtech:meta_item_2:32445> * 1], [<liquid:soldering_alloy> * 72]).remove();
RecipeMap.getByName("assembler").findRecipe(480, [<gregtech:meta_item_2:16112> * 6, <gregtech:meta_item_2:32456> * 4, <gregtech:meta_item_2:32458> * 4,
                                                  <gregtech:meta_item_2:32485> * 4, <gregtech:meta_item_2:32492> * 2, <gregtech:meta_item_2:32444> * 2], [<liquid:tin> * 288]).remove();
RecipeMap.getByName("assembler").findRecipe(480, [<gregtech:meta_item_2:16112> * 6, <gregtech:meta_item_2:32456> * 4, <gregtech:meta_item_2:32458> * 4,
                                                  <gregtech:meta_item_2:32485> * 4, <gregtech:meta_item_2:32492> * 2, <gregtech:meta_item_2:32444> * 2], [<liquid:soldering_alloy> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(480, [<gregtech:meta_item_2:16112> * 2, <gregtech:meta_item_2:32458> * 2, <gregtech:meta_item_2:32460> * 2,
                                                  <gregtech:meta_item_2:32459> * 2, <gregtech:meta_item_2:32481> * 1, <gregtech:meta_item_2:32444> * 1], [<liquid:tin> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(480, [<gregtech:meta_item_2:16112> * 2, <gregtech:meta_item_2:32458> * 2, <gregtech:meta_item_2:32460> * 2,
                                                  <gregtech:meta_item_2:32459> * 2, <gregtech:meta_item_2:32481> * 1, <gregtech:meta_item_2:32444> * 1], [<liquid:soldering_alloy> * 72]).remove();
RecipeMap.getByName("assembler").findRecipe(9600, [<gregtech:meta_item_2:16112> * 2, <gregtech:meta_item_2:32486> * 1, <gregtech:meta_item_2:32444> * 1], [<liquid:tin> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(9600, [<gregtech:meta_item_2:16112> * 2, <gregtech:meta_item_2:32486> * 1, <gregtech:meta_item_2:32444> * 1], [<liquid:soldering_alloy> * 72]).remove();
RecipeMap.getByName("assembler").findRecipe(90, [<gregtech:meta_item_2:16237> * 12, <gregtech:meta_item_2:32456> * 4, <gregtech:meta_item_2:32458> * 4,
                                                 <gregtech:meta_item_2:32485> * 4, <gregtech:meta_item_2:32490> * 2, <gregtech:meta_item_2:32448> * 2], [<liquid:tin> * 288]).remove();
RecipeMap.getByName("assembler").findRecipe(90, [<gregtech:meta_item_2:16237> * 12, <gregtech:meta_item_2:32456> * 4, <gregtech:meta_item_2:32458> * 4,
                                                 <gregtech:meta_item_2:32485> * 4, <gregtech:meta_item_2:32490> * 2, <gregtech:meta_item_2:32448> * 2], [<liquid:soldering_alloy> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(90, [<gregtech:meta_item_2:16237> * 12, <gregtech:meta_item_2:32456> * 4, <gregtech:meta_item_2:32452> * 4,
                                                 <gregtech:meta_item_2:32485> * 4, <gregtech:meta_item_2:32490> * 2, <gregtech:meta_item_2:32448> * 2], [<liquid:tin> * 288]).remove();
RecipeMap.getByName("assembler").findRecipe(90, [<gregtech:meta_item_2:16237> * 12, <gregtech:meta_item_2:32456> * 4, <gregtech:meta_item_2:32452> * 4,
                                                 <gregtech:meta_item_2:32485> * 4, <gregtech:meta_item_2:32490> * 2, <gregtech:meta_item_2:32448> * 2], [<liquid:soldering_alloy> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(60, [<gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:32458> * 2, <gregtech:meta_item_2:32460> * 2,
                                                 <gregtech:meta_item_2:32459> * 2, <gregtech:meta_item_2:32478> * 1, <gregtech:meta_item_2:32448> * 1], [<liquid:tin> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(60, [<gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:32458> * 2, <gregtech:meta_item_2:32460> * 2,
                                                 <gregtech:meta_item_2:32459> * 2, <gregtech:meta_item_2:32478> * 1, <gregtech:meta_item_2:32448> * 1], [<liquid:soldering_alloy> * 72]).remove();
RecipeMap.getByName("assembler").findRecipe(60, [<gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:32455> * 2, <gregtech:meta_item_2:32461> * 2,
                                                 <gregtech:meta_item_2:32452> * 2, <gregtech:meta_item_2:32478> * 1, <gregtech:meta_item_2:32448> * 1], [<liquid:tin> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(60, [<gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:32455> * 2, <gregtech:meta_item_2:32461> * 2,
                                                 <gregtech:meta_item_2:32452> * 2, <gregtech:meta_item_2:32478> * 1, <gregtech:meta_item_2:32448> * 1], [<liquid:soldering_alloy> * 72]).remove();
RecipeMap.getByName("assembler").findRecipe(2400, [<gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:32486> * 1, <gregtech:meta_item_2:32448> * 1], [<liquid:tin> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(2400, [<gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:32486> * 1, <gregtech:meta_item_2:32448> * 1], [<liquid:soldering_alloy> * 72]).remove();
RecipeMap.getByName("assembler").findRecipe(16, [<gregtech:meta_item_2:16112> * 8, <gregtech:meta_item_2:32455> * 4, <gregtech:meta_item_2:32488> * 3, <gregtech:meta_item_2:32447> * 1], [<liquid:tin> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(16, [<gregtech:meta_item_2:16112> * 8, <gregtech:meta_item_2:32455> * 4, <gregtech:meta_item_2:32488> * 3, <gregtech:meta_item_2:32447> * 1], [<liquid:soldering_alloy> * 72]).remove();
RecipeMap.getByName("assembler").findRecipe(16, [<gregtech:meta_item_2:16112> * 8, <gregtech:meta_item_2:32459> * 4, <gregtech:meta_item_2:32488> * 3, <gregtech:meta_item_2:32447> * 1], [<liquid:tin> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(16, [<gregtech:meta_item_2:16112> * 8, <gregtech:meta_item_2:32459> * 4, <gregtech:meta_item_2:32488> * 3, <gregtech:meta_item_2:32447> * 1], [<liquid:soldering_alloy> * 72]).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_2:16018>, <gregtech:meta_item_2:32455> * 2, <gregtech:meta_item_2:32477>, <gregtech:meta_item_2:32447> * 1], [<liquid:tin> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_2:16018>, <gregtech:meta_item_2:32455> * 2, <gregtech:meta_item_2:32477>, <gregtech:meta_item_2:32447> * 1], [<liquid:soldering_alloy> * 72]).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_2:16018>, <gregtech:meta_item_2:32459> * 2, <gregtech:meta_item_2:32477>, <gregtech:meta_item_2:32447> * 1], [<liquid:tin> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_2:16018>, <gregtech:meta_item_2:32459> * 2, <gregtech:meta_item_2:32477>, <gregtech:meta_item_2:32447> * 1], [<liquid:soldering_alloy> * 72]).remove();
//Crafting table
recipes.remove(<gregtech:meta_item_2:32487>);
recipes.remove(<gregtech:meta_item_2:32489>);



/**
* Remove unused or downright wrong precision laser engraver recipes
*/
//Non-silicon
RecipeMap.getByName("laser_engraver").findRecipe(32000, [<gregtech:meta_item_2:32474>, <gregtech:meta_item_1:15216>], null).remove();
RecipeMap.getByName("laser_engraver").findRecipe(7600, [<gregtech:meta_item_2:32213>, <gregtech:meta_item_1:15216>], null).remove();
RecipeMap.getByName("laser_engraver").findRecipe(7600, [<gregtech:meta_item_2:32502>, <gregtech:meta_item_1:15113>], null).remove();
//Silicon
//Glowstone
RecipeMap.getByName("laser_engraver").findRecipe(480, [<gregtech:meta_item_2:32441>, <gregtech:meta_item_1:15122>], null).remove();
RecipeMap.getByName("laser_engraver").findRecipe(480, [<gregtech:meta_item_2:32441>, <gregtech:meta_item_1:15117>], null).remove();
RecipeMap.getByName("laser_engraver").findRecipe(480, [<gregtech:meta_item_2:32441>, <gregtech:meta_item_1:15218>], null).remove();
RecipeMap.getByName("laser_engraver").findRecipe(480, [<gregtech:meta_item_2:32441>, <gregtech:meta_item_1:15113>], null).remove();
RecipeMap.getByName("laser_engraver").findRecipe(480, [<gregtech:meta_item_2:32441>, <gregtech:meta_item_1:15216>], null).remove();
RecipeMap.getByName("laser_engraver").findRecipe(480, [<gregtech:meta_item_2:32441>, <gregtech:meta_item_1:15111>], null).remove();
//Unused wafers
RecipeMap.getByName("laser_engraver").findRecipe(1920, [<gregtech:meta_item_2:32442>, <gregtech:meta_item_1:15190>], null).remove();
RecipeMap.getByName("laser_engraver").findRecipe(1920, [<gregtech:meta_item_2:32442>, <gregtech:meta_item_1:15216>], null).remove();



/**
* Hide and remove other recipes for said items
*/
removeAndHide(<gregtech:meta_item_2:32475>);
removeAndHide(<gregtech:meta_item_2:32474>);
removeAndHide(<gregtech:meta_item_2:32462>);
removeAndHide(<gregtech:meta_item_2:32497>);
removeAndHide(<gregtech:meta_item_2:32507>);
removeAndHide(<gregtech:meta_item_2:32484>);
removeAndHide(<gregtech:meta_item_2:32470>);
removeAndHide(<gregtech:meta_item_2:32476>);
removeAndHide(<gregtech:meta_item_2:32479>);
removeAndHide(<gregtech:meta_item_2:32465>);
removeAndHide(<gregtech:meta_item_2:32452>);
removeAndHide(<gregtech:meta_item_2:32461>);
removeAndHide(<gregtech:meta_item_1:32708>);
removeAndHide(<gregtech:meta_item_2:32451>);
removeAndHide(<gregtech:meta_item_2:32437>);
removeAndHide(<gregtech:meta_item_2:32441>);



/**
* Remove a bunch of cutting machine recipes
*/
RecipeMap.getByName("cutting_saw").findRecipe(64, [<gregtech:meta_item_2:32437>], [<liquid:water> * 80]).remove();
RecipeMap.getByName("cutting_saw").findRecipe(64, [<gregtech:meta_item_2:32437>], [<liquid:distilled_water> * 60]).remove();
RecipeMap.getByName("cutting_saw").findRecipe(64, [<gregtech:meta_item_2:32437>], [<liquid:lubricant> * 20]).remove();
RecipeMap.getByName("cutting_saw").findRecipe(90, [<gregtech:meta_item_2:32462>], [<liquid:water> * 90]).remove();
RecipeMap.getByName("cutting_saw").findRecipe(90, [<gregtech:meta_item_2:32462>], [<liquid:distilled_water> * 67]).remove();
RecipeMap.getByName("cutting_saw").findRecipe(90, [<gregtech:meta_item_2:32462>], [<liquid:lubricant> * 22]).remove();
RecipeMap.getByName("cutting_saw").findRecipe(90, [<gregtech:meta_item_2:32470>], [<liquid:water> * 90]).remove();
RecipeMap.getByName("cutting_saw").findRecipe(90, [<gregtech:meta_item_2:32470>], [<liquid:distilled_water> * 67]).remove();
RecipeMap.getByName("cutting_saw").findRecipe(90, [<gregtech:meta_item_2:32470>], [<liquid:lubricant> * 22]).remove();
RecipeMap.getByName("cutting_saw").findRecipe(90, [<gregtech:meta_item_2:32465>], [<liquid:water> * 90]).remove();
RecipeMap.getByName("cutting_saw").findRecipe(90, [<gregtech:meta_item_2:32465>], [<liquid:distilled_water> * 67]).remove();
RecipeMap.getByName("cutting_saw").findRecipe(90, [<gregtech:meta_item_2:32465>], [<liquid:lubricant> * 22]).remove();



/**
* Remove other misc. circuit component recipes
*/
RecipeMap.getByName("assembler").findRecipe(24, [<gregtech:meta_item_1:19071> * 6, <gregtech:meta_item_1:12061>], [<liquid:plastic> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(96, [<gregtech:meta_item_1:19001> * 2, <gregtech:meta_item_1:12141>], null).remove();
RecipeMap.getByName("assembler").findRecipe(48, [<gregtech:meta_item_2:16087> * 4, <gregtech:meta_item_1:1025>], [<liquid:plastic> * 288]).remove();
RecipeMap.getByName("assembler").findRecipe(90, [<gregtech:meta_item_2:32480> * 32, <gregtech:meta_item_2:16237> * 8,<gregtech:meta_item_2:32485> * 4,
                                                 <gregtech:meta_item_1:12141> * 4, <gregtech:meta_item_2:32448> * 1, <gregtech:meta_item_2:32490> * 1], [<liquid:tin> * 288]).remove();
RecipeMap.getByName("assembler").findRecipe(90, [<gregtech:meta_item_2:32480> * 32, <gregtech:meta_item_2:16237> * 8,<gregtech:meta_item_2:32485> * 4,
                                                 <gregtech:meta_item_1:12141> * 4, <gregtech:meta_item_2:32448> * 1, <gregtech:meta_item_2:32490> * 1], [<liquid:soldering_alloy> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(7600, [<gregtech:meta_item_2:16135> * 6, <gregtech:meta_item_2:32456> * 4, <gregtech:meta_item_2:32458> * 4,
                                                   <gregtech:meta_item_2:32485> * 4, <gregtech:meta_item_2:32496> * 2, <gregtech:meta_item_2:32446> * 1], [<liquid:tin> * 288]).remove();
RecipeMap.getByName("assembler").findRecipe(7600, [<gregtech:meta_item_2:16135> * 6, <gregtech:meta_item_2:32456> * 4, <gregtech:meta_item_2:32458> * 4,
                                                   <gregtech:meta_item_2:32485> * 4, <gregtech:meta_item_2:32496> * 2, <gregtech:meta_item_2:32446> * 1], [<liquid:soldering_alloy> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(60, [<gregtech:meta_item_2:16018> * 2, <gregtech:meta_item_2:32455> * 4, <gregtech:meta_item_2:32461> * 4,
                                                 <gregtech:meta_item_2:32452> * 4, <gregtech:meta_item_2:32478> * 4, <gregtech:meta_item_2:32448> * 1], [<liquid:tin> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(60, [<gregtech:meta_item_2:16018> * 2, <gregtech:meta_item_2:32455> * 4, <gregtech:meta_item_2:32461> * 4,
                                                 <gregtech:meta_item_2:32452> * 4, <gregtech:meta_item_2:32478> * 4, <gregtech:meta_item_2:32448> * 1], [<liquid:soldering_alloy> * 72]).remove();
RecipeMap.getByName("assembler").findRecipe(60, [<gregtech:meta_item_2:16018> * 2, <gregtech:meta_item_2:32458> * 4, <gregtech:meta_item_2:32459> * 4,
                                                 <gregtech:meta_item_2:32460> * 4, <gregtech:meta_item_2:32478> * 4, <gregtech:meta_item_2:32448> * 1], [<liquid:tin> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(60, [<gregtech:meta_item_2:16018> * 2, <gregtech:meta_item_2:32458> * 4, <gregtech:meta_item_2:32459> * 4,
                                                 <gregtech:meta_item_2:32460> * 4, <gregtech:meta_item_2:32478> * 4, <gregtech:meta_item_2:32448> * 1], [<liquid:soldering_alloy> * 72]).remove();
RecipeMap.getByName("assembler").findRecipe(600, [<gregtech:meta_item_2:16018> * 2, <gregtech:meta_item_2:32486> * 1, <gregtech:meta_item_2:32448> * 1], [<liquid:tin> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(600, [<gregtech:meta_item_2:16018> * 2, <gregtech:meta_item_2:32486> * 1, <gregtech:meta_item_2:32448> * 1], [<liquid:soldering_alloy> * 72]).remove();



/**
* Non-assembler circuit parts recipes
*/
//Boules
RecipeMap.getByName("autoclave").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2025>])
    .fluidInputs([<liquid:silicon> * 2304])
    .outputs([<gregtech:meta_item_2:32439>])
    .duration(2400).EUt(120).buildAndRegister();
RecipeMap.getByName("autoclave").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2031>])
    .fluidInputs([<liquid:silicon> * 9216])
    .outputs([<gregtech:meta_item_2:32438>])
    .duration(2400).EUt(1920).buildAndRegister();
//Wafers in the chemical reactor
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_2:16237> * 32, <gregtech:meta_item_2:32464> * 4])
    .fluidInputs([<liquid:indium_gallium_phosphide> * 288, <liquid:uumatter> * 4000])
    .outputs([<gregtech:meta_item_2:32467> * 4])
    .duration(600).EUt(1920).buildAndRegister();
RecipeMap.getByName("chemical_reactor").recipeBuilder()
    .inputs([<gregtech:meta_item_2:16237> * 16, <gregtech:meta_item_2:32463> * 4])
    .fluidInputs([<liquid:indium_gallium_phosphide> * 576])
    .outputs([<gregtech:meta_item_2:32469> * 4])
    .duration(600).EUt(480).buildAndRegister();
//SMD
RecipeMap.getByName("assembler").findRecipe(96, [<gregtech:meta_item_2:16087> * 6, <gregtech:meta_item_1:12025>], [<liquid:plastic> * 288]).remove();
RecipeMap.getByName("assembler").findRecipe(96, [<gregtech:meta_item_2:16112> * 4, <gregtech:meta_item_1:2012>], [<liquid:plastic> * 144]).remove();
RecipeMap.getByName("assembler").findRecipe(120, [<gregtech:meta_item_1:19965> * 4, <gregtech:meta_item_1:19001>], [<liquid:plastic> * 36]).remove();
RecipeMap.getByName("assembler").findRecipe(120, [<gregtech:meta_item_1:19391> * 4, <gregtech:meta_item_1:19001>], [<liquid:plastic> * 36]).remove();
RecipeMap.getByName("assembler").findRecipe(120, [<gregtech:meta_item_2:16051> * 4, <gregtech:meta_item_1:1025>], [<liquid:plastic> * 288]).remove();
RecipeMap.getByName("assembler").recipeBuilder()
    .inputs([<gregtech:meta_item_2:16112> * 4, <gregtech:meta_item_2:32440>])
    .fluidInputs([<liquid:plastic> * 72])
    .outputs([<gregtech:meta_item_2:32460> * 16])
    .duration(300).EUt(30).buildAndRegister();
RecipeMap.getByName("assembler").recipeBuilder()
    .inputs([<gregtech:meta_item_2:16112> * 4, <gregtech:meta_item_1:2012>])
    .fluidInputs([<liquid:plastic> * 72])
    .outputs([<gregtech:meta_item_2:32459> * 16])
    .duration(300).EUt(30).buildAndRegister();
RecipeMap.getByName("assembler").recipeBuilder()
    .inputs([<gregtech:meta_item_2:16112> * 4, <gregtech:meta_item_1:19965> * 4, <gregtech:meta_item_1:19079>])
    .fluidInputs([<liquid:plastic> * 72])
    .outputs([<gregtech:meta_item_2:32458> * 16])
    .duration(300).EUt(30).buildAndRegister();
RecipeMap.getByName("assembler").recipeBuilder()
    .inputs([<gregtech:meta_item_2:16112> * 4, <gregtech:meta_item_1:12025>])
    .fluidInputs([<liquid:plastic> * 72])
    .outputs([<gregtech:meta_item_2:32457> * 16])
    .duration(300).EUt(30).buildAndRegister();
RecipeMap.getByName("assembler").recipeBuilder()
    .inputs([<gregtech:meta_item_2:16051> * 4, <gregtech:meta_item_2:32440>])
    .fluidInputs([<liquid:plastic> * 72])
    .outputs([<gregtech:meta_item_2:32460> * 32])
    .duration(300).EUt(30).buildAndRegister();
RecipeMap.getByName("assembler").recipeBuilder()
    .inputs([<gregtech:meta_item_2:16051> * 4, <gregtech:meta_item_1:2012>])
    .fluidInputs([<liquid:plastic> * 72])
    .outputs([<gregtech:meta_item_2:32459> * 32])
    .duration(300).EUt(30).buildAndRegister();
RecipeMap.getByName("assembler").recipeBuilder()
    .inputs([<gregtech:meta_item_2:16051> * 4, <gregtech:meta_item_1:19965> * 4, <gregtech:meta_item_1:19079>])
    .fluidInputs([<liquid:plastic> * 72])
    .outputs([<gregtech:meta_item_2:32458> * 32])
    .duration(300).EUt(30).buildAndRegister();
RecipeMap.getByName("assembler").recipeBuilder()
    .inputs([<gregtech:meta_item_2:16051> * 4, <gregtech:meta_item_1:12025>])
    .fluidInputs([<liquid:plastic> * 72])
    .outputs([<gregtech:meta_item_2:32457> * 32])
    .duration(300).EUt(30).buildAndRegister();
//Boards
recipes.remove(<gregtech:meta_item_2:32443>);
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12196> * 8, <gregtech:meta_item_1:32627>], [<liquid:glue> * 100]).remove();
recipes.addShaped(<gregtech:meta_item_2:32443> * 8,
    [[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
    [<ore:slabWood>, <liquid:creosote> * 1000, <ore:slabWood>],
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);
recipes.addShaped(<gregtech:meta_item_2:32443> * 12,
    [[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
    [<ore:slabWood>, <liquid:glue> * 1000, <ore:slabWood>],
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<ore:slabWood>])
    .fluidInputs([<liquid:creosote> * 100])
    .outputs([<gregtech:meta_item_2:32443>])
    .duration(100).EUt(4).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<ore:slabWood>])
    .fluidInputs([<liquid:glue> * 100])
    .outputs([<gregtech:meta_item_2:32443> * 2])
    .duration(100).EUt(4).buildAndRegister();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:32301>, <gregtech:meta_item_1:2196>], [<liquid:glue> * 100]).remove();
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:32301>, <gregtech:meta_item_1:2196>], [<liquid:bisphenol_a> * 100]).remove();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_2:32445>])
    .fluidInputs([<liquid:sulfuric_acid> * 1000])
    .outputs([<gregtech:meta_item_2:32448>])
    .duration(400).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_2:32449>])
    .fluidInputs([<liquid:sulfuric_acid> * 1000])
    .outputs([<gregtech:meta_item_2:32444>])
    .duration(400).EUt(30).buildAndRegister();
RecipeMap.getByName("chemical_bath").recipeBuilder()
    .inputs([<gregtech:meta_item_2:32447>])
    .fluidInputs([<liquid:sulfuric_acid> * 1000])
    .outputs([<gregtech:meta_item_2:32446>])
    .duration(400).EUt(30).buildAndRegister();
RecipeMap.getByName("packer").recipeBuilder()
    .inputs([<gregtech:meta_item_1:19087> * 4, <gregtech:meta_item_1:12141>])
    .outputs([<gregtech:meta_item_2:32445>])
    .duration(20).EUt(4).buildAndRegister();
RecipeMap.getByName("packer").recipeBuilder()
    .inputs([<gregtech:meta_item_1:19087> * 8, <gregtech:meta_item_1:12965>])
    .outputs([<gregtech:meta_item_2:32445> * 2])
    .duration(20).EUt(4).buildAndRegister();
RecipeMap.getByName("packer").recipeBuilder()
    .inputs([<gregtech:meta_item_1:19087> * 16, <gregtech:meta_item_1:12145>])
    .outputs([<gregtech:meta_item_2:32445> * 4])
    .duration(20).EUt(4).buildAndRegister();
RecipeMap.getByName("packer").recipeBuilder()
    .inputs([<gregtech:meta_item_1:19112> * 4, <gregtech:meta_item_1:12142>])
    .outputs([<gregtech:meta_item_2:32449>])
    .duration(20).EUt(4).buildAndRegister();  
RecipeMap.getByName("packer").recipeBuilder()
    .inputs([<gregtech:meta_item_1:19049> * 2, <gregtech:meta_item_1:12470>])
    .outputs([<gregtech:meta_item_2:32447>])
    .duration(20).EUt(4).buildAndRegister();  
    
    
    
    
    
