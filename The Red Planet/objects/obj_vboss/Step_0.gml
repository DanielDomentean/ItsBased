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
		alarm[0] = 1;
	}
		
}

if phase == 1
{
	
}