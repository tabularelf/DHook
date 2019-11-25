/// @func discord_wbhk_export_json()
/// @desc
/// @arg array
/// @arg string

discord_wbhk_import_json()
var _array = argument[0];
var _string = argument[1];

var _bot_info = _array[1]; // Will trash afterwards

var _map = json_decode(_string);

if (_map < 0) {
	show_debug_message("DISCORD WEBHOOKS ERROR: Invalid Json format.");
	return -1;	
}

_array[@ 1] = _map;

// Remove old map
ds_map_destroy(_bot_info);