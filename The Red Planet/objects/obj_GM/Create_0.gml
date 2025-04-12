
mars_time = random_range(885694,885694-1000);
mars_title = "People of Perkwunos: "
mars_status = "Dogs of War: ";

tit_mercury = "Hermes of ???: ";
t_offset_mercury = mars_time - random_range(19694,122845);
stat_mercury = "Blind Babbler: ";

tit_venus = "Aphrodite of Haeusos: ";
t_offset_venus= mars_time - random_range(25694,129845);
stat_venus = "Defiled Queen: ";


calc_date = function(_totaldays, months_in_year = 24)
{
	var _totalmonths = _totaldays/28;
	var _totalyears = floor(_totalmonths/months_in_year);
	var _days =  floor(_totaldays % 28);
	var _months =  floor(_totalmonths % months_in_year);
	var _datestring = string_join("-",_totalyears,_months,_days);
	return _datestring;
}