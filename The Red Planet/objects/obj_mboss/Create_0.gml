// Inherit the parent event
event_inherited();

faction = 3;

hp_max = 400;
update_stuff();
phase = 0;
disabled = true;
move_speed = 1.285;
shots = 4
spread = 1
jit = 20
shoot_delay = 90;
retarget_delay = 120;
d_jit = 20
aggro_dist = 400;
pow = 0.03;

spiral = 0.5;
accel = 0.01;


projectile = obj_Mb_proj_1;
firing_delay = 45;

boss_defeated = function()
{
	alarm[1] = 120;
	alarm[3] = 3;
	delayed_action = instance_destroy;
	obj_GM.log_story_event(obj_GM.tit_mercury + "Fell to the sword");
	obj_GM.stat_mercury = "has FALLEN: ";
	obj_GM.t_offset_mercury = obj_GM.mars_time;
	obj_GM.alarm[0] = 260;
}

delayed_action = boss_defeated;
//boss_defeated(); // boss defeat test