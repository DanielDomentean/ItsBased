// Inherit the parent event
event_inherited();

hp_max = 200;
update_stuff();
phase = 0;
disabled = true;
move_speed = 0.26;
shots = 17
spread = 22
jit = 20
shoot_delay = 90;
aggro_dist = 400;


projectile = obj_Vb_proj_1;

boss_defeated = function()
{
	alarm[1] = 120;
	delayed_action = instance_destroy;
	obj_GM.shake_screen();
}

delayed_action = boss_defeated;