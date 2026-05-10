mobs:register_mob("apm_dimensionpack:ice_zombie", {
	description = ("Ice Zombie"),
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 5,
	hp_min = 20,
	hp_max = 24,
	armor = 100,
	collisionbox = {-0.25, -0.01, -0.3, 0.25, 1.75, 0.3},
	visual = "mesh",
	mesh = "creatures_zombie.b3d",
	textures = {
		{"apm_dimensionpack_ice_zombie.png"}
	},
	blood_texture = "mobs_blood.png",
	makes_footstep_sound = true,
--	sounds = {random = "mobs_dirtmonster"},
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	drops = {
		{name = "apm_dimensionpack:flesh_frozen", chance = 1, min = 0, max = 1},
		{name = "farming:string", chance = 2, min = 0, max = 1}
	},
	lava_damage = 3,
	fear_height = 4,
	animation = {
		speed_normal = 15, speed_run = 15,
		stand_start = 0, stand_end = 80,
		walk_start = 102, walk_end = 122,
		run_start = 102, run_end = 122, run_speed = 45,
		punch_start = 102, punch_end = 122
	},
})

mobs:spawn({
	name = "apm_dimensionpack:mud_monster",
	nodes = {"apm_dimensionpack:frozen_stone", "apm_dimensionpack:frozen_dirt_with_frozen_grass", "apm_dimensionpack:frozen_dirt"},
	chance = 7000,
	active_object_count = 2,
	min_height = 0
})

mobs:register_egg("apm_dimensionpack:ice_zombie", ("Ice Zombie"), "apm_dimensionpack_frozen_dirt.png", 1)