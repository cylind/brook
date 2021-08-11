FROM alpine:latest
ADD entrypoint.sh /entrypoint.sh
RUN apk add --no-cache ca-certificates && chmod +x /entrypoint.sh
CMD /entrypoint.sh
