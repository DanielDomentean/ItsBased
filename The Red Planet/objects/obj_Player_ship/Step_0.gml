


if ( keyboard_check(vk_up) or keyboard_check(ord("W")) or keyboard_check(vk_numpad7) or keyboard_check(vk_numpad9) or keyboard_check(vk_numpad8) )
{
	y -= move_speed;
	loginput();
}

if ( keyboard_check(vk_left) or keyboard_check(ord("A")) or keyboard_check(vk_numpad7) or keyboard_check(vk_numpad1) or keyboard_check(vk_numpad4) )
{
	x -= move_speed;
	loginput();
}

if ( keyboard_check(vk_right) or keyboard_check(ord("D")) or keyboard_check(vk_numpad3) or keyboard_check(vk_numpad9) or keyboard_check(vk_numpad6) )
{
	x += move_speed;
	loginput();
}

if ( keyboard_check(vk_down) or keyboard_check(ord("S")) or keyboard_check(vk_numpad1) or keyboard_check(vk_numpad3) or keyboard_check(vk_numpad2) )
{
	y += move_speed;
	loginput();
}

if ( keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_control) or keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_numpad5))
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
