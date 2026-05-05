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

minetest.register_node("apm_dimensionpack:rotten_tree", {
	description = ("Rotten Tree"),
	tiles = {"apm_dimensionpack_rotten_tree.png"},
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("apm_dimensionpack:swamp_tree", {
	description = ("Swamp Tree"),
	tiles = {"apm_dimensionpack_swamp_tree_top.png", "apm_dimensionpack_swamp_tree_top.png", "apm_dimensionpack_swamp_tree.png"},
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
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







-- Swamp Grass

minetest.register_node("apm_dimensionpack:liraofdian_grass_1", {
	description = ("Liraofdian Grass"),
	drawtype = "plantlike",
	waving = 1,
	tiles = {"apm_dimensionpack_liraofdian_grass_1.png"},
	inventory_image = "apm_dimensionpack_liraofdian_grass_1.png",
	wield_image = "apm_dimensionpack_liraofdian_grass_1.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3, flora = 1, grass = 1,
		fern = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -0.25, 6 / 16},
	},

	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("apm_dimensionpack:liraofdian_grass_" .. math.random(1, 3))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("apm_dimensionpack:liraofdian_grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,
})

for i = 2, 3 do
	minetest.register_node("apm_dimensionpack:liraofdian_grass_" .. i, {
		description = ("Liraofdian Grass"),
		drawtype = "plantlike",
		waving = 1,
		tiles = {"apm_dimensionpack_liraofdian_grass_" .. i .. ".png"},
		inventory_image = "apm_dimensionpack_liraofdian_grass_" .. i .. ".png",
		wield_image = "apm_dimensionpack_liraofdian_grass_" .. i .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		buildable_to = true,
		groups = {snappy = 3, flammable = 3, flora = 1, attached_node = 1,
			grass = 1, fern = 1, not_in_creative_inventory = 1},
		drop = "apm_dimensionpack:liraofdian_grass_1",
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -0.25, 6 / 16},
		},
	})
end