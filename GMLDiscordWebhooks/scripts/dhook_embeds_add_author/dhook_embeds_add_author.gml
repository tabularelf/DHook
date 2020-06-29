/// @func dhook_embeds_add_author
/// @arg map
/// @arg name
/// @arg [url]
/// @arg [icon_url]

var _map = argument[0];
var _name = argument[1];
var _url = 0;
var _icon_url = 0;

var _author = ds_map_create();

_author[? "name"] = _name;

if (argument_count > 2) {
	_url = argument[2];	
	_author[? "url"] = _url;
}

if (argument_count > 3) {
	_icon_url = argument[3];	
	_author[? "icon_url"] = _icon_url;
}

ds_map_add_map(_map,"author",_author);