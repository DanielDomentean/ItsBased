speed =  random_range(3,5);
direction =  random_range(0,360);

direction = 0;

contact_dmg = 1.0 + random_range(0,3);
faction = 0;

update_stuff = function()
{
	image_angle = direction;
	image_xscale = random_range(1,2) + contact_dmg;
	image_yscale = random_range(1,3)/2;
	image_blend = global.faction_colors[faction];
}
