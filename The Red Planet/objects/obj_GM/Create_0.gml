
mars_time = random_range(885694,885694-1000)


calc_date = function(_totaldays, months_in_year = 24)
{
	var _totalmonths = _totaldays/28;
	var _totalyears = floor(_totalmonths/months_in_year);
	var _days =  floor(_totaldays % 28);
	var _months =  floor(_totalmonths % months_in_year);
	var _datestring = string_join("-",_totalyears,_months,_days);
	return _datestring;
}