FROM alpine:3.18

RUN apk update && \
	apk add redis --no-cache && \
	rm -rf /var/cache/apk/*

COPY ./conf/redis.conf /etc/redis.conf

CMD [ "redis-server", "/etc/redis.conf" ]
