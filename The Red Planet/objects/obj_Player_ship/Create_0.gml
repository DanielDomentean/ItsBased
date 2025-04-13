// Inherit the parent event
event_inherited();

// comment

// randomise();

// sprite_index = sp_ship04;

delayed_action = game_restart;

disabled = false;
activeinput = true;

animation_count = 0;

move_speed = 5;
hp = 20;

retarget_delay = 120;
update_stuff();

take_action = function()
{
	if ( (y < 60 or not instance_exists(obj_Foe_ship) ) )
	{
		if room == rm_lvl_Venus_Orbital room_goto(rm_lvl_Venus);
		else if room == rm_travel
		{
			//room_goto(rm_lvl_Mars);
		}
	}
	else blast();
}

blast = function()
{
	spread += 20
	for (var i = 0; i < 7; i += 1)
	{
		shoot();
	}
	spread -= 20
	audio_play_sound(snd_beww,0,false,0.08,0,random_range(.3,.5));
}

loginput = function(_input = "any")
{
	activeinput = true;
	alarm[0] = 60;
}