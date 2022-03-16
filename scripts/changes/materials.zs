#loader gregtech
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.IngotMaterial;
import mods.gregtech.material.FluidMaterial;
import mods.gregtech.material.MaterialCasting;



/**
* Edit brass, vanadiumsteel, and cobalt brass! We want them to have as much as bronze has in terms of parts
*/
MaterialRegistry.get("brass").addFlags(["GENERATE_FRAME", "GENERATE_SMALL_GEAR", "GENERATE_ROTOR"]);
MaterialCasting.toIngot(MaterialRegistry.get("brass")).setFluidPipeProperties(200, 2000, true);
MaterialRegistry.get("cobalt_brass").addFlags(["GENERATE_RING", "GENERATE_ROTOR"]);
MaterialCasting.toIngot(MaterialRegistry.get("cobalt_brass")).setFluidPipeProperties(400, 2400, true);
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
