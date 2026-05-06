minetest.register_decoration({
    name = "apm_dimensionpack:obelisk_1",
    deco_type = "schematic",
    schematic = minetest.get_modpath("apm_dimensionpack") .. "/schematics/obelisk_1.mts",
    place_on = {"group:soil", "group:stone", "group:sand", "default:dirt_with_grass",
                "default:dirt_with_dry_grass", "default:dirt_with_snow"},
    biomes = {},
    fill_ratio = 0.00008, 
    noise_params = {
         offset = -0.002,
         scale = 0.003,
         spread = {x = 250, y = 250, z = 250},
         seed = 12345,
         octaves = 3,
         persist = 0.5,
     },
    y_min = 1,
    y_max = 512,
    place_offset_y = 1,

    flags = "place_center_x, place_center_z, all_floors, force_placement"
})