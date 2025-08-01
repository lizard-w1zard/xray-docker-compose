#!/bin/sh

envsubst '${UUID} ${WS_PATH}' < /etc/xray/config.json.tpl > /etc/xray/config.json
exec "$@"
