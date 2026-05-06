minetest.register_craftitem("apm_dimensionpack:resonance", {
	description = ("Resonance"),
	inventory_image = "apm_dimensionpack_resonance.png"
})

minetest.register_craftitem("apm_dimensionpack:resonance_gemstone", {
	description = ("Resonance Gemstone"),
	inventory_image = "apm_dimensionpack_resonance_gemstone.png"
})

minetest.register_craftitem("apm_dimensionpack:resonance_gemstone_primed", {
	description = ("Primed Resonance Gemstone"),
	inventory_image = "apm_dimensionpack_resonance_gemstone_primed.png"
})

minetest.register_craft({
	output = "apm_dimensionpack:resonance_gemstone",
	recipe = {
		{"apm_dimensionpack:resonance", "apm_dimensionpack:resonance", "apm_dimensionpack:resonance"},
		{"apm_dimensionpack:resonance", "apm_dimensionpack:resonance", "apm_dimensionpack:resonance"},
		{"apm_dimensionpack:resonance", "apm_dimensionpack:resonance", "apm_dimensionpack:resonance"},
	}
})

minetest.register_craft({
	output = "apm_dimensionpack:resonance_gemstone_primed",
	recipe = {
		{"apm_dimensionpack:resonance", "default:mese_crystal_fragment", "apm_dimensionpack:resonance"},
		{"default:mese_crystal_fragment", "apm_dimensionpack:resonance_gemstone", "default:mese_crystal_fragment"},
		{"apm_dimensionpack:resonance", "default:mese_crystal_fragment", "apm_dimensionpack:resonance"},
	}
})






-- Dimension Tokens

minetest.register_craftitem("apm_dimensionpack:dimension_token_blank", {
	description = ("Blank Dimension Token"),
	inventory_image = "apm_dimensionpack_dimension_token_blank.png"
})

minetest.register_craftitem("apm_dimensionpack:dimension_token_liraofd", {
	description = ("Liraofd Dimension Token"),
	inventory_image = "apm_dimensionpack_dimension_token_liraofd.png"
})

minetest.register_craftitem("apm_dimensionpack:dimension_token_frostland", {
	description = ("Frostland Dimension Token"),
	inventory_image = "apm_dimensionpack_dimension_token_frostland.png"
})

minetest.register_craft({
	output = "apm_dimensionpack:dimension_token_blank",
	recipe = {
		{"default:tin_ingot", "default:steel_ingot", "default:tin_ingot"},
		{"default:steel_ingot", "default:obsidian", "default:steel_ingot"},
		{"default:tin_ingot", "default:steel_ingot", "default:tin_ingot"},
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "apm_dimensionpack:dimension_token_liraofd",
	recipe = {"apm_dimensionpack:dimension_token_blank", "apm_dimensionpack:marsh_relic", "default:junglesapling", "flowers:mushroom_red", "default:mossycobble", "bucket:bucket_water"}
})

minetest.register_craft({
	type = "shapeless",
	output = "apm_dimensionpack:dimension_token_frostland",
	recipe = {"apm_dimensionpack:dimension_token_blank", "default:diamond", "default:flint", "default:glass", "default:ice", "default:snow"}
})