// Inherit the parent event
event_inherited();

if phase == 0
{
	x -= 1.1;
	if x < 5 
	{
		phase = 1;
		layer_add_instance("Instances",id);
		layer_destroy_instances("Boss_Instances");
		disabled = false;
		alarm[2] = 15;
		alarm[1] = -1;
		alarm[0] = 1;
		sprite_index = spr_Mercury_boss_1;
		update_stuff();
	}
	exit;
		
}



if phase == 1
{
	
	if hp < hp_max/6
	{
		phase += 1;
		disabled = false;
		alarm[2] = 15;
		alarm[1] = -1;
		alarm[0] = 1;
		sprite_index = spr_Mercury_boss_2;
		shoot_delay = 35;
		retarget_delay = 75;
		firing_delay = 30;
		d_jit = 5;
		spiral = -0.5;
		accel += 0.01;
		hp_max = 300;
		update_stuff();
	}
}

if phase == 2
{
	
	if hp < hp_max/6
	{
		phase += 1;
		disabled = false;
		alarm[2] = 15;
		alarm[1] = -1;
		alarm[0] = 1;
		sprite_index = spr_Mercury_boss_3;
		shoot_delay = 6;
		retarget_delay = 55;
		firing_delay = 15;
		d_jit = 2;
		spiral = .8;
		accel += 0.01;
		hp_max = 120;
		update_stuff();
	}
}

if phase == 3
{
	if not disabled hp -= 0.1;
}

if disabled speed = 0;
else
{
	direction += spiral;
	speed += accel;
}