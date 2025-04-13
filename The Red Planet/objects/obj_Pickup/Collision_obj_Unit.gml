pickup_progress += obj_GM.dayrate/pk_difficulty;
other.speed *= 0.7;
other.alarm[0] += 1;

guix = calc_offset(x,other.x);
guiy = calc_offset(y,other.y);

if pickup_progress >= 1
{
	upgrade(other);
	instance_destroy();
}