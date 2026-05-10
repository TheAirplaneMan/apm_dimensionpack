multidimensions.clear_dimensions() -- Purge the rest of the dimensions

local modpath = minetest.get_modpath("apm_dimensionpack")

dofile(modpath.."/override.lua")

-- Misc Items

dofile(modpath.."/misc_generation.lua")
dofile(modpath.."/misc_node.lua")
dofile(modpath.."/misc_item.lua")

-- Frostland

dofile(modpath.."/frostland_liquid.lua")
dofile(modpath.."/frostland_crafting.lua")
dofile(modpath.."/frostland_node.lua")
dofile(modpath.."/frostland_item.lua")
dofile(modpath.."/ice_cube.lua")
dofile(modpath.."/ice_zombie.lua")


-- Liraofd

dofile(modpath.."/liraofd_crafting.lua")
dofile(modpath.."/liraofd_item.lua")
dofile(modpath.."/liraofd_liquid.lua")
dofile(modpath.."/liraofd_node.lua")
dofile(modpath.."/liraofd_tool.lua")
dofile(modpath.."/mud_monster.lua")
dofile(modpath.."/mildyte.lua")
dofile(modpath.."/sulphur_torch.lua")

-- Oblivion

--dofile(modpath.."/oblivion_item.lua")
dofile(modpath.."/oblivion_node.lua")









-- All Dimension Registry

-- DO NOT ALPHABETICALLY SORT DIMENSIONS OR IT WILL MESS UP THE GENERATION ORDER, YOU'VE BEEN WARNED....

dofile(modpath.."/dimension.lua")

