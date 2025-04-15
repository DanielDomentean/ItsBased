if disabled exit;

if other.faction == faction
{
	exit;
}

{
	hp -= other.contact_dmg;
	if other.object_index == obj_Mb_proj_1
	{
		other.contact_dmg *= 0.2;
	}
	else instance_destroy(other);
	effect_create_above(ef_firework,x,y,0.2,c_white);
	audio_play_sound(snd_Phekh,0,false,0.05,0,random_range(1,1.618)*(.3+hp/hp_max));
	obj_GM.shake_screen();
}
