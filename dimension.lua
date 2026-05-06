local liraofd_ground_ores = {
	["apm_dimensionpack:swamp_tree_1"] = 1000,
	["apm_dimensionpack:swamp_tree_2"] = 1000,
	["apm_dimensionpack:rotten_tree_1"] = 10000,
	["apm_dimensionpack:brittle_stick_tree_1"] = 7000,
	["apm_dimensionpack:brittle_stick_tree_2"] = 10000,
	["flowers:mushroom_brown"] = 1000,
	["flowers:mushroom_red"] = 1000,
	["default:dry_shrub"] = 1250,
	["apm_dimensionpack:bog_grass"] = 500,
	["default:junglegrass"] = 10000,
	["apm_dimensionpack:liraofdian_grass_1"] = 500,
	["apm_dimensionpack:liraofdian_grass_2"] = 300,
	["apm_dimensionpack:liraofdian_grass_3"] = 200,
}

local liraofd_stone_ores = {
	["apm_dimensionpack:swampstone_with_sulphur"] = 800,
	["apm_dimensionpack:swampstone_with_pyrosium"] = 2250,
	["apm_dimensionpack:swampstone_with_stygium"] = 5000,
}

minetest.register_node("apm_dimensionpack:swamp_tree_1", {drawtype="airlike",groups = {apm_dimensionpack_schematic_submerge=1,not_in_creative_inventory=1},})
minetest.register_node("apm_dimensionpack:swamp_tree_2", {drawtype="airlike",groups = {apm_dimensionpack_schematic_submerge=1,not_in_creative_inventory=1},})
minetest.register_node("apm_dimensionpack:rotten_tree_1", {drawtype="airlike",groups = {apm_dimensionpack_schematic_submerge=1,not_in_creative_inventory=1},})
minetest.register_node("apm_dimensionpack:brittle_stick_tree_1", {drawtype="airlike",groups = {apm_dimensionpack_schematic=1,not_in_creative_inventory=1},})
minetest.register_node("apm_dimensionpack:brittle_stick_tree_2", {drawtype="airlike",groups = {apm_dimensionpack_schematic=1,not_in_creative_inventory=1},})

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
	water="apm_dimensionpack:swamp_water_source",
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
	name = "apm_dimensionpack:schematic_placer_submerge",
	run_at_every_load = true,
	nodenames = {"group:apm_dimensionpack_schematic_submerge"},
	action = function(pos, node)
		minetest.set_node(pos, {name = "air"})
		local tree=""
		if node.name=="apm_dimensionpack:swamp_tree_1" then
			tree=minetest.get_modpath("apm_dimensionpack") .. "/schematics/swamp_tree_1.mts"
		elseif node.name=="apm_dimensionpack:swamp_tree_2" then
			tree=minetest.get_modpath("apm_dimensionpack") .. "/schematics/swamp_tree_2.mts"
		elseif node.name=="apm_dimensionpack:rotten_tree_1" then
			tree=minetest.get_modpath("apm_dimensionpack") .. "/schematics/rotten_tree_1.mts"
		end
		minetest.place_schematic({x=pos.x,y=pos.y-1,z=pos.z}, tree, "random", {}, true)
	end,
})

minetest.register_lbm({ 
	name = "apm_dimensionpack:schematic_placer",
	run_at_every_load = true,
	nodenames = {"group:apm_dimensionpack_schematic"},
	action = function(pos, node)
		minetest.set_node(pos, {name = "air"})
		local tree=""
		if node.name=="apm_dimensionpack:brittle_stick_tree_1" then
			tree=minetest.get_modpath("apm_dimensionpack") .. "/schematics/brittle_stick_tree_1.mts"
		elseif node.name=="apm_dimensionpack:brittle_stick_tree_2" then
			tree=minetest.get_modpath("apm_dimensionpack") .. "/schematics/brittle_stick_tree_2.mts"
		end
		minetest.place_schematic({x=pos.x,y=pos.y,z=pos.z}, tree, "random", {}, true)
	end,
})

local LIRAOFD_SKY = {r = 35, g = 37, b = 32}

local original_sky = {}

-- Save original sky when player joins
minetest.register_on_joinplayer(function(player)
    local name = player:get_player_name()
    -- Use the modern table format
    original_sky[name] = player:get_sky(true)
end)

local function update_sky(player)
    if not player or not player:is_player() then return end

    local y = player:get_pos().y
    local name = player:get_player_name()

    if y >= 2000 and y <= 3000 then
        player:set_sky({
            type = "regular",
            sky_color = {
                day_sky     = LIRAOFD_SKY,
                day_horizon = LIRAOFD_SKY,
                night_sky   = LIRAOFD_SKY,
                night_horizon = LIRAOFD_SKY,
                dawn_sky    = LIRAOFD_SKY,
                dawn_horizon = LIRAOFD_SKY,
                indoors     = LIRAOFD_SKY,
            },
            clouds = false,
            fog = {
                fog_color = {r = 22, g = 22, b = 28},
            },
        })
    else
        -- Restore original sky safely
        local orig = original_sky[name]
        if orig then
            player:set_sky(orig)
        else
            player:set_sky()   -- reset to default
        end
    end
end

-- Main update loop
minetest.register_globalstep(function()
    for _, player in ipairs(minetest.get_connected_players()) do
        update_sky(player)
    end
end)

-- Initial update
minetest.register_on_joinplayer(function(player)
    minetest.after(1, update_sky, player)
end)

-- Cleanup
minetest.register_on_leaveplayer(function(player)
    original_sky[player:get_player_name()] = nil
end)