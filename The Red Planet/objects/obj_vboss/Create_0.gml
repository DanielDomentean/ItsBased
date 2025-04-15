// Inherit the parent event
event_inherited();

hp_max = 300;
update_stuff();
phase = 0;
disabled = true;
move_speed = 0.285;
shots = 17
spread = 22
jit = 20
shoot_delay = 90;
aggro_dist = 400;


projectile = obj_Vb_proj_1;

boss_defeated = function()
{
	alarm[1] = 120;
	alarm[3] = 3;
	delayed_action = instance_destroy;
	obj_GM.log_story_event(obj_GM.tit_venus + "Fell to the sword");
	obj_GM.stat_venus = "has FALLEN: ";
	obj_GM.t_offset_venus = obj_GM.mars_time;
	obj_GM.alarm[0] = 260;
}

delayed_action = boss_defeated;
//boss_defeated(); // boss defeat test