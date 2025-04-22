
randomize();

// gamephase
// 0 : paused, menu, etc
// 1 : spaceship
// 2 : ground combat
// 3 : strategy

player_lives = 1;
gamestate = 0;
gs_status = ["Grooming Hounds: ", "Faschia Bound:  ", "Dogs of War:    ", "Marshaling:     ", "Has Fallen:     "];

// number of days that pass per frame of game-time
dayrate = 0;

calc_date = function(_totaldays, months_in_year = 24)
{
	var _totalmonths = _totaldays/28;
	var _totalyears = floor(_totalmonths/months_in_year);
	var _days = string(floor(_totaldays % 28));
	if string_length(_days) == 1 _days = "0" + _days;
	var _months =   string(floor(_totalmonths % months_in_year));
	if string_length(_months) == 1 _months = "0" + _months;
	var _datestring = string_join("-",_totalyears,_months,_days);
	return _datestring;
}

mars_time = random_range(885694,885694-1000);
mars_title = "People of Perkwunos: "
mars_status = "Dogs of War: ";

tit_mercury = "Hermes of ???: ";
t_offset_mercury = mars_time - random_range(19694,122845);
stat_mercury = "Blind Babbler: ";

tit_venus = "Aphrodite of Haeusos: ";
t_offset_venus= t_offset_mercury - random_range(25694,129845);
stat_venus = "Defiled Queen: ";

bosses_living = 2;
//bosses_living = 0;
//alarm[0] = 20; // victory test

//alarm[1] = 20; // defeat test


event_log = [];
array_push(event_log, tit_venus + "Sold herself to corruption: " + string(calc_date(t_offset_venus)));
array_push(event_log, tit_mercury + "Stuttered into incoherence: " + string(calc_date(t_offset_mercury)));

log_story_event = function(_log_text)
{
	array_push( event_log, _log_text + ": " + string(calc_date(mars_time)) );
}
log_story_event(mars_title + "Let slip the Dogs of War");


// room tracking so we can go back to where we were from the menu screen
last_room = rm_lvl_Mars;
//last_room = rm_Mercury; // for testing the mercury boss fight
//last_room = rm_Venus; // for testing the venus boss fight

// player specific stuff
unit_payload = [];

// GUI and game juice

shake_screen = function() {
	layer_set_visible("Screen_Shake", true);
	alarm[11] = 0.2 * global.steps_per_second;	// timer to stop screen shake
}

//room_goto(rm_lvl_Mars); // testing
//room_goto(rm_Venus); // testing
//room_goto(rm_Mercury); // testing