minetest.register_node("apm_dimensionpack:oblivion_stone", {
	description = ("Oblivion Stone"),
	tiles = {"apm_dimensionpack_oblivion_stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = "apm_dimensionpack:oblivion_stone_cobble",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("apm_dimensionpack:oblivion_stone_cobble", {
	description = ("Oblivion Cobblestone"),
	tiles = {"apm_dimensionpack_oblivion_stone_cobble.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("apm_dimensionpack:ibot_tree", {
	description = ("Ibot Tree"),
	tiles = {"apm_dimensionpack_ibot_tree_top.png", "apm_dimensionpack_ibot_tree_top.png", "apm_dimensionpack_ibot_tree.png"},
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_craft({
	output = "apm_dimensionpack:ibot_wood 4",
	recipe = {
		{"apm_dimensionpack:ibot_tree"},
	}
})

minetest.register_node("apm_dimensionpack:ibot_wood", {
	description = ("Ibot Tree Wood Planks"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"apm_dimensionpack_ibot_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})