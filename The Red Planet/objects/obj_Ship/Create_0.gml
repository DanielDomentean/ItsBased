// Inherit the parent event
event_inherited();

// comment
delayed_action = instance_destroy;

move_speed = 1;

targ_x = x;
targ_y = y;


aggro_dist = 400;
wander_dist = 40;

hp = 4;
hp_max = hp;
disabled = false;
pow = 1;
shoot_delay = 20;
retarget_delay = 60;
d_jit = 0;
shots = 2;
jit = 2;
spread = 2;
faction = 2;

update_stuff = function()
{
	hp_max = hp;
}

faction_friends = [obj_Ship,obj_Friend_ship,obj_Foe_ship];
faction_foes    = [obj_Ship,obj_Foe_ship,obj_Friend_ship];

shootdir = 270;

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
		targ_y = ystart + 12;
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
	move_towards_point(targ_x, targ_y, move_speed);
}

wander = function()
{
	targ_x = random_range(xstart - wander_dist, xstart + wander_dist )
	targ_y = random_range(ystart - wander_dist/10, ystart + wander_dist/10 )
	alarm[2] = -1;
}

shoot = function()
{
	var _blt = instance_create_layer(x+random_range(-jit,jit), y+random_range(-jit,jit), "Instances", obj_Bullett);
		_blt.direction = shootdir;
		_blt.direction += random_range(-spread,spread)
		_blt.faction = faction;
		_blt.update_stuff();
}