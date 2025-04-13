// Inherit the parent event
event_inherited();

guix = x;
guiy = y;

upgrade = function(_unit)
{
	_unit.shots += 2;
	_unit.hp_max += 5;
	_unit.hp = _unit.hp_max;
	_unit.pow *= 1.618;
}

calc_offset = function(_s,_o)
{
	return _s + (_o - _s)*pickup_progress;
}