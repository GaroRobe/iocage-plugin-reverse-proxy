#!/bin/sh

portsnap fetch extract
cd /usr/ports/security/py-certbot
make install clean BATCH="YES"
certbot --quiet certonly --standalone --agree-tos --email garorobe@gmail.com -w /usr/local/www/cloud.garorobe.win -d cloud.garorobe.win
certbot --quiet certonly --standalone --agree-tos --email garorobe@gmail.com -w /usr/local/www/freenas.garorobe.win -d freenas.garorobe.win
certbot --quiet certonly --standalone --agree-tos --email garorobe@gmail.com -w /usr/local/www/gitlab.garorobe.win -d gitlab.garorobe.win
certbot --quiet certonly --standalone --agree-tos --email garorobe@gmail.com -w /usr/local/www/jackett.garorobe.win -d jackett.garorobe.win
certbot --quiet certonly --standalone --agree-tos --email garorobe@gmail.com -w /usr/local/www/lidarr.garorobe.win -d lidarr.garorobe.win
certbot --quiet certonly --standalone --agree-tos --email garorobe@gmail.com -w /usr/local/www/plex.garorobe.win -d plex.garorobe.win
certbot --quiet certonly --standalone --agree-tos --email garorobe@gmail.com -w /usr/local/www/radarr.garorobe.win -d radarr.garorobe.win
certbot --quiet certonly --standalone --agree-tos --email garorobe@gmail.com -w /usr/local/www/router.garorobe.win -d router.garorobe.win
certbot --quiet certonly --standalone --agree-tos --email garorobe@gmail.com -w /usr/local/www/sonarr.garorobe.win -d sonarr.garorobe.win
certbot --quiet certonly --standalone --agree-tos --email garorobe@gmail.com -w /usr/local/www/transmission.garorobe.win -d transmission.garorobe.win

sysrc "nginx_enable=YES"
service nginx restart