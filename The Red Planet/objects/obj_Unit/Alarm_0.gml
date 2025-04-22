if disabled exit;

alarm[0] = retarget_delay + random_range(-d_jit,d_jit);

var _help_active = layer_get_visible(layer_get_id("Help"));

if (!_help_active){
	find_target();
}