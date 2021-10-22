/// @func dhook_cleanup
/// @arg Array

var _array = argument[0];

var _bot_info = _array[1];

var _username = _bot_info[? "username"];
var _avatar = _bot_info[? "avatar_url"];

ds_map_clear(_bot_info);

_bot_info[? "username"] = _username;
_bot_info[? "avatar_url"] = _avatar;