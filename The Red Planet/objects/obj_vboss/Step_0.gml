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
		sprite_index = spr_Venus_boss_1
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
		sprite_index = spr_Venus_boss_2
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
		sprite_index = spr_Venus_boss_3
		update_stuff();
		shots += 12;
	}
}

if phase == 3
{
	hp += 0.1;
}