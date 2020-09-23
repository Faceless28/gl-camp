FROM alpine:3.12.0
RUN addgroup -S www-data && adduser -S www-data -G www-data
RUN apk --no-cache add curl
USER www-data
WORKDIR /home/www-data
COPY --chown=www-data ./server.sh /home/www-data
RUN chmod +x ./server.sh
HEALTHCHECK --interval=5s --timeout=10s --retries=3 CMD curl -sS 127.0.0.1:8080 || exit 1
ENTRYPOINT ["/bin/sh","./server.sh"]
