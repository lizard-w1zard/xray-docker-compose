#!/bin/sh

envsubst '${UUID} ${DEST} ${PRIVATE_KEY} ${SRI}' < /etc/xray/config.json.tpl > /etc/xray/config.json
exec "$@"
