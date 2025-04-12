// determine the current game mode

if room == rm_menu
{
	if gamestate != 0
	{
		gamestate = 0
	}
}

else if instance_exists(obj_Player_ship)
{
	// in space combat mode
	mars_time += random_range(0.012,0.018);
	if gamestate != 1
	{
		gamestate = 1
	}
}

else if instance_exists(obj_Foe)
{
	// in ground combat mode
	mars_time += random_range(0.3,0.5);
	if gamestate != 2
	{
		gamestate = 2
	}
}

else
{
	// ground strategy mode
	mars_time += random_range(8,12);
	if gamestate != 3
	{
		gamestate = 3
	}
}
