

if ( keyboard_check(vk_up) or keyboard_check(ord("W")) )
{
	y -= move_speed;
	loginput();
}

if ( keyboard_check(vk_left) or keyboard_check(ord("A")) )
{
	x -= move_speed;
	loginput();
}

if ( keyboard_check(vk_right) or keyboard_check(ord("D")) )
{
	x += move_speed;
	loginput();
}

if ( keyboard_check(vk_down) or keyboard_check(ord("S")) )
{
	y += move_speed;
	loginput();
}

if ( keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_control) )
{
	take_action();
	loginput();
}

// Inherit the parent event
if (not activeinput)
{
	event_inherited();
}
else speed = 0;

move_wrap(true,true,15);
