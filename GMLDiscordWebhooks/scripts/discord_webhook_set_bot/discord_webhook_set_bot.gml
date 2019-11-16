/// @func discord_webhook_set_bot
/// @arg Array
/// @arg Name(String)
/// @arg Avatar(URL)

var _array = argument[0];
var _name = argument[1];
var _avatar = argument[2];

var _bot = _array[1];

_bot[? "username"] = _name
_bot[? "avatar_url"] = _avatar;