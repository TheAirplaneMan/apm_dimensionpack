

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

minetest.register_node("apm_dimensionpack:deepfrozen_ice", {
	description = ("Deepfrozen Ice"),
	drawtype = "glasslike",
	tiles = {"apm_dimensionpack_deepfrozen_ice.png"},
	drop = "apm_dimensionpack:ice_shard 2",
	light_source = 4,
	paramtype = "light",
	use_texture_alpha = "blend",
	is_ground_content = false,
	sunlight_propagates = false,
	sounds = default.node_sound_glass_defaults(),
	groups = {cracky = 3, slippery = 8},
})

minetest.register_node("apm_dimensionpack:shinestone", {
	description = ("Shinestone"),
	drawtype = "glasslike",
	tiles = {"apm_dimensionpack_shinestone.png"},
	drop = "apm_dimensionpack:shinestone_dust 4",
	light_source = 14,
	paramtype = "light",
	use_texture_alpha = "blend",
	is_ground_content = false,
	sunlight_propagates = false,
	sounds = default.node_sound_glass_defaults(),
	groups = {cracky = 3, oddly_breakable_by_hand = 1},
})

minetest.register_node("apm_dimensionpack:snowbark_tree", {
	description = ("Snowbark Tree"),
	tiles = {"apm_dimensionpack_snowbark_tree_top.png", "apm_dimensionpack_snowbark_tree_top.png", "apm_dimensionpack_snowbark_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("apm_dimensionpack:snowbark_leaves", {
	description = ("Snowbark Tree Leaves"),
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"apm_dimensionpack_snowbark_leaves.png"},
	special_tiles = {"apm_dimensionpack_snowbark_leaves_simple.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {"apm_dimensionpack:snowbark_sapling"},
				rarity = 20,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {"apm_dimensionpack:snowbark_leaves"},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("apm_dimensionpack:snowbark_wood", {
	description = ("Snowbark Wood Planks"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"apm_dimensionpack_snowbark_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "apm_dimensionpack:snowbark_wood 4",
	recipe = {
		{"apm_dimensionpack:snowbark_tree"},
	}
})