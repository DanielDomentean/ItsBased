// Inherit the parent event
event_inherited();

if phase == 0
{
	x -= 0.1;
	if x < 5 
	{
		phase = 1;
		layer_add_instance("Instances",id);
		layer_destroy_instances("Boss_Instances");
		disabled = false;
		alarm[2] = 15;
		alarm[1] = -1;
		alarm[0] = 1;
		sprite_index = spr_Venus_boss_1;
		move_speed = 0.285;
		update_stuff();
	}
		
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
		sprite_index = spr_Venus_boss_2;
		shoot_delay = 70;
		move_speed = 0.255;
		update_stuff();
		shots += 12;
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
		sprite_index = spr_Venus_boss_3;
		shoot_delay = 50;
		move_speed = 0.215;
		update_stuff();
		shots += 12;
	}
}

if phase == 3
{
	if not disabled hp += 0.1;
}