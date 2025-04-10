if disabled exit;

alarm[0] = retarget_delay + random_range(-d_jit,d_jit);

find_target();

