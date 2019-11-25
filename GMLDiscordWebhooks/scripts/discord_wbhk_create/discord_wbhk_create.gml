/// @func discord_wbhk_start
/// @arg [url]
var _headermap = ds_map_create();
var _bot_info = ds_map_create();
var _url = "";
if (argument_count == 1) {
	_url = argument[0];	
}

_headermap[? "Content-Type"] = "application/json"
return [_headermap, _bot_info, _url];