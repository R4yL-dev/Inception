FROM alpine:3.18

RUN apk update && \
	apk add nginx --no-cache && \
	rm -rf /var/cache/apk/*

RUN rm /etc/nginx/http.d/default.conf
COPY ./conf/wordpress.conf /etc/nginx/http.d/wordpress.conf

WORKDIR /var/www

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
