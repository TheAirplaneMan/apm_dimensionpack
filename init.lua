multidimensions.clear_dimensions() -- Purge the rest of the dimensions

local modpath = minetest.get_modpath("apm_dimensionpack")



-- Liraofd

dofile(modpath.."/liraofd_item.lua")
dofile(modpath.."/liraofd_node.lua")
dofile(modpath.."/sulphur_torch.lua")

-- Liraofd

--dofile(modpath.."/oblivion_item.lua")
dofile(modpath.."/oblivion_node.lua")









-- All Dimension Registry

-- DO NOT ALPHABETICALLY SORT DIMENSIONS OR IT WILL MESS UP THE GENERATION ORDER, YOU'VE BEEN WARNED....

dofile(modpath.."/dimension.lua")
