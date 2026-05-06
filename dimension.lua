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
		{"apm_dimensionpack:resonance_gemstone", "apm_dimensionpack:dimension_token_liraofd", "apm_dimensionpack:resonance_gemstone"},
		{"default:mossycobble","apm_dimensionpack:resonance_gemstone_primed","default:mossycobble",},
		{"default:obsidian", "default:obsidian", "default:obsidian"},
	}
})

minetest.override_item("multidimensions:teleporter_liraofd", {
	tiles = {"apm_dimensionpack_portal_block_top.png^apm_dimensionpack_dimension_token_liraofd.png", "default_obsidian.png", "default_obsidian.png^apm_dimensionpack_portal_block_liraofd.png"},
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

minetest.override_item("multidimensions:teleporterre", {
	tiles = {"apm_dimensionpack_portal_block_top.png^apm_dimensionpack_dimension_token_return.png", "default_obsidian.png", "default_obsidian.png^apm_dimensionpack_portal_block_return.png"},
})

multidimensions.register_dimension("frostland",{
--	ground_ores = table.copy(liraofd_ground_ores),
--	stone_ores = table.copy(liraofd_stone_ores),
--	sand_ores={["default:clay"]={chunk=2,chance=5000}},
--	grass_ores={
--		["default:dirt_with_snow"]={chance=1,max_heat=20},
--	},
--	water_ores={
--		["default:ice"]={chance=1,max_heat=20},
--	},
	dirt="apm_dimensionpack:frozen_dirt",
	grass="apm_dimensionpack:frozen_dirt_with_frozen_grass",
	water="apm_dimensionpack:cold_water_source",
	stone="apm_dimensionpack:frozen_stone",
	sand="apm_dimensionpack:frozen_dirt",
	node={description="Frostland Portal-Block"},
	craft = {
		{"apm_dimensionpack:resonance_gemstone", "apm_dimensionpack:dimension_token_frostland", "apm_dimensionpack:resonance_gemstone"},
		{"default:snowblock","apm_dimensionpack:resonance_gemstone_primed","default:snowblock",},
		{"apm_dimensionpack:ice_obsidian", "apm_dimensionpack:ice_obsidian", "apm_dimensionpack:ice_obsidian"},
	}
})

minetest.override_item("multidimensions:teleporter_frostland", {
	tiles = {"apm_dimensionpack_portal_block_top.png^apm_dimensionpack_dimension_token_frostland.png", "apm_dimensionpack_ice_obsidian.png", "apm_dimensionpack_ice_obsidian.png^apm_dimensionpack_portal_block_frostland.png"},
})


-- Unregister base dimensions, bye bye

minetest.unregister_item("multidimensions:teleporter_hot")
minetest.unregister_item("multidimensions:teleporter_cold")
minetest.unregister_item("multidimensions:teleporter_water")
minetest.unregister_item("multidimensions:teleporter_desert")
minetest.unregister_item("multidimensions:teleporter_savana")
minetest.unregister_item("multidimensions:teleporter_flatland")
minetest.unregister_item("multidimensions:teleporter_sandstone")
minetest.unregister_item("multidimensions:teleporter_earthlike1")
minetest.unregister_item("multidimensions:teleporter_earthlike2")
minetest.unregister_item("multidimensions:teleporter_floatandlike")
