/// @func dhook_embeds_add_map
/// @arg list
/// @arg string(json)

var _list = argument[0];
var _string = argument[1];

var _json = json_decode(_string);

if (_json < 0) {
	show_debug_message("DHOOK ERROR: Invalid Json format.");
	return -1;	
}

var _pos = ds_list_size(_list);

dhook_embeds_add_map(_list,_json);