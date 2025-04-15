// Inherit the parent event
event_inherited();

alarm[2] = firing_delay;


if ( ( distance_to_object(obj_Player) < 50*phase ) and ( not disabled ) )
{
	x += (x - targ_x)/1.618 + random_range(-45,45);
	y += (y - targ_y)/1.618 + random_range(-45,45);
}