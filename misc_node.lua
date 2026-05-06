minetest.register_node("apm_dimensionpack:ice_obsidian", {
	description = ("Ice Obsidian"),
	tiles = {"default_obsidian.png^apm_dimensionpack_ice_obsidian.png"},
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 1, level = 2, cools_lava = 1, slippery = 3},
})

minetest.register_craft({
	output = "apm_dimensionpack:ice_obsidian",
	recipe = {
		{"default:ice", "default:snowblock", "default:ice"},
		{"default:snowblock", "default:obsidian", "default:snowblock"},
		{"default:ice", "default:snowblock", "default:ice"},
	}
})

minetest.register_node("apm_dimensionpack:obelisk", {
	description = ("Obelisk"),
	tiles = {"apm_dimensionpack_obelisk_top.png", "apm_dimensionpack_obelisk_top.png", "apm_dimensionpack_obelisk_side.png"},
	groups = {cracky = 1},
	drop = "apm_dimensionpack:resonance",
	paramtype = "light",
	light_source = 4,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("apm_dimensionpack:obelisk_top", {
	description = ("Obelisk Top"),
	tiles = {"apm_dimensionpack_obelisk_top_top.png", "apm_dimensionpack_obelisk_top.png", "apm_dimensionpack_obelisk_top_side.png"},
	groups = {cracky = 1},
	drop = "apm_dimensionpack:resonance",
	paramtype = "light",
	light_source = 4,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "apm_dimensionpack:obelisk",
	recipe = {
		{"group:stone", "apm_dimensionpack:resonance", "group:stone"},
		{"group:stone", "apm_dimensionpack:resonance_gemstone", "group:stone"},
		{"group:stone", "apm_dimensionpack:resonance", "group:stone"},
	}
})

minetest.register_craft({
	output = "apm_dimensionpack:obelisk_top",
	recipe = {
		{"group:stone", "apm_dimensionpack:resonance", "group:stone"},
		{"group:stone", "apm_dimensionpack:resonance_gemstone_primed", "group:stone"},
		{"group:stone", "apm_dimensionpack:resonance", "group:stone"},
	}
})