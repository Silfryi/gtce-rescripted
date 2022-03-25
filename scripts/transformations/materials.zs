#loader gregtech
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.IngotMaterial;
import mods.gregtech.material.FluidMaterial;
import mods.gregtech.material.MaterialCasting;



print("Editing the properties of some materials to make them better suited for their roles");

/**
* Edit brass, vanadiumsteel, and cobalt brass! We want them to have as much as bronze has in terms of parts
*/
MaterialRegistry.get("brass").addFlags(["GENERATE_FRAME", "GENERATE_SMALL_GEAR", "GENERATE_ROTOR"]);
MaterialCasting.toIngot(MaterialRegistry.get("brass")).setFluidPipeProperties(200, 2000, true);
//Reserved for new material
MaterialRegistry.get("vanadium_steel").addFlags(["GENERATE_RING", "GENERATE_ROTOR"]);
MaterialCasting.toIngot(MaterialRegistry.get("vanadium_steel")).setFluidPipeProperties(2100, 3200, true);

/**
* Edit a bunch of materials - we want pipes to have actually useful throughput(s)
*/
//MaterialCasting.toIngot(MaterialRegistry.get("wood")).setFluidPipeProperties(250, 310, true);
MaterialCasting.toIngot(MaterialRegistry.get("copper")).setFluidPipeProperties(150, 1000, true);
MaterialCasting.toIngot(MaterialRegistry.get("steel")).setFluidPipeProperties(225, 2500, true);
MaterialCasting.toIngot(MaterialRegistry.get("stainless_steel")).setFluidPipeProperties(300, 3000, true);
MaterialCasting.toIngot(MaterialRegistry.get("plastic")).setFluidPipeProperties(375, 350, true);
MaterialCasting.toIngot(MaterialRegistry.get("polyvinyl_chloride")).setFluidPipeProperties(500, 450, true);
MaterialCasting.toIngot(MaterialRegistry.get("polytetrafluoroethylene")).setFluidPipeProperties(625, 600, true);
MaterialCasting.toIngot(MaterialRegistry.get("titanium")).setFluidPipeProperties(600, 5000, true);
MaterialCasting.toIngot(MaterialRegistry.get("tungsten_steel")).setFluidPipeProperties(900, 7500, true);

/**
* Add needed parts to some materials - magnalium frames, vanadium-gallium fine wire
*/
MaterialRegistry.get("magnalium").addFlags(["GENERATE_FRAME"]);
MaterialRegistry.get("vanadium_gallium").addFlags(["GENERATE_FINE_WIRE"]);
//Nitrobenzene, for the proper production of oil-derivate epoxids
MaterialRegistry.createFluidMaterial(981, "nitrobenzene", 0xFFFBBE, "fluid", [<material:benzene> * 1, <material:nitrogen_dioxide> * 1]);
MaterialRegistry.get("nitrobenzene").addFlags(["DISABLE_DECOMPOSITION"]);
//Dusts needed for ore production
MaterialRegistry.createDustMaterial(982, "platpalladium", 0xF0F0B4, "shiny", 0, [<material:platinum> * 3, <material:palladium> * 1]);
MaterialRegistry.createDustMaterial(983, "sperrylite", 0xB6C199, "sand", 0, [<material:platinum> * 1, <material:sulfur> * 2]);
MaterialRegistry.createDustMaterial(984, "sperrylite_omeiite", 0xD5D5C2, "sand", 0, [<material:sperrylite> * 5, <material:osmiridium> * 1, <material:sulfur> * 4]);
MaterialRegistry.createDustMaterial(985, "barium_peroxide", 0xF0F0F0, "dull", 0, [<material:barium> * 1, <material:oxygen> * 2]);
MaterialRegistry.get("platpalladium").addFlags(["DECOMPOSITION_BY_CENTRIFUGING"]);
MaterialRegistry.get("sperrylite").addFlags(["DISABLE_DECOMPOSITION", "GENERATE_ORE"]);
MaterialRegistry.get("sperrylite_omeiite").addFlags(["DISABLE_DECOMPOSITION", "GENERATE_ORE"]);
MaterialRegistry.get("barium_peroxide").addFlags(["DISABLE_DECOMPOSITION"]);
//Fluid materials (some hidden, some not) for platinum sludge production
MaterialRegistry.createFluidMaterial(700, "green_vitriol", 0xFFFBBE, "fluid", [<material:iron> * 1, <material:sulfur> * 1, <material:oxygen> * 4, <material:water> * 7]);
MaterialRegistry.createFluidMaterial(986, "blue_vitriol_solution", 0x074FFE, "fluid", [<material:blue_vitriol_water_solution> * 1, <material:water> * 1]);
MaterialRegistry.createFluidMaterial(987, "green_vitriol_solution", 0x3EB640, "fluid", [<material:green_vitriol> * 1, <material:water> * 1]);
MaterialRegistry.createFluidMaterial(988, "cyan_vitriol_solution", 0x1B9398, "fluid", [<material:nickel_sulfate_water_solution> * 1, <material:water> * 1]);
MaterialRegistry.createFluidMaterial(989, "mixed_vitriols", 0x2C8FBF, "fluid", [<material:blue_vitriol_solution> * 1, <material:green_vitriol_solution> * 1]);
MaterialRegistry.createFluidMaterial(990, "copper_rich_mixed_vitriols", 0x1969EC, "fluid", [<material:blue_vitriol_solution> * 5, <material:green_vitriol_solution> * 1]);
//Disable decomposition where needed
MaterialRegistry.get("green_vitriol").addFlags(["DISABLE_DECOMPOSITION"]);
MaterialRegistry.get("blue_vitriol_water_solution").addFlags(["DISABLE_DECOMPOSITION"]);
MaterialRegistry.get("nickel_sulfate_water_solution").addFlags(["DISABLE_DECOMPOSITION"]);
MaterialRegistry.get("blue_vitriol_solution").addFlags(["DISABLE_DECOMPOSITION"]);
MaterialRegistry.get("green_vitriol_solution").addFlags(["DISABLE_DECOMPOSITION"]);
MaterialRegistry.get("cyan_vitriol_solution").addFlags(["DISABLE_DECOMPOSITION"]);
MaterialRegistry.get("mixed_vitriols").addFlags(["DISABLE_DECOMPOSITION"]);
MaterialRegistry.get("copper_rich_mixed_vitriols").addFlags(["DISABLE_DECOMPOSITION"]);


