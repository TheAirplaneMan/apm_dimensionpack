

minetest.register_node("apm_dimensionpack:frozen_stone", {
	description = ("Frozen Stone"),
	tiles = {"apm_dimensionpack_frozen_stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = "apm_dimensionpack:frozen_stone_cobble",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("apm_dimensionpack:frozen_stone_cobble", {
	description = ("Frozen Cobblestone"),
	tiles = {"apm_dimensionpack_frozen_stone_cobble.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("apm_dimensionpack:frozen_dirt", {
	description = ("Frozen Dirt"),
	tiles = {"apm_dimensionpack_frozen_dirt.png"},
	groups = {crumbly = 3, soil = 1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("apm_dimensionpack:frozen_dirt_with_frozen_grass", {
	description = ("Frozen Dirt with Frozen Grass"),
	tiles = {"apm_dimensionpack_frozen_grass.png", "apm_dimensionpack_frozen_dirt.png", "apm_dimensionpack_frozen_dirt.png^apm_dimensionpack_frozen_grass_side.png"},
	drop = "apm_dimensionpack:frozen_dirt",
	groups = {crumbly = 3, soil = 1},
	sounds = default.node_sound_dirt_defaults(),
})