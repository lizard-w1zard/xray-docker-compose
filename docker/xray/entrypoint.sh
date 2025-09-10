#!/bin/sh

envsubst '${UUID} ${DEST} ${PRIVATE_KEY} ${SID}' < /etc/xray/config.json.tpl > /etc/xray/config.json
exec "$@"
