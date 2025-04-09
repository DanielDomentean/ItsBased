if disabled exit;

if (hp <= 0)
{
	disabled = true;
	alarm[1] = 45;
	// play the death animation
	exit;
}

move_towards_point(targ_x, targ_y, move_speed);
//move_and_collide(_hor*move_speed, _ver*move_speed, [tilemap, obj_enemy_parent], undefined, undefined, undefined, move_speed, move_speed);