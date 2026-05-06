mobs:register_mob("apm_dimensionpack:mud_monster", {
	description = ("Mud Monster"),
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 4,
	hp_min = 12,
	hp_max = 30,
	armor = 100,
	collisionbox = {-0.3, -1, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "mobs_sand_monster.b3d",
	textures = {
		{"apm_dimensionpack_mud_monster.png"}
	},
	blood_texture = "apm_dimensionpack_mud.png",
	makes_footstep_sound = true,
--	sounds = {random = "mobs_dirtmonster"},
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	drops = {
		{name = "apm_dimensionpack:mud", chance = 1, min = 0, max = 2},
		{name = "apm_dimensionpack:marsh_relic_fragment", chance = 1, min = 0, max = 1}
	},
	lava_damage = 5,
	fear_height = 4,
	animation = {
		speed_normal = 15, speed_run = 15,
		stand_start = 0, stand_end = 39,
		walk_start = 41, walk_end = 72,
		run_start = 74, run_end = 105, run_speed = 45,
		punch_start = 74, punch_end = 105
	},
})

mobs:spawn({
	name = "apm_dimensionpack:mud_monster",
	nodes = {"apm_dimensionpack:mud", "apm_dimensionpack:mud_with_liraofdian_grass", "default:dirt_with_rainforest_litter"},
	chance = 7000,
	active_object_count = 2,
	min_height = 0
})

mobs:register_egg("apm_dimensionpack:mud_monster", ("Mud Monster"), "apm_dimensionpack_mud.png", 1)