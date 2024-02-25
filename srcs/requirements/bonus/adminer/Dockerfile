FROM alpine:3.18

RUN apk update && \
	apk add nginx php-fpm php-session php-mysqli --no-cache && \
	rm -rf /var/cache/apk/*

RUN rm -fr /var/www/localhost && \
	rm -fr /etc/nginx/http.d/default.conf && \
	mkdir -p /var/run/php-fpm && \
	chown -R nginx:nginx /var/run/php-fpm

COPY ./conf/adminer.conf /etc/nginx/http.d/adminer.conf
COPY ./conf/www.conf /etc/php81/php-fpm.d/www.conf
COPY ./tools/init.sh /usr/local/bin/init.sh

RUN chmod +x /usr/local/bin/init.sh

WORKDIR /var/www

EXPOSE 8080

CMD ["/usr/local/bin/init.sh"]
