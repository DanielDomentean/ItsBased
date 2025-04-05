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
