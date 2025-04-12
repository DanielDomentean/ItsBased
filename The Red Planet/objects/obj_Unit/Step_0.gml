if disabled exit;

if (hp <= 0)
{
	disabled = true;
	alarm[1] = 45;
	// play the death animation
	exit;
}

// target reached
//if (x == round(targ_x) && y == round(targ_y)) {
//	targ_set = false;
//	show_debug_message("Arrived!");
//}
if (int64(x) == int64(targ_x) && int64(y) == int64(targ_y)) {	// int64 here to correct a small bug - not releveant for HTML 5 target
		targ_set = false;
		show_debug_message("Arrived!");
}

// taget not yet reached - move
if (targ_set) {
	//move_towards_point(targ_x, targ_y, move_speed);
	//move_and_collide(_hor*move_speed, _ver*move_speed, [tilemap, obj_enemy_parent], undefined, undefined, undefined, move_speed, move_speed);
}

