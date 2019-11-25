/// @func discord_wbhk_embeds_add_map
/// @arg list
/// @arg map

var _list = argument[0];
var _map = argument[1];

var _pos = ds_list_size(_list);

_list[| _pos] = _map;
ds_list_mark_as_map(_list,_pos);
