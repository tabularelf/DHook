/// @func discord_wbhk_send

var _array = argument[0];

var _headermap = _array[0];
var _bot_info = _array[1];
var _url = _array[2];

if ((_bot_info[? "username"] == undefined) && (_bot_info[? "avatar_url"] == undefined))  {
	show_debug_message("DISCORD WEBHOOKS WARNING: " + "Discord Webhook is missing bot information. Will execute as default.");
}

if (_bot_info[? "content"] == undefined) && (_bot_info[? "embeds"] == undefined) {
	show_debug_message("DISCORD WEBHOOKS ERROR: " + "Discord Webhook has no message. Please set a message.");
	return -1;	
}

return http_request(_url,"POST",_headermap,json_encode(_bot_info));