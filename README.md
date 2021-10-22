# GMLDiscordWebhooks v1.0.0
GameMaker Studio 2.3.1+ to Discord Webhooks implementation.
Repo project contains example on how to fully utilize it.

Basic example:
```gml
dhook = new dhook_create(webhook_url);
dhook.setMessage("Hello World!");
dhook.send();
```