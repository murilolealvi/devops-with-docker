FROM alpine:latest

RUN apk --update --no-cache add redis
RUN mkdir /data && chown redis:redis /data

COPY redis.conf /redis.conf

EXPOSE 6379
VOLUME /data

WORKDIR /data
CMD ["/usr/bin/redis-server", "/redis.conf"]
