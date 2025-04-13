// determine the current game mode


if ( keyboard_check_pressed(vk_escape) or keyboard_check_pressed(vk_tab) or keyboard_check_pressed(vk_pageup) or keyboard_check_pressed(vk_pause) )
{
	room_goto(rm_menu);
}

if room == rm_menu
{
	
	if gamestate != 0
	{
		gamestate = 0;
		dayrate = 0;
	}
}

else if instance_exists(obj_Player_ship)
{
	// in space combat mode
	dayrate = random_range(0.012,0.018);
	if gamestate != 1
	{
		gamestate = 1
	}
}

else if ( instance_exists(obj_Foe) or instance_exists(obj_Bullett) )
{
	// in ground combat mode
	dayrate = random_range(0.3,0.5);
	if gamestate != 2
	{
		gamestate = 2
	}
}

else
{
	// ground strategy mode
	dayrate = random_range(8,12);
	if gamestate != 3
	{
		gamestate = 3
	}
}

mars_time += dayrate;
