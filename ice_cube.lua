
-- Ice Cube Originally Green Slimes by TomasJLuis & TenPlus1

-- sounds

local ice_cube_sounds = {
	damage = "default_ice_dig",
	death = "default_break_glass",
	jump = "default_ice_footstep",
	attack = "default_ice_dug",
}

-- ice cube textures

local ice_cube_textures = {
	"apm_dimensionpack_ice_cube_side.png", "apm_dimensionpack_ice_cube_side.png", "apm_dimensionpack_ice_cube_side.png",
	"apm_dimensionpack_ice_cube_side.png", "apm_dimensionpack_ice_cube_front.png", "apm_dimensionpack_ice_cube_side.png"
}

-- small ice cube

mobs:register_mob("apm_dimensionpack:ice_cube_small", {
	description = ("Small Ice Cube"),
	type = "monster",
	hp_min = 4, hp_max = 6,
	collisionbox = {-0.25, -0.25, -0.25, 0.25, 0.25, 0.25},
	stepheight = 0.5,
	visual = "cube",
	visual_size = {x = 0.5, y = 0.5},
	textures = {ice_cube_textures},
	blood_texture = "apm_dimensionpack_ice_cube_blood.png",
	makes_footstep_sound = false,
	sounds = ice_cube_sounds,
	attack_type = "dogfight",
	attack_animals = true,
	damage = 3, reach = 2,
	passive = false,
	walk_velocity = 1,
	run_velocity = 1,
	walk_chance = 0,
	jump_chance = 30,
	jump_height = 3,
	armor = 80,
	view_range = 15,
	drops = {
		{name = "apm_dimensionpack:ice_shard", chance = 1, min = 0, max = 2},
	},
	water_damage = 0,
	lava_damage = 10,
	light_damage = 0
})

-- medium ice cube

mobs:register_mob("apm_dimensionpack:ice_cube_medium", {
	description = ("Medium Ice Cube"),
	type = "monster",
	hp_min = 8, hp_max = 12,
	collisionbox = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	stepheight = 0.5,
	visual = "cube",
	visual_size = {x = 1, y = 1},
	textures = {ice_cube_textures},
	blood_texture = "apm_dimensionpack_ice_cube_blood.png",
	makes_footstep_sound = false,
	sounds = ice_cube_sounds,
	attack_type = "dogfight",
	attack_animals = true,
	damage = 5, reach = 2,
	passive = false,
	walk_velocity = 1,
	run_velocity = 2,
	walk_chance = 0,
	jump_chance = 30,
	jump_height = 5,
	armor = 80,
	view_range = 15,
	water_damage = 0,
	lava_damage = 10,
	light_damage = 0,

	on_die = function(self, pos)

		local num = math.random(2, 4)

		for i = 1, num do

			local obj = core.add_entity({
				x = pos.x + math.random(-2, 2),
				y = pos.y + 1,
				z = pos.z + (math.random(-2, 2))
			}, "apm_dimensionpack:ice_cube_small")

			local ent = obj and obj:get_luaentity()

			if ent then
				ent.state = "attack"
				ent.attack = self.attack
			end
		end
	end
})

-- big ice cube

mobs:register_mob("apm_dimensionpack:ice_cube_big", {
	description = ("Big Ice Cube"),
	type = "monster",
	hp_min = 16, hp_max = 24,
	collisionbox = {-1, -1, -1, 1, 1, 1},
	stepheight = 0.5,
	visual = "cube",
	visual_size = {x = 2, y = 2},
	textures = {ice_cube_textures},
	blood_texture = "apm_dimensionpack_ice_cube_blood.png",
	makes_footstep_sound = false,
	sounds = ice_cube_sounds,
	attack_type = "dogfight",
	attack_animals = true,
	damage = 8, reach = 3,
	passive = false,
	walk_velocity = 1,
	run_velocity = 2,
	walk_chance = 0,
	jump_chance = 30,
	jump_height = 8,
	armor = 100,
	view_range = 15,
	water_damage = 0,
	lava_damage = 10,
	light_damage = 0,

	on_die = function(self, pos)

		local num = math.random(2, 4)

		for i = 1, num do

			local obj = core.add_entity({
				x = pos.x + math.random(-2, 2),
				y = pos.y + 1,
				z = pos.z + (math.random(-2, 2))
			}, "apm_dimensionpack:ice_cube_medium")

			local ent = obj and obj:get_luaentity()

			if ent then
				ent.state = "attack"
				ent.attack = self.attack
			end
		end
	end
})

-- spawn eggs

mobs:register_egg("apm_dimensionpack:ice_cube_small", ("Small Ice Cube"), "apm_dimensionpack_ice_cube_egg.png", 1)
mobs:register_egg("apm_dimensionpack:ice_cube_medium", ("Medium Ice Cube"), "apm_dimensionpack_ice_cube_egg.png", 1)
mobs:register_egg("apm_dimensionpack:ice_cube_big", ("Large Ice Cube"), "apm_dimensionpack_ice_cube_egg.png", 1)
	mobs:spawn({
		name = "mobs_slimes:greensmall",
		nodes = {nod_dirt},
		neighbors = {"air", nod_grass},
		min_light = 4,
		chance = 5000,
		min_height = 0,
		active_object_count = 8
	})

	mobs:spawn({
		name = "mobs_slimes:greenmedium",
		nodes = {nod_dirt},
		neighbors = {"air", nod_grass},
		min_light = 4,
		chance = 10000,
		min_height = 0,
		active_object_count = 8
	})

	mobs:spawn({
		name = "apm_dimensionpack:ice_cube_big",
		nodes = {"apm_dimensionpack:frozen_dirt_with_frozen_grass"},
		min_light = 4,
		chance = 15000,
		min_height = 0,
		active_object_count = 8
	})

	mobs:spawn({
		name = "apm_dimensionpack:ice_cube_small",
		nodes = {"apm_dimensionpack:frozen_dirt_with_frozen_grass"},
		min_light = 4,
		chance = 10000,
		min_height = 0,
		active_object_count = 8
	})

	mobs:spawn({
		name = "apm_dimensionpack:ice_cube_medium",
		nodes = {"apm_dimensionpack:frozen_dirt_with_frozen_grass"},
		min_light = 4,
		chance = 10000,
		min_height = 0,
		active_object_count = 8
	})

