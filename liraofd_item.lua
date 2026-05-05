
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