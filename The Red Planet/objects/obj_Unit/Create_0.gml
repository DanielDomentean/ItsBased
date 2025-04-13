// Inherit the parent event
event_inherited();

// comment
delayed_action = instance_destroy;

move_speed = 1;

targ_x = x;
targ_y = y;
targ_set = false;

alarm[0] = random_range(50,75);
aggro_dist = 90;
wander_dist = 40;

hp = 4;
hp_max = hp;
hp_bar_width = sprite_width;
disabled = false;
pow = 1;
shoot_delay = 50;
retarget_delay = 45;
d_jit = 8;
shots = 1;
jit = 2;
spread = 2;
faction = 2;

update_stuff = function()
{
	hp_max = hp;
}

faction_friends = [obj_Unit,obj_Friend,obj_Foe];
faction_foes    = [obj_Unit,obj_Foe,obj_Friend];

find_target = function()
{
	
	var faction_foe = faction_foes[faction];
	var _inst = instance_nearest(x, y, faction_foe);
	if _inst == noone
	{
		wander();
	}
	else if ( distance_to_object(_inst) < aggro_dist )
	{
		targ_x = _inst.x;
		targ_y = _inst.y;
		if alarm[2] == -1
		{
			alarm[2] = shoot_delay + random_range(-d_jit,d_jit);
		}
	}
	else 
	{
		targ_x = _inst.x + random_range( -wander_dist, wander_dist );
		targ_y = _inst.y + random_range( -wander_dist, wander_dist );
		// wander();
	}

	targ_set = true;
	move_towards_point(targ_x, targ_y, move_speed);
	// show_debug_message("target set");
}

wander = function()
{
	targ_x = random_range(xstart - wander_dist, xstart + wander_dist )
	targ_y = random_range(ystart - wander_dist, ystart + wander_dist )
	alarm[2] = -1;
}

shoot = function()
{
	var _blt = instance_create_layer(x+random_range(-jit,jit), y+random_range(-jit,jit), "Instances", obj_Bullett);
		_blt.direction = point_direction(x,y,targ_x,targ_y);
		_blt.direction += random_range(-spread,spread)
		_blt.faction = faction;
		_blt.update_stuff();
}