// Inherit the parent event
event_inherited();

speed = 12;

update_stuff = function()
{
	image_angle = direction;
	image_xscale = random_range(5,7);
	image_yscale = random_range(0.1,4);
	image_blend = global.faction_colors[faction];
}