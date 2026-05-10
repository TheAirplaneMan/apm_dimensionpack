mobs:register_mob("apm_dimensionpack:mildyte", {
	description = ("Mildyte"),
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	visual_size = {x=1, y=0.58, z=0.8},
	reach = 2,
	damage = 5,
	hp_min = 12,
	hp_max = 18,
	armor = 100,
	collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.2, 0.3},
	visual = "mesh",
	mesh = "character.b3d",
	textures = {
		{"apm_dimensionpack_mildyte_1.png"},
		{"apm_dimensionpack_mildyte_2.png"},
		{"apm_dimensionpack_mildyte_3.png"}
	},
	blood_texture = "vessels_glass_fragments.png",
	makes_footstep_sound = true,
--	sounds = {random = "mobs_dirtmonster"},
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	drops = {
		{name = "flowers:mushroom_red", chance = 2, min = 0, max = 1},
		{name = "flowers:mushroom_brown", chance = 2, min = 0, max = 1}
	},
	lava_damage = 7,
	fear_height = 4,
	animation = {
		speed_normal = 15, speed_run = 15,
		stand_start = 0, stand_end = 79,
		walk_start = 168, walk_end = 187,
		run_start = 168, run_end = 187, run_speed = 45,
		punch_start = 189, punch_end = 198
	},
})

mobs:spawn({
	name = "apm_dimensionpack:mildyte",
	nodes = {"apm_dimensionpack:swampstone", "apm_dimensionpack:mud_with_liraofdian_grass", "apm_dimensionpack:mud"},
	chance = 7000,
	active_object_count = 4,
	min_height = 0
})

mobs:register_egg("apm_dimensionpack:mildyte", ("Mildyte"), "apm_dimensionpack_rotten_tree.png", 1)