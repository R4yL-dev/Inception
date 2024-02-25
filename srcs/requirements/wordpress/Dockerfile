FROM alpine:3.18

RUN apk update && \
	apk add php-fpm php-mysqli php-phar php-mbstring curl && \
	rm -rf /var/cache/apk/*

RUN rm /etc/php81/php-fpm.d/www.conf
COPY ./conf/www.conf /etc/php81/php-fpm.d/www.conf
COPY ./tools/init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

WORKDIR /var/www

CMD ["/usr/local/bin/init.sh"]
