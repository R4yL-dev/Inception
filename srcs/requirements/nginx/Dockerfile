FROM alpine:3.18

RUN apk update && \
	apk add nginx openssl --no-cache && \
	rm -rf /var/cache/apk/*

RUN rm /etc/nginx/http.d/default.conf
COPY ./conf/wordpress.conf /etc/nginx/http.d/wordpress.conf
COPY ./tools/init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

WORKDIR /var/www

EXPOSE 443

CMD ["/usr/local/bin/init.sh"]
