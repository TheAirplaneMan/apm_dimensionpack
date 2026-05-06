if minetest.get_modpath("bucket") then
	bucket.register_liquid(
		"apm_dimensionpack:swamp_water_source",
		"apm_dimensionpack:swamp_water_flowing",
		"apm_dimensionpack:bucket_swamp_water",
		"bucket.png^apm_dimensionpack_swamp_water_bucket.png",
		("Swamp Water Bucket"),
		{tool = 1, water_bucket = 1}
	)
end

minetest.register_node("apm_dimensionpack:swamp_water_source", {
	description = ("Swamp Water Source"),
	drawtype = "liquid",
	waving = 3,
	tiles = {
		{
			name = "default_water_source_animated.png^[contrast:150:0^[colorize:#353d29:250^[opacity:180",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "default_water_source_animated.png^[contrast:150:0^[colorize:#353d29:250^[opacity:180",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "apm_dimensionpack:swamp_water_flowing",
	liquid_alternative_source = "apm_dimensionpack:swamp_water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 170, r = 41, g = 44, b = 37},
	groups = {water = 3, liquid = 3, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("apm_dimensionpack:swamp_water_flowing", {
	description = ("Flowing Swamp Water"),
	drawtype = "flowingliquid",
	waving = 3,
	tiles = {"default_water.png"},
	special_tiles = {
		{
			name = "default_water_flowing_animated.png^[contrast:150:0^[colorize:#353d29:250^[opacity:180",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.5,
			},
		},
		{
			name = "default_water_flowing_animated.png^[contrast:150:0^[colorize:#353d29:250^[opacity:180",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.5,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "apm_dimensionpack:swamp_water_flowing",
	liquid_alternative_source = "apm_dimensionpack:swamp_water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 170, r = 41, g = 44, b = 37},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})