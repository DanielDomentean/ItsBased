alarm[2] = shoot_delay + random_range(-d_jit,d_jit);

for (var i = 0; i < shots; i += 1)
	{
		var _blt = instance_create_layer(x+random_range(-jit,jit), y+random_range(-jit,jit), "Instances", Ob_Bullett);
		_blt.direction = point_direction(x,y,targ_x,targ_y);
		_blt.direction += random_range(-spread,spread)
		_blt.faction = faction;
		_blt.update_stuff();
	}
	audio_play_sound(snd_beww,0,false,0.08,0,random_range(.618,1));