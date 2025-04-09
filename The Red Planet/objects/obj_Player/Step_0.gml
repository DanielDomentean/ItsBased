
if keyboard_check(vk_up) or keyboard_check(ord("W"))
{
	y -= move_speed;

}

if keyboard_check(vk_left) or keyboard_check(ord("A"))
{
	x -= move_speed;
}

if keyboard_check(vk_right) or keyboard_check(ord("D"))
{
	x += move_speed;
}

if keyboard_check(vk_down) or keyboard_check(ord("S"))
{
	y += move_speed;
}

// Inherit the parent event
// reduce the auto speed so it's not too disabling
var automove_degrade = 3.618;
var prev_spd = move_speed;
move_speed /= automove_degrade;
event_inherited();
move_speed = prev_spd;