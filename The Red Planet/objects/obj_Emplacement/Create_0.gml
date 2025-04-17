// Inherit the parent event
event_inherited();

faction = 1;
heal_rate = 1/60; // healing per day in hp
loyalty = 0.1;

loyalty_update = function(_unit)
{
	var _ltydiff = obj_GM.dayrate/1000;
	if faction == _unit.faction
	{
		_ltydiff *= 0.618;
		loyalty += _ltydiff;
		loyalty = min(loyalty,1);
	}
	else
	{
		loyalty -= _ltydiff;
		if loyalty <= 0
		{
			faction = _unit.faction;
			loyalty = 0.3
			image_blend = global.faction_colors[faction];
		}
	}
	loyalty = max(loyalty,0);
	
}