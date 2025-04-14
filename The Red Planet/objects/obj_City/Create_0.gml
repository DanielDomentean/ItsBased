// Inherit the parent event
event_inherited();

unit_production_days = random_range(900,1200);
num_units = 0; // more than one for multiple units

pk_difficulty = 1618;

production_update = function()
{
	var _proddiff = obj_GM.dayrate/unit_production_days;
	if num_units < 2 num_units += _proddiff;
	if ( num_units >= obj_GM.gamestate-1 and instance_number(obj_Unit) < instance_number(obj_Emplacement) * 2 )
	{
		num_units -= 1;
		var _unit_type = obj_Foe;
		if faction == 1 _unit_type = obj_Friend;
		var _unt = instance_create_layer(x+random_range(-sprite_width,sprite_width), y+random_range(-sprite_height,sprite_height), "Instances", _unit_type);
		_unt.faction = faction;
		_unt.update_stuff();
	}
	
}