// Inherit the parent event
event_inherited();

// comment

// randomise();

// sprite_index = sp_ship04;


disabled = false;
activeinput = true;

animation_count = 0;

move_speed = 1.618;
hp = 20;

retarget_delay = 120;
update_stuff();





delayed_death = function()
{
	disabled = true;
	sprite_index = spr_centurian_death;
	alarm[1] = 120;
	delayed_action = game_restart;
}

delayed_action = delayed_death;

take_action = function()
{
	if (place_meeting(x, y, obj_Emplacement)) launch();
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

launch = function()
{
	room_goto(rm_travel);
}