mobs:register_mob("mobs_penguin:penguin", {
	type = "animal",
	passive = true,
	hp_min = 10,
	hp_max = 30,
	armor = 50,
	visual_size = {x=10, y=10},
	collisionbox = {-0.3, 0,-0.3, 0.3,1.3,0.3},
	visual = "mesh",
	mesh = "penguin.b3d",
	textures = {
		{"mobs_penguin_adult.png"},
	},
	child_texture = {
		{"mobs_penguin_child.png"},
	},
	blood_texture = "default_snow.png",
	makes_footstep_sound = true,
	walk_velocity = 1,
	run_velocity = 2,
	jump = 1,
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	fall_damage = 1,
	view_range = 10,
	follow = {"group:fish"},
	drops = {
		{name = "mobs:meat_raw", chance = 2, min = 1, max = 2},
	},
	on_rightclick = function(self, clicker)
		if mobs:feed_tame(self, clicker, 5, true, true) then
			return
		end
		mobs:capture_mob(self, clicker, 0, 0, 10, false, nil)
	end,
	animation = {
		stand_start = 0,
		stand_end = 20,
		stand_speed = 10,
		walk_start = 21,
		walk_end = 61,
		walk_speed = 30,
		run_start = 21,
		run_end = 61,
		run_speed = 40,
	},
})

mobs:register_egg("mobs_penguin:penguin", "Penguin", "wool_white.png^[lowpart:50:wool_black.png", 1)

mobs:spawn({
	name = "mobs_penguin:penguin",
	nodes = {"default:snowblock", "default:snow"},
	chance = 110000,
	active_object_count = 5,
	min_height = 0,
})
