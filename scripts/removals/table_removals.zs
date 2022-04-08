import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.gregtech.recipe.RecipeMap;



print("Removing unused generic items from GT and other mods");

//Remove useless rounds, they do absolutely nothing
removeAndHide(<gtadditions:ga_meta_item:2001>);
removeAndHide(<gtadditions:ga_meta_item:2043>);
removeAndHide(<gtadditions:ga_meta_item:2072>);
removeAndHide(<gtadditions:ga_meta_item:2094>);
removeAndHide(<gtadditions:ga_meta_item:2183>);
removeAndHide(<gtadditions:ga_meta_item:2184>);
removeAndHide(<gtadditions:ga_meta_item:2235>);
removeAndHide(<gtadditions:ga_meta_item:2298>);
removeAndHide(<gtadditions:ga_meta_item:2302>);
removeAndHide(<gtadditions:ga_meta_item:2303>);
removeAndHide(<gtadditions:ga_meta_item:2648>);
removeAndHide(<gtadditions:ga_meta_item:2972>);
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9001)], null).remove();
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9043)], null).remove();
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9072)], null).remove();
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9094)], null).remove();
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9183)], null).remove();
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9184)], null).remove();
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9235)], null).remove();
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9298)], null).remove();
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9302)], null).remove();
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9303)], null).remove();
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9648)], null).remove();
RecipeMap.getByName("lathe").findRecipe(8, [<gregtech:meta_item_1>.definition.makeStack(9972)], null).remove();

//Remove leftover gem turbine blades from JEI, as they're completely nonproducible and wouldn't be good in a turbine anyway
removeAndHide(<gregtech:meta_item_2:15154>);
removeAndHide(<gregtech:meta_item_2:15113>);
removeAndHide(<gregtech:meta_item_2:15111>);
RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_2:15154>], null).remove();
RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_2:15113>], null).remove();
RecipeMap.getByName("macerator").findRecipe(8, [<gregtech:meta_item_2:15111>], null).remove();

//Remove solar panels, you should be using solar boilers or the possible parabolic trough multiblock
removeAndHide(<gregtech:meta_item_1:32750>);
removeAndHide(<gregtech:meta_item_1:32751>);
removeAndHide(<gregtech:meta_item_1:32752>);

//Remove random items from SoG and GTCE that are uncraftable or useless to us
removeAndHide(<gregtech:crusher_blade>);
removeAndHide(<gregtech:machine:826>);
removeAndHide(<gtadditions:ga_meta_tool>.anyDamage());
removeAndHide(<gtadditions:ga_meta_item:32023>);
removeAndHide(<gregtech:meta_item_1:32000>);
removeAndHide(<gregtech:meta_item_1:32001>);
removeAndHide(<gregtech:meta_item_1:32002>);
removeAndHide(<gregtech:meta_item_1:32003>);
removeAndHide(<gregtech:meta_item_1:32004>);
removeAndHide(<gregtech:meta_item_1:32005>);
removeAndHide(<gregtech:meta_item_1:32006>);
removeAndHide(<gregtech:meta_item_1:32007>);
removeAndHide(<gregtech:meta_item_1:32009>);
RecipeMap.getByName("assembler").findRecipe(4, [<gregtech:meta_item_1:2066>, <gregtech:meta_item_1:19039>], [<liquid:plastic> * 144]).remove();
removeAndHide(<gregtech:meta_item_1:32499>);
RecipeMap.getByName("forming_press").findRecipe(16, [<gregtech:meta_item_1:12109>, <gregtech:meta_item_1:32304>], null).remove();
RecipeMap.getByName("forming_press").findRecipe(16, [<gregtech:meta_item_1:12094>, <gregtech:meta_item_1:32304>], null).remove();
RecipeMap.getByName("autoclave").findRecipe(7680, [<minecraft:nether_star>], [<liquid:neutronium> * 288]).remove();
removeAndHide(<gregtech:meta_item_1:32726>);
RecipeMap.getByName("assembler").findRecipe(8, [<gregtech:meta_item_1:12071> * 6, <gregtech:meta_item_1:32402>, <minecraft:glass_pane>], null).remove();
removeAndHide(<gregtech:meta_item_1:32746>);
RecipeMap.getByName("assembler").findRecipe(64, [<gregtech:meta_item_1:18184> * 8, <gregtech:meta_item_1:13184> * 2, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], null).remove();
removeAndHide(<gregtech:meta_item_1:32405>);
RecipeMap.getByName("assembler").findRecipe(256, [<gregtech:meta_item_1:18235> * 8, <gregtech:meta_item_1:13235> * 2, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], null).remove();
removeAndHide(<gregtech:meta_item_1:32406>);
RecipeMap.getByName("assembler").findRecipe(120, [<gregtech:meta_item_1:12007> * 32, <gregtech:meta_item_1:12300> * 4, <gregtech:meta_item_2:32435>], [<liquid:tin_alloy> * 4608]).remove();
removeAndHide(<gregtech:meta_item_2:32436>);
RecipeMap.getByName("assembler").findRecipe(480, [<gregtech:meta_item_2:32446>, <gregtech:meta_item_2:32489>], [<liquid:polystyrene> * 144]).remove();
removeAndHide(<gregtech:meta_item_2:32499>);
removeAndHide(<gtadditions:ga_meta_item:32015>);
RecipeMap.getByName("extractor").findRecipe(512, [<minecraft:egg>], null).remove();
removeAndHide(<gtadditions:ga_meta_item:32018>);

//Remove high tier battery buffers, hatches, etc - we don't need them
removeAndHide(<gregtech:machine:760>);
removeAndHide(<gregtech:machine:761>);
removeAndHide(<gregtech:machine:762>);
removeAndHide(<gregtech:machine:763>);
removeAndHide(<gregtech:machine:764>);
removeAndHide(<gregtech:machine:765>);
removeAndHide(<gregtech:machine:770>);
removeAndHide(<gregtech:machine:771>);
removeAndHide(<gregtech:machine:772>);
removeAndHide(<gregtech:machine:773>);
removeAndHide(<gregtech:machine:774>);
removeAndHide(<gregtech:machine:775>);
removeAndHide(<gregtech:machine:780>);
removeAndHide(<gregtech:machine:781>);
removeAndHide(<gregtech:machine:782>);
removeAndHide(<gregtech:machine:783>);
removeAndHide(<gregtech:machine:784>);
removeAndHide(<gregtech:machine:785>);
removeAndHide(<gregtech:machine:790>);
removeAndHide(<gregtech:machine:791>);
removeAndHide(<gregtech:machine:792>);
removeAndHide(<gregtech:machine:793>);
removeAndHide(<gregtech:machine:794>);
removeAndHide(<gregtech:machine:795>);

//High-tier rotor holders & machines
removeAndHide(<gregtech:machine:104>);
removeAndHide(<gregtech:machine:114>);
removeAndHide(<gregtech:machine:434>);
removeAndHide(<gregtech:machine:818>);
removeAndHide(<gregtech:machine:819>);

//IV hatches but not battery stuff - still want at least a little lapotron stuff
removeAndHide(<gregtech:machine:750>);
removeAndHide(<gregtech:machine:751>);
removeAndHide(<gregtech:machine:752>);
removeAndHide(<gregtech:machine:753>);
removeAndHide(<gregtech:machine:754>);
removeAndHide(<gregtech:machine:755>);

//Any removals from other mods
removeAndHide(<theoneprobe:probenote>);
removeAndHide(<theoneprobe:iron_helmet_probe>);
removeAndHide(<theoneprobe:gold_helmet_probe>);
removeAndHide(<theoneprobe:diamond_helmet_probe>);
removeAndHide(<theoneprobe:probe>);
removeAndHide(<theoneprobe:creativeprobe>);
removeAndHide(<flourishingfoliage:leaves_repairing>);
removeAndHide(<wumpleutil:repairing_block>);

//Remove Minecraft things from JEI that don't need to be there, technical blocks
removeAndHide(<minecraft:command_block>);
removeAndHide(<minecraft:barrier>);
removeAndHide(<minecraft:repeating_command_block>);
removeAndHide(<minecraft:chain_command_block>);
removeAndHide(<minecraft:structure_void>);
removeAndHide(<minecraft:structure_block>);
removeAndHide(<minecraft:command_block_minecart>);
removeAndHide(<minecraft:knowledge_book>);

//Remove MC ores
removeAndHide(<minecraft:lapis_ore>);
removeAndHide(<minecraft:coal_ore>);
removeAndHide(<minecraft:iron_ore>);
removeAndHide(<minecraft:gold_ore>);
removeAndHide(<minecraft:diamond_ore>);
removeAndHide(<minecraft:redstone_ore>);
removeAndHide(<minecraft:emerald_ore>);
removeAndHide(<minecraft:quartz_ore>);
