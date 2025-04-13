// ----------------------------------------------- ENUMS ----------------------------------------------- //
// example enum
enum GAME_STATE {
	PLAYING,
	PAUSED,
	MENU
}

// ------------------------------------------ GLOBAL VARIABLES ------------------------------------------ //
global.steps_per_second = 60;
global.game_state = GAME_STATE.MENU;

// ------------------------------------------ GLOBAL FUNCTIONS ------------------------------------------ //
function placeholder() {}

// ------------------------------------------- INITIALIZATION ------------------------------------------- //
// set font globally
draw_set_font(fnt_calibri_medium);

// faction info
// 0 = neutral/rebel
// 1 = Mars/player
// 2 = Venus
// 3 = Mercury

global.faction_colors = [c_white, make_color_hsv(0,180,255), make_color_hsv(255/6,180,255), make_color_hsv(255/3,180,255)];