


//if ( keyboard_check(vk_up) or keyboard_check(ord("W")) or keyboard_check(vk_numpad7) or keyboard_check(vk_numpad9) or keyboard_check(vk_numpad8) )
//{
//	y -= move_speed;
//	loginput();
//}

//if ( keyboard_check(vk_left) or keyboard_check(ord("A")) or keyboard_check(vk_numpad7) or keyboard_check(vk_numpad1) or keyboard_check(vk_numpad4) )
//{
//	x -= move_speed;
//	loginput();
//}

//if ( keyboard_check(vk_right) or keyboard_check(ord("D")) or keyboard_check(vk_numpad3) or keyboard_check(vk_numpad9) or keyboard_check(vk_numpad6) )
//{
//	x += move_speed;
//	loginput();
//}

//if ( keyboard_check(vk_down) or keyboard_check(ord("S")) or keyboard_check(vk_numpad1) or keyboard_check(vk_numpad3) or keyboard_check(vk_numpad2) )
//{
//	y += move_speed;
//	loginput();
//}

//if ( keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_control) or keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_numpad5))
//{
//	take_action();
//	loginput();
//}

////// Inherit the parent event
//if (not activeinput)
//{
//	event_inherited();
//}
//else speed = 0;

//move_wrap(true,true,15);



var _up = (keyboard_check(ord("W")));
var _down = (keyboard_check(ord("S")));
var _left = (keyboard_check(ord("A")));
var _right = (keyboard_check(ord("D")));


var _horizonal_input = _right - _left;
var _vertical_input = _down - _up;
var _direction = point_direction(0, 0, _horizonal_input, _vertical_input);

var _hum_pitch = 1;

if (_horizonal_input != 0 || _vertical_input != 0) {
	motion_add(_direction, acceleration);
	loginput();
} else { 
	if (speed > 0) speed -= ship_friction;
}
			
_hum_pitch += (speed / 10);

// clamp speed
speed = clamp(speed, 0, max_speed);
			
// wrap movement
move_wrap(true, true, 15);

// limit movement to inside of room
if lock_movement_to_room {
	x = clamp(x, 32, room_width - 32);
	y = clamp(y, 32, room_height - 32);
}

// use sound pitch
audio_sound_pitch(snd_ship_hum, _hum_pitch);

if ( keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_control) or keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_numpad5))
{
	take_action();
	loginput();
}

if ( hp <= 0 and not disabled) {
	alarm[1] = 60;
	disabled = true;
	obj_GM.shake_screen();
}
