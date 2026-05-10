minetest.register_craft({
	output = "apm_dimensionpack:ice_shard 4",
	recipe = {
		{"apm_dimensionpack:deepfrozen_ice"},
	}
})

minetest.register_craft({
	output = "apm_dimensionpack:deepfrozen_ice",
	recipe = {
		{"apm_dimensionpack:ice_shard", "apm_dimensionpack:ice_shard"},
		{"apm_dimensionpack:ice_shard", "apm_dimensionpack:ice_shard"},
	}
})