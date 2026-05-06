-- Swamp Relic

minetest.register_craftitem("apm_dimensionpack:marsh_relic", {
	description = ("Marsh Relic"),
	inventory_image = "apm_dimensionpack_marsh_relic.png"
})

minetest.register_craftitem("apm_dimensionpack:marsh_relic_fragment", {
	description = ("Marsh Relic Fragment"),
	inventory_image = "apm_dimensionpack_marsh_relic_fragment.png"
})

minetest.register_craft({
	output = "apm_dimensionpack:marsh_relic",
	recipe = {
		{"apm_dimensionpack:marsh_relic_fragment", "apm_dimensionpack:marsh_relic_fragment"},
		{"apm_dimensionpack:marsh_relic_fragment", "apm_dimensionpack:marsh_relic_fragment"},
	}
})


-- Sulphur

minetest.register_craftitem("apm_dimensionpack:sulphur", {
	description = ("Sulphur"),
	inventory_image = "apm_dimensionpack_sulphur.png",
	groups = {sulphur = 1, flammable = 1}
})

minetest.register_craft({
	type = "fuel",
	recipe = "apm_dimensionpack:sulphur",
	burntime = 40,
})



-- Pyrosium

minetest.register_craftitem("apm_dimensionpack:pyrosium_lump", {
	description = ("Pyrosium Lump"),
	inventory_image = "apm_dimensionpack_pyrosium_lump.png"
})

minetest.register_craftitem("apm_dimensionpack:pyrosium_ingot", {
	description = ("Pyrosium Ingot"),
	inventory_image = "apm_dimensionpack_pyrosium_ingot.png"
})

minetest.register_craft({
	type = "cooking",
	output = "apm_dimensionpack:pyrosium_ingot",
	recipe = "apm_dimensionpack:pyrosium_lump",
})


-- Stygium

minetest.register_craftitem("apm_dimensionpack:stygium_lump", {
	description = ("Stygium Lump"),
	inventory_image = "apm_dimensionpack_stygium_lump.png"
})

minetest.register_craftitem("apm_dimensionpack:stygium_ingot", {
	description = ("Stygium Ingot"),
	inventory_image = "apm_dimensionpack_stygium_ingot.png"
})

minetest.register_craft({
	type = "cooking",
	output = "apm_dimensionpack:stygium_ingot",
	recipe = "apm_dimensionpack:stygium_lump",
})

minetest.register_craft({
	output = "apm_dimensionpack:brittle_stick 2",
	recipe = {
		{"apm_dimensionpack:brittle_stick_tree"},
	}
})

-- Brittlestick

minetest.register_craftitem("apm_dimensionpack:brittle_stick", {
	description = ("Brittle Stick"),
	inventory_image = "apm_dimensionpack_brittle_stick.png",
	groups = {food_brittle_stick = 1, food_stick = 1},
	on_use = minetest.item_eat(2),
})