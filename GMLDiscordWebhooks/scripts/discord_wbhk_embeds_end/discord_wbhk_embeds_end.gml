/// @func discord_wbhk_embeds_end
/// @arg list
/// @arg array

var _list = argument[0];
var _array = argument[1];

var _bot_info = _array[1];

ds_map_add_list(_bot_info,"embeds",_list);