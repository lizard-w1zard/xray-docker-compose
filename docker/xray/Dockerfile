FROM teddysun/xray:25.6.8

RUN apk add --no-cache envsubst

COPY --chmod=777 entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["xray", "-config", "/etc/xray/config.json"]
