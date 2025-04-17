// Inherit the parent event
event_inherited();
depth = -100

// comment

// randomise();

// sprite_index = sp_ship04;


disabled = false;
activeinput = true;

animation_count = 0;

move_speed = 1.618;
hp = 20;
pow = 2;

retarget_delay = 120;
update_stuff();

targ_x = x;
targ_y = y;



delayed_death = function()
{
	speed = 0;
	disabled = true;
	sprite_index = spr_centurian_death;
	alarm[1] = 180;
	delayed_action = last_chance;
}

last_chance = function()
{
	if ( hp <= 0 ) { 
		room_goto(rm_defeat);
	}
	else
	{
		direction = 90;
		speed = move_speed * 1.618;
		disabled = false;
		sprite_index = spr_centurian_sprite;
		alarm[1] = -1;
		delayed_action = delayed_death;
	}
	
}

delayed_action = delayed_death;

loginput = function(_input = "any")
{
	activeinput = true;
	alarm[0] = 60;
	// so we can get auto-targeting even when using manual overrides
	find_target();
	speed = 0;
}

take_action = function()
{
	if room == rm_menu
	{
		blast();
		//room_goto(rm_travel);
	}
	else if (place_meeting(x, y, obj_RedGrunt) and obj_GM.gamestate == 3)
	{ // pick up unit
		var _unit = instance_nearest(x,y,obj_RedGrunt);
		
		if ( array_length(obj_GM.unit_payload) < 8 ) 
		{
			array_push(obj_GM.unit_payload, _unit.object_index);
			instance_destroy( _unit );
		}
		else obj_GM.shake_screen();
	}
	else if (place_meeting(x, y, obj_Emplacement) and obj_GM.gamestate == 3)
	{ // build emplacement
		var _emp = instance_nearest(x,y,obj_Emplacement);
		if ( _emp.faction == faction and _emp.loyalty > .8 ) launch();
		else obj_GM.shake_screen();
	}
	else if obj_GM.gamestate == 2 blast();
	else if ( obj_GM.gamestate == 3 )
	{
		if (array_length( obj_GM.unit_payload ) > 1 )
		{
			var _city = instance_create_layer(x+random_range(-jit,jit), y+random_range(-jit,jit), "Emplacements", obj_City);
			_city.faction = 1;
			_city.image_blend = global.faction_colors[faction];
			_city.loyalty = 0.01
			array_delete(obj_GM.unit_payload, 0, 2);
		}
		else obj_GM.shake_screen();
	}
	
}

//overwrite shoot
shoot = function()
{
	var _blt = instance_create_layer(x, y, "Instances", projectile);
		_blt.direction = point_direction(x,y,targ_x,targ_y);
		_blt.faction = faction;
		_blt.contact_dmg = pow * random_range(0.618,1.618);
		_blt.update_stuff();
}

blast = function()
{
	spread += 10
	for (var i = 0; i < 5; i += 1)
	{
		shoot();
	}
	spread -= 10
	audio_play_sound(snd_beww,0,false,0.08,0,random_range(.3,.5));
}

launch = function()
{
	obj_GM.player_lives += 1;
	room_goto(rm_travel);
}

wander = function()
{
	if room == rm_menu targ_x = x + wander_dist*1.618;
	else targ_x = random_range(xstart - wander_dist, xstart + wander_dist );
	targ_y = random_range(ystart - wander_dist, ystart + wander_dist );
	
	alarm[2] = -1;
}

if (not instance_exists(obj_restart)) {
	image_xscale = 0.5;
	image_yscale = 0.5;
	hp_bar_width = hp_bar_width * 0.5;
}
