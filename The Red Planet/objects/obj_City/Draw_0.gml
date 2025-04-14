// Inherit the parent event
event_inherited();

draw_sprite_stretched_ext(spr_hp, 0, x - (sprite_width/2), y - (sprite_height/2) - 10, sprite_width, 5,c_dkgray,0.3);
draw_sprite_stretched_ext(spr_hp, 0, x - (sprite_width/2), y - (sprite_height/2) - 10, (num_units/2) * sprite_width, 5,image_blend,0.5);
