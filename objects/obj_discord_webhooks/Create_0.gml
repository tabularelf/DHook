/// @description Init webhooks

// Setup variables
avatar_url = "https://cdn.discordapp.com/attachments/727200469570551959/727202311880966160/otter_gdzmwnkrvvz11.png"; // Bot Avatar. Gifs do not work sadly.
username = "Discord Webhook Bot"; //  Bot Username
image = "https://cdn.discordapp.com/attachments/628108898829598720/643855721095495693/tumblr_161c5568a8fcd5b1ab21c6f08ce3fafb_665aedd1_500.gif"; // Image
thumbnail = "https://cdn.discordapp.com/attachments/628108898829598720/645653597534683185/57c.gif"; // Thumbnail
webhook_url = "https://discordapp.com/api/webhooks/643849924772888605/srs5PN-w_XkFkELfuB8jqftYWPwoVgHS2EcQH1vJpvJE3ZcJrUh-GEzQP58EER69LGRn";
icon_url = "https://cdn.discordapp.com/avatars/121117482210689024/d315ee4107af229386522209e095eabf.png?size=128"; // Author/footer icon

// Init webhooks. Adding in URL is optional. You can also use discord_webhook_set_webhook_url
dhook = dhook_create(webhook_url);

// Setup the webhook bot.
//dhook_set_bot(dhook,username,avatar_url);
// We'll enable tts (Text to Speech)
//dhook_enable_tts(dhook,true);

// Setup the message that the webhook bot will use.
dhook_set_message(dhook,"Hello World!");
/*
/// Embeds

// Create Embed List
dhook_embeds = dhook_embeds_start();

// Begin Embed & Add to List
// We'll make a map for the Embed to contain data.
var _embed_map = ds_map_create();
dhook_embeds_add_map(dhook_embeds,_embed_map);

// Add Embed Content
dhook_embeds_add_author(_embed_map,"TabularElf - Twitter Link Here","https://twitter.com/TabularElf",icon_url);
dhook_embeds_add_title(_embed_map,"TabularElf's Github! Click here!");
dhook_embeds_add_url(_embed_map,"https://github.com/TabularElf");
dhook_embeds_add_description(_embed_map,"Description: Hey!! This is my waifu, ~~Torhu~~ Tohru! I love her lots! uwu");
dhook_embeds_add_color(_embed_map,c_purple);
dhook_embeds_add_image(_embed_map,image);
dhook_embeds_add_footer(_embed_map,"Footer: The end, thanks for trying!",icon_url);
dhook_embeds_add_thumbnail(_embed_map,thumbnail);

// Add a timestamp while we're at it!
// Have to set to utc otherwise it'll give out the incorrect timestamp. And we don't want that!!
date_set_timezone(timezone_utc);
dhook_embeds_add_timestamp(_embed_map,date_current_datetime());

// Add fields

// We start off by creating ad s_list, which we can use for any case.
var _fields_list = ds_list_create();


dhook_embeds_fields_bind(_embed_map,_fields_list);
dhook_embeds_fields_add(_fields_list,"FieldA","This","true");
dhook_embeds_fields_add(_fields_list,"FieldB","Is","true");
dhook_embeds_fields_add(_fields_list,"FieldC","A");
dhook_embeds_fields_add(_fields_list,"FieldD","Field",true);
dhook_embeds_fields_add(_fields_list,"FieldE","With","true");
dhook_embeds_fields_add(_fields_list,"FieldF","Inlines","true");
dhook_embeds_fields_add(_fields_list,"FieldG","And",false);
dhook_embeds_fields_add(_fields_list,"FieldH","Non","true");
dhook_embeds_fields_add(_fields_list,"FieldI","Inlines","true");
dhook_embeds_fields_add(_fields_list,"Actual Information","Fields can go as long as you'd like. We can also **USE** Discord's Markup. `if (rating == 10) user.tabularelf.feeling = emotion.happy;`");

// End Embed, adds back to discord webhook array.
dhook_embeds_end(dhook_embeds,dhook);

// Export JSON to output
show_debug_message(dhook_export_json(dhook));*/

// Send the message over to webhook url.
// This function does return a http request, but it's unnecessary to track.
dhook_send(dhook);