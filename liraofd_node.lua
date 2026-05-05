minetest.register_node("apm_dimensionpack:swampstone", {
	description = ("Swampstone"),
	tiles = {"apm_dimensionpack_swampstone.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("apm_dimensionpack:swampstone_with_sulphur", {
	description = ("Sulphur Ore"),
	tiles = {"apm_dimensionpack_swampstone.png^apm_dimensionpack_sulphur_mineral.png"},
	groups = {cracky = 3},
	drop = "apm_dimensionpack:sulphur",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("apm_dimensionpack:swampstone_with_pyrosium", {
	description = ("Pyrosium Ore"),
	tiles = {"apm_dimensionpack_swampstone.png^apm_dimensionpack_pyrosium_mineral.png"},
	groups = {cracky = 2},
	drop = "apm_dimensionpack:pyrosium_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("apm_dimensionpack:mud", {
	description = ("Mud"),
	tiles = {"apm_dimensionpack_mud.png"},
	groups = {crumbly = 3, soil = 1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("apm_dimensionpack:mud_with_liraofdian_grass", {
	description = ("Mud with Liraofdian Grass"),
	tiles = {"apm_dimensionpack_liraofdian_grass_top.png", "apm_dimensionpack_mud.png", "apm_dimensionpack_mud.png^apm_dimensionpack_liraofdian_grass_side.png"},
	groups = {crumbly = 3, soil = 1},
	drop = "apm_dimensionpack:mud",
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("apm_dimensionpack:swamp_tree", {
	description = ("Swamp Tree"),
	tiles = {"apm_dimensionpack_swamp_tree_top.png", "apm_dimensionpack_swamp_tree_top.png", "apm_dimensionpack_swamp_tree.png"},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("apm_dimensionpack:swamp_leaves", {
	description = ("Swamp Tree Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"apm_dimensionpack_swamp_leaves.png"},
	special_tiles = {"apm_dimensionpack_swamp_leaves_simple.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"apm_dimensionpack:swamp_sapling"}, rarity = 20},
			{items = {"apm_dimensionpack:swamp_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})