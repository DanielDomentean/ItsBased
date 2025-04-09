alarm[2] = shoot_delay + random_range(-d_jit,d_jit);

for (var i = 0; i < shots; i += 1)
	{
		shoot();
	}
	audio_play_sound(snd_beww,0,false,0.08,0,random_range(.618,1));