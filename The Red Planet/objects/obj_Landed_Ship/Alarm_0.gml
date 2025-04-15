// deploy units
var jit = 32;

if ( ( not instance_exists(obj_Player)) and obj_GM.player_lives > 0 )
{
	var _player = instance_create_layer(x+random_range(-jit,jit), y+random_range(-jit,jit), "Instances", obj_Player);
	obj_GM.player_lives -= 1;
}
	
if ( obj_GM.gamestate == 2 and array_length( obj_GM.unit_payload ) > 0 )
{
	
	var _unit_asset = obj_GM.unit_payload[0];
	//instance_activate_object( _unit );
	//_unit.persistent = false;
	//_unit.alarm[0] = 1;
	var _newunit = instance_create_layer(x+random_range(-jit,jit), y+random_range(-jit,jit), "Instances", _unit_asset);
	_newunit.update_stuff();
	array_delete(obj_GM.unit_payload, 0, 1);
}

alarm[0] = deployment_tempo;