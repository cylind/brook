FROM alpine:3.5
COPY entrypoint.sh /opt/entrypoint.sh
RUN apk add --no-cache --virtual .build-deps ca-certificates wget \
    && chmod +x /opt/entrypoint.sh
ENTRYPOINT ["sh", "-c", "/opt/entrypoint.sh"]
