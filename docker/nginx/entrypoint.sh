#!/bin/sh

envsubst '${DOMAIN} ${WS_PATH}' < /etc/nginx/conf.d/default.conf.tpl > /etc/nginx/conf.d/default.conf
envsubst '${DOMAIN}' < /var/www/html/index.html.tpl > /var/www/html/index.html
exec "$@"
