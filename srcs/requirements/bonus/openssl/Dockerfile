FROM alpine:3.19.1

RUN apk update && \
	apk add openssl --no-cache && \
	rm -rf /var/cache/apk/*

COPY ./tools/init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

CMD [ "/usr/local/bin/init.sh" ]
