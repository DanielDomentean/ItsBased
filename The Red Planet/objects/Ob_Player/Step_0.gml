
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