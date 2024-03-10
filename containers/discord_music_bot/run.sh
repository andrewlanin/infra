#!/bin/sh

cp config.txt.template config.txt

sed -i "s/DISCORD_MUSIC_BOT_TOKEN/$DISCORD_MUSIC_BOT_TOKEN/g" config.txt
sed -i "s/DISCORD_MUSIC_BOT_OWNER/$DISCORD_MUSIC_BOT_OWNER/g" config.txt

exec java -Dnogui=true -jar musicbot.jar
