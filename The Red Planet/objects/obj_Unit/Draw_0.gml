draw_self();

draw_sprite_stretched(spr_hp, 0, x - (sprite_width/2), y - (sprite_height/2) - 10, (hp/hp_max) * hp_bar_width, 5);

// for debugging
draw_text(x + 10, y - 20, string(x) + "/" + string(y));

if (targ_set) {
	draw_line_color(x, y, targ_x, targ_y, c_red, c_red);
	draw_circle_color(targ_x, targ_y, 2, c_red, c_red, false);
	draw_text_color(targ_x + 10, targ_y - 4, string(targ_x) + "/" + string(targ_y), c_red, c_red, c_red, c_red, 1);
}
