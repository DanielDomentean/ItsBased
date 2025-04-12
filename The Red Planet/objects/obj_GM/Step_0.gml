// determine the current game mode

if room == rm_menu
{
	mars_status = "Grooming Hounds: ";
	exit;
}

if instance_exists(obj_Player_ship)
{
	// in space combat mode
	mars_time += random_range(0.012,0.018);
	mars_status = "Faschia Bound: ";
}
else if instance_exists(obj_Foe)
{
	// in ground combat mode
	mars_time += random_range(0.3,0.5);
	mars_status = "Dogs of War: ";
}
else
{
	// ground strategy mode
	mars_time += random_range(8,12);
	mars_status = "Marshaling: ";
}
