/// @func dhook_embeds_add_image
/// @arg map
/// @arg url_to_image

var _map = argument[0];
var _url = argument[1];

var _image = ds_map_create();

_image[? "url"] = _url;

ds_map_add_map(_map,"image",_image);