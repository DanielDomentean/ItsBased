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
	if y < 60 room_goto_next();
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

