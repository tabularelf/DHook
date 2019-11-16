/// @func discord_webhook_set_message
/// @arg Array

var _array = argument[0];

var _headermap = _array[0];
var _bot_info = _array[1];
var _url = _array[2];

if ds_map_empty(_bot_info) {
	show_debug_message("DISCORD WEBHOOKS ERROR: " + "Discord Webhook is missing bot information. Please use the appropriate functions to setup the bot.");
	return -1;	
}

if (_bot_info[? "content"] == undefined) {
	show_debug_message("DISCORD WEBHOOKS ERROR: " + "Discord Webhook has no message. Please set a message.");
	return -1;	
}

return http_request(_url,"POST",_headermap,json_encode(_bot_info));