/// @func discord_wbhk_embeds_add_timestamp
/// @arg map
/// @arg date

var _map = argument[0];
var _date = argument[1];

var _year = string(date_get_year(_date));
var _month = string(date_get_month(_date));
var _day = string(date_get_day(_date));

var _hour = string(date_get_hour(_date));
var _minute = string(date_get_minute(_date));
var _second = string(date_get_second(_date));

#region Add 0 if too short for each string

if (string_length(_year) == 1) {
	_year = "0" + _year;	
}

if (string_length(_month) == 1) {
	_month = "0" + _month;	
}

if (string_length(_day) == 1) {
	_day = "0" + _day;	
}

if (string_length(_hour) == 1) {
	_hour = "0" + _hour;	
}

if (string_length(_minute) == 1) {
	_minute = "0" + _minute;	
}

if (string_length(_second) == 1) {
	_second = "0" + _second;	
}

#endregion

var _utc_time = _year + "-" + _month + "-" + _day + "T" + _hour + ":" + _minute + ":" + _second + ".000Z";

_map[? "timestamp"] = _utc_time;
