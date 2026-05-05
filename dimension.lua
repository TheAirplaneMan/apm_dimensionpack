local liraofd_ground_ores = {
	["apm_dimensionpack:swamp_tree_1"] = 1000,
}

local liraofd_stone_ores = {
	["apm_dimensionpack:swampstone_with_sulphur"] = 250,
	["apm_dimensionpack:swampstone_with_pyrosium"] = 700,
}

minetest.register_node("apm_dimensionpack:swamp_tree_1", {drawtype="airlike",groups = {apm_dimensionpack_schematic=1,not_in_creative_inventory=1},})

multidimensions.register_dimension("liraofd",{
	ground_ores = table.copy(liraofd_ground_ores),
	stone_ores = table.copy(liraofd_stone_ores),
--	sand_ores={["default:clay"]={chunk=2,chance=5000}},
--	grass_ores={
--		["default:dirt_with_snow"]={chance=1,max_heat=20},
--	},
--	water_ores={
--		["default:ice"]={chance=1,max_heat=20},
--	},
	dirt="apm_dimensionpack:mud",
	grass="apm_dimensionpack:mud_with_liraofdian_grass",
	water="default:water_source",
	stone="apm_dimensionpack:swampstone",
	sand="apm_dimensionpack:mud",
	node={description="Liraofd Portal-Block"},
	craft = {
		{"dimensionfun:8bits", "default:steel_ingot", "dimensionfun:8bits"},
		{"default:steel_ingot","default:mese","default:steel_ingot",},
		{"dimensionfun:8bits", "default:steel_ingot", "dimensionfun:8bits"},
	}
})

minetest.register_lbm({ 
	name = "apm_dimensionpack:schematic_placer",
	run_at_every_load = true,
	nodenames = {"group:apm_dimensionpack_schematic"},
	action = function(pos, node)
		minetest.set_node(pos, {name = "air"})
		local tree=""
		if node.name=="apm_dimensionpack:swamp_tree_1" then
			tree=minetest.get_modpath("apm_dimensionpack") .. "/schematics/swamp_tree_1.mts"
		end
		minetest.place_schematic({x=pos.x,y=pos.y,z=pos.z}, tree, "random", {}, true)
	end,
})