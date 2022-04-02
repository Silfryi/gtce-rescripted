#loader gregtech
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.IngotMaterial;
import mods.gregtech.material.FluidMaterial;
import mods.gregtech.material.MaterialCasting;



print("Editing the properties of some materials to make them better suited for their roles");

/**
* Edit brass, add aluminium brass and carbided chrome-vanadium steel
*/
MaterialRegistry.get("brass").addFlags(["GENERATE_FRAME", "GENERATE_SMALL_GEAR", "GENERATE_ROTOR"]);
MaterialCasting.toIngot(MaterialRegistry.get("brass")).setFluidPipeProperties(200, 2000, true);
MaterialRegistry.createIngotMaterial(649, "aluminium_brass", 0xC6A62C, "shiny", 2, [<material:copper> * 8, <material:aluminium> * 1], 8.0, 2, 512);
MaterialCasting.toIngot(MaterialRegistry.get("aluminium_brass")).addFlags(["GENERATE_PLATE","GENERATE_ROD", "NO_SMELTING", "GENERATE_BOLT_SCREW", "GENERATE_RING", "GENERATE_ROTOR", "GENERATE_GEAR", "GENERATE_LONG_ROD", "GENERATE_FINE_WIRE", "GENERATE_FOIL"]);
MaterialRegistry.createIngotMaterial(650, "ccrv_steel", 0xA0ACB4, "shiny", 4, [<material:steel> * 11, <material:vanadium> * 3, <material:chrome> * 1, <material:carbon> * 1], 11.3, 4, 2240, 3200);
MaterialCasting.toIngot(MaterialRegistry.get("ccrv_steel")).addFlags(["GENERATE_PLATE","GENERATE_ROD", "NO_SMELTING", "GENERATE_BOLT_SCREW", "GENERATE_RING", "GENERATE_ROTOR", "GENERATE_GEAR", "GENERATE_LONG_ROD", "GENERATE_FINE_WIRE", "GENERATE_FOIL"]);

/**
* Edit a bunch of materials - we want pipes to have actually useful throughput(s)
*/
//MaterialCasting.toIngot(MaterialRegistry.get("wood")).setFluidPipeProperties(250, 310, true);
MaterialCasting.toIngot(MaterialRegistry.get("copper")).setFluidPipeProperties(150, 1000, true);
MaterialCasting.toIngot(MaterialRegistry.get("steel")).setFluidPipeProperties(225, 1500, true);
MaterialCasting.toIngot(MaterialRegistry.get("stainless_steel")).setFluidPipeProperties(300, 2300, true);
MaterialCasting.toIngot(MaterialRegistry.get("aluminium_brass")).setFluidPipeProperties(400, 1500, true);
MaterialCasting.toIngot(MaterialRegistry.get("plastic")).setFluidPipeProperties(375, 350, true);
MaterialCasting.toIngot(MaterialRegistry.get("polyvinyl_chloride")).setFluidPipeProperties(500, 450, true);
MaterialCasting.toIngot(MaterialRegistry.get("polytetrafluoroethylene")).setFluidPipeProperties(625, 600, true);
MaterialCasting.toIngot(MaterialRegistry.get("titanium")).setFluidPipeProperties(600, 1600, true);
MaterialCasting.toIngot(MaterialRegistry.get("tungsten_steel")).setFluidPipeProperties(900, 2700, true);
MaterialCasting.toIngot(MaterialRegistry.get("ccrv_steel")).setFluidPipeProperties(2100, 3000, true);
MaterialRegistry.get("tungsten_steel").addFlags(["DISABLE_DECOMPOSITION"]);

/**
* Add needed parts to some materials - magnalium frames, vanadium-gallium fine wire
*/
MaterialRegistry.get("magnalium").addFlags(["GENERATE_FRAME"]);
MaterialRegistry.get("vanadium_gallium").addFlags(["GENERATE_FINE_WIRE"]);
//Materials that need molten forms for electrolysis
MaterialCasting.toDust(MaterialRegistry.get("magnesia")).addFlags(["SMELT_INTO_FLUID", "GENERATE_FLUID_BLOCK"]);
MaterialCasting.toDust(MaterialRegistry.get("magnesium_chloride")).addFlags(["SMELT_INTO_FLUID", "GENERATE_FLUID_BLOCK"]);
//Nitrobenzene, for the proper production of oil-derivate epoxids
MaterialRegistry.createFluidMaterial(981, "nitrobenzene", 0xFFFBBE, "fluid", [<material:benzene> * 1, <material:nitrogen_dioxide> * 1]);
MaterialRegistry.get("nitrobenzene").addFlags(["DISABLE_DECOMPOSITION"]);
//Dusts needed for ore production
//Tungsten & aluminium
MaterialRegistry.createDustMaterial(651, "tungsten_trioxide", 0xC9C27B, "dull", 0, [<material:tungsten> * 1, <material:oxygen> * 3]);
MaterialRegistry.createDustMaterial(652, "alumina", 0x8D9599, "rough", 0, [<material:aluminium> * 2, <material:oxygen> * 3]);
MaterialRegistry.createFluidMaterial(653, "aluminium_fluoride", 0x97939B, "fluid", [<material:aluminium> * 1, <material:fluorine> * 3]);
MaterialCasting.toFluid(MaterialRegistry.get("aluminium_fluoride")).setFluidTemperature(1300);
//Platinum
MaterialRegistry.createDustMaterial(982, "platpalladium", 0xF0F0B4, "shiny", 0, [<material:platinum> * 3, <material:palladium> * 1]);
MaterialRegistry.createDustMaterial(983, "sperrylite", 0xB6C199, "sand", 0, [<material:platinum> * 1, <material:sulfur> * 2]);
MaterialRegistry.createDustMaterial(984, "sperrylite_omeiite", 0xD5D5C2, "sand", 0, [<material:sperrylite> * 5, <material:osmiridium> * 1, <material:sulfur> * 4]);
MaterialRegistry.createDustMaterial(985, "barium_peroxide", 0xF0F0F0, "dull", 0, [<material:barium> * 1, <material:oxygen> * 2]);
MaterialRegistry.get("platpalladium").addFlags(["DECOMPOSITION_BY_CENTRIFUGING"]);
MaterialRegistry.get("sperrylite").addFlags(["GENERATE_ORE"]);
MaterialRegistry.get("sperrylite_omeiite").addFlags(["GENERATE_ORE"]);
//Fluid materials (some hidden, some not) for platinum sludge production
MaterialRegistry.createFluidMaterial(698, "pearl_vitriol", 0xFFFBBE, "fluid", [<material:beryllium> * 1, <material:chlorine> * 2, <material:water> * 4]);
MaterialRegistry.createFluidMaterial(699, "green_vitriol", 0xFFFBBE, "fluid", [<material:iron> * 1, <material:sulfur> * 1, <material:oxygen> * 4, <material:water> * 7]);
MaterialRegistry.createFluidMaterial(700, "white_vitriol", 0xFFFBBE, "fluid", [<material:zinc> * 1, <material:sulfur> * 1, <material:oxygen> * 4, <material:water> * 7]);
MaterialRegistry.createFluidMaterial(986, "blue_vitriol_solution", 0x074FFE, "fluid", [<material:blue_vitriol_water_solution> * 1, <material:water> * 1]);
MaterialRegistry.createFluidMaterial(987, "green_vitriol_solution", 0x3EB640, "fluid", [<material:green_vitriol> * 1, <material:water> * 1]);
MaterialRegistry.createFluidMaterial(988, "cyan_vitriol_solution", 0x1B9398, "fluid", [<material:nickel_sulfate_water_solution> * 1, <material:water> * 1]);
MaterialRegistry.createFluidMaterial(989, "white_vitriol_solution", 0xF6F6F6, "fluid", [<material:white_vitriol> * 1, <material:water> * 1]);
MaterialRegistry.createFluidMaterial(990, "pearl_vitriol_solution", 0xF9F8DE, "fluid", [<material:pearl_vitriol> * 1, <material:water> * 1]);
MaterialRegistry.createFluidMaterial(991, "mixed_vitriols", 0x2C8FBF, "fluid", [<material:blue_vitriol_solution> * 1, <material:green_vitriol_solution> * 1]);
MaterialRegistry.createFluidMaterial(992, "copper_rich_mixed_vitriols", 0x1969EC, "fluid", [<material:blue_vitriol_solution> * 5, <material:green_vitriol_solution> * 1]);
