minetest.register_tool("apm_dimensionpack:pyrosium_tool_pickaxe", {
	description = ("Pyrosium Pickaxe"),
	inventory_image = "apm_dimensionpack_pyrosium_tool_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.50, [2]=1.80, [3]=0.90}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("apm_dimensionpack:pyrosium_tool_shovel", {
	description = ("Pyrosium Shovel"),
	inventory_image = "apm_dimensionpack_pyrosium_tool_shovel.png",
	wield_image = "apm_dimensionpack_pyrosium_tool_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.65, [2]=1.05, [3]=0.45}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("apm_dimensionpack:pyrosium_tool_axe", {
	description = ("Pyrosium Axe"),
	inventory_image = "apm_dimensionpack_pyrosium_tool_axe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.75, [2]=1.70, [3]=1.15}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("apm_dimensionpack:pyrosium_tool_sword", {
	description = ("Pyrosium Sword"),
	inventory_image = "apm_dimensionpack_pyrosium_tool_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.75, [2]=1.30, [3]=0.375}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_craft {
	output = 'apm_dimensionpack:pyrosium_tool_pickaxe',
	recipe = {
		{'apm_dimensionpack:pyrosium_ingot', 'apm_dimensionpack:pyrosium_ingot', 'apm_dimensionpack:pyrosium_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''}
	}
}

minetest.register_craft {
	output = 'apm_dimensionpack:pyrosium_tool_shovel',
	recipe = {
		{'', 'apm_dimensionpack:pyrosium_ingot', ''},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''}
	}
}

minetest.register_craft {
	output = 'apm_dimensionpack:pyrosium_tool_axe',
	recipe = {
		{'apm_dimensionpack:pyrosium_ingot', 'apm_dimensionpack:pyrosium_ingot', ''},
		{'apm_dimensionpack:pyrosium_ingot', 'group:stick', ''},
		{'', 'group:stick', ''}
	}
}

minetest.register_craft {
	output = 'apm_dimensionpack:pyrosium_tool_sword',
	recipe = {
		{'', 'apm_dimensionpack:pyrosium_ingot', ''},
		{'', 'apm_dimensionpack:pyrosium_ingot', ''},
		{'', 'group:stick', ''}
	}
}