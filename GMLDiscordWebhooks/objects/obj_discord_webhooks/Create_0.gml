/// @description Init webhooks

// Setup variables
avatar_url = "INSERT_IMAGE_URL_HERE"; // Gifs do not work sadly.
username = "Discord Webhook Bot";
webhook_url = "INSERT_DISCORD_URL_HERE";

// Init webhooks. Adding in URL is optional. You can also use discord_webhook_set_url
discord_wbhk = discord_webhook_create(webhook_url);

// Setup the webhook bot.
discord_webhook_set_bot(discord_wbhk,username,avatar_url);

// Setup the message that the webhook bot will use.
discord_webhook_set_message(discord_wbhk,"Hello World!");

// Send the message over to webhook url.
// This function does return a http request, but it's unnecessary to track.
discord_webhook_send(discord_wbhk);

discord_webhook_destroy(discord_wbhk);
show_debug_message(discord_wbhk);