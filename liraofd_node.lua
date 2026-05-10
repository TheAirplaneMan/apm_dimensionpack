

minetest.register_node("apm_dimensionpack:swampstone", {
	description = ("Swampstone"),
	tiles = {"apm_dimensionpack_swampstone.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("apm_dimensionpack:swampstone_brick", {
	description = ("Swampstone Brick"),
	tiles = {"apm_dimensionpack_swampstone_brick.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "apm_dimensionpack:swampstone_brick 4",
	recipe = {
		{"apm_dimensionpack:swampstone", "apm_dimensionpack:swampstone"},
		{"apm_dimensionpack:swampstone", "apm_dimensionpack:swampstone"},
	}
})

minetest.register_node("apm_dimensionpack:swampstone_with_sulphur", {
	description = ("Sulphur Ore"),
	tiles = {"apm_dimensionpack_swampstone.png^apm_dimensionpack_sulphur_mineral.png"},
	groups = {cracky = 3},
	drop = "apm_dimensionpack:sulphur",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("apm_dimensionpack:sulphur_block", {
	description = ("Sulphur Block"),
	tiles = {"apm_dimensionpack_sulphur_block.png"},
	is_ground_content = false,
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("apm_dimensionpack:swampstone_with_pyrosium", {
	description = ("Pyrosium Ore"),
	tiles = {"apm_dimensionpack_swampstone.png^apm_dimensionpack_pyrosium_mineral.png"},
	groups = {cracky = 2},
	drop = "apm_dimensionpack:pyrosium_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("apm_dimensionpack:pyrosium_block", {
	description = ("Pyrosium Block"),
	tiles = {"apm_dimensionpack_pyrosium_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	paramtype = "light",
	light_source = 7,
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("apm_dimensionpack:swampstone_with_stygium", {
	description = ("Stygium Ore"),
	tiles = {"apm_dimensionpack_swampstone.png^apm_dimensionpack_stygium_mineral.png"},
	groups = {cracky = 2},
	drop = "apm_dimensionpack:pyrosium_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("apm_dimensionpack:stygium_block", {
	description = ("Stygium Block"),
	tiles = {"apm_dimensionpack_stygium_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_metal_defaults(),
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

minetest.register_craft({
	output = "apm_dimensionpack:swamp_wood 4",
	recipe = {
		{"apm_dimensionpack:swamp_tree"},
	}
})

minetest.register_node("apm_dimensionpack:swamp_wood", {
	description = ("Swamp Tree Wood Planks"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"apm_dimensionpack_swamp_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
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



-- Brittle Stick

minetest.register_node("apm_dimensionpack:brittle_stick_tree", {
	description = ("Brittle Stick Tree"),
	tiles = {"apm_dimensionpack_brittle_stick_tree_top.png", "apm_dimensionpack_brittle_stick_tree_top.png", "apm_dimensionpack_brittle_stick_tree.png"},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.2500, -0.5000, -0.2500, 0.2500, 0.5000, 0.2500}
		}
	},
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("apm_dimensionpack:brittle_stick_tree_block", {
	description = ("Brittle Stick Tree Block"),
	tiles = {"apm_dimensionpack_brittle_stick_tree_block_top.png", "apm_dimensionpack_brittle_stick_tree_block_top.png", "apm_dimensionpack_brittle_stick_tree_block.png"},
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_craft({
	output = "apm_dimensionpack:brittle_stick_tree 4",
	recipe = {
		{"apm_dimensionpack:brittle_stick_tree_block"},
	}
})

minetest.register_craft({
	output = "apm_dimensionpack:brittle_stick_tree_block",
	recipe = {
		{"apm_dimensionpack:brittle_stick_tree", "apm_dimensionpack:brittle_stick_tree"},
		{"apm_dimensionpack:brittle_stick_tree", "apm_dimensionpack:brittle_stick_tree"},
	}
})

minetest.register_node("apm_dimensionpack:brittle_stick_leaves", {
	description = ("Brittle Stick Tree Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"apm_dimensionpack_brittle_stick_leaves.png"},
	special_tiles = {"apm_dimensionpack_brittle_stick_leaves_simple.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"apm_dimensionpack:brittle_stick_sapling"}, rarity = 20},
			{items = {"apm_dimensionpack:brittle_stick_leaves"}}
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

minetest.register_node("apm_dimensionpack:bog_grass", {
	description = ("Bog Grass"),
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.69,
	tiles = {"apm_dimensionpack_bog_grass.png"},
	inventory_image = "apm_dimensionpack_bog_grass.png",
	wield_image = "apm_dimensionpack_bog_grass.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, bog_grass = 1, flammable = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
})

minetest.register_node("apm_dimensionpack:swampweed", {
	description = ("Thorny Swampweed"),
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.29,
	tiles = {"apm_dimensionpack_swampweed.png"},
	inventory_image = "apm_dimensionpack_swampweed.png",
	wield_image = "apm_dimensionpack_swampweed.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, bog_grass = 1, flammable = 1},
	damage_per_second = 2,
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
})