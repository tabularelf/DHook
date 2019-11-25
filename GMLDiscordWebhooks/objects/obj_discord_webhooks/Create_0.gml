/// @description Init webhooks

// Setup variables
avatar_url = "https://cdn.discordapp.com/attachments/628108898829598720/643856137543745536/catree1.png"; // Bot Avatar. Gifs do not work sadly.
username = "Discord Webhook Bot"; //  Bot Username
image = "https://cdn.discordapp.com/attachments/628108898829598720/643855721095495693/tumblr_161c5568a8fcd5b1ab21c6f08ce3fafb_665aedd1_500.gif"; // Image
thumbnail = "https://cdn.discordapp.com/attachments/628108898829598720/645653597534683185/57c.gif"; // Thumbnail
webhook_url = "INSERT_DISCORD_URL_HERE";
icon_url = "https://cdn.discordapp.com/avatars/121117482210689024/d315ee4107af229386522209e095eabf.png?size=128"; // Author/footer icon

// Init webhooks. Adding in URL is optional. You can also use discord_webhook_set_webhook_url
discord_wbhk = discord_wbhk_create(webhook_url);

// Setup the webhook bot.
discord_wbhk_set_bot(discord_wbhk,username,avatar_url);
discord_wbhk_enable_tts(discord_wbhk,true);

// Setup the message that the webhook bot will use.
discord_wbhk_set_message(discord_wbhk,"Hello World!");

/// Embeds

// Create Embed List
discord_wbhk_embeds = discord_wbhk_embeds_start();

// Begin Embed & Add to List
// We'll make a map for the Embed to contain data.
var _embed_map = ds_map_create();
discord_wbhk_embeds_add_map(discord_wbhk_embeds,_embed_map);

// Add Embed Content
discord_wbhk_embeds_add_author(_embed_map,"TabularElf","https://twitter.com/TabularElf",icon_url);
discord_wbhk_embeds_add_title(_embed_map,"TabularElf's Github! Click here!");
discord_wbhk_embeds_add_url(_embed_map,"https://github.com/TabularElf");
discord_wbhk_embeds_add_description(_embed_map,"Description: Hey!! This is my waifu, ~~Torhu~~ Tohru! I love her lots! uwu");
discord_wbhk_embeds_add_color(_embed_map,c_purple);
discord_wbhk_embeds_add_image(_embed_map,image);
discord_wbhk_embeds_add_footer(_embed_map,"Footer: The end, thanks for trying!",icon_url);
discord_wbhk_embeds_add_thumbnail(_embed_map,thumbnail);

// Add a timestamp while we're at it!
// Have to set to utc otherwise it'll give out the incorrect timestamp. And we don't want that!!
date_set_timezone(timezone_utc);
discord_wbhk_embeds_add_timestamp(_embed_map,date_current_datetime());

// Add fields
var _fields_list = ds_list_create();
discord_wbhk_embeds_fields_bind(_embed_map,_fields_list);
discord_wbhk_embeds_fields_add(_fields_list,"FieldA","This","true");
discord_wbhk_embeds_fields_add(_fields_list,"FieldB","Is","true");
discord_wbhk_embeds_fields_add(_fields_list,"FieldC","A");
discord_wbhk_embeds_fields_add(_fields_list,"FieldD","Field",true);
discord_wbhk_embeds_fields_add(_fields_list,"FieldE","With","true");
discord_wbhk_embeds_fields_add(_fields_list,"FieldF","Inlines","true");
discord_wbhk_embeds_fields_add(_fields_list,"FieldG","And",false);
discord_wbhk_embeds_fields_add(_fields_list,"FieldH","Non","true");
discord_wbhk_embeds_fields_add(_fields_list,"FieldI","Inlines","true");
discord_wbhk_embeds_fields_add(_fields_list,"Actual Information","Fields can go as long as you'd like. We can also **USE** Discord's Markup. `if (rating == 10) user.tabularelf.feeling = emotion.happy;`");

// End Embed, adds back to discord webhook array.
discord_wbhk_embeds_end(discord_wbhk_embeds,discord_wbhk);

show_debug_message(discord_wbhk_export_json(discord_wbhk));

// Send the message over to webhook url.
// This function does return a http request, but it's unnecessary to track.
discord_wbhk_send(discord_wbhk);