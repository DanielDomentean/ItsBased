
// gamephase
// 0 : paused, menu, etc
// 1 : spaceship
// 2 : ground combat
// 3 : strategy

gamestate = 0;
gs_status = ["Grooming Hounds: ", "Faschia Bound: ", "Dogs of War: ", "Marshaling: "];

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


event_log = [];
array_push(event_log, tit_venus + "Sold herself to corruption: " + string(calc_date(t_offset_venus)));
array_push(event_log, tit_mercury + "Stuttered into incoherence: " + string(calc_date(t_offset_mercury)));
array_push(event_log, mars_title + "Let slip the Dogs of War: " + string(calc_date(mars_time)));

