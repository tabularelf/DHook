/// @func discord_wbhk_set_message
/// @arg Array
/// @arg Message

var _array = argument[0];
var _message = argument[1];

var _bot = _array[1];

_bot[? "content"] =  _message;