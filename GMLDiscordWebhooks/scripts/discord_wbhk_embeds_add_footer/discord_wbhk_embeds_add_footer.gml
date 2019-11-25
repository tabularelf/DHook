/// @func discord_wbhk_embeds_add_footer
/// @arg map
/// @arg footer(string)
/// @arg [icon_url]

var _map = argument[0];
var _string = argument[1];
var _icon_url = 0;

var _footer = ds_map_create();

_footer[? "text"] = _string;

if (argument_count > 2) {
	_icon_url = argument[2];	
	_footer[? "icon_url"] = _icon_url;
}

ds_map_add_map(_map,"footer",_footer);