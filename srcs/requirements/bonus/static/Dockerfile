FROM alpine:3.19.1

RUN apk update && \
	apk add openssl nginx --no-cache && \
	rm -rf /var/cache/apk/*

RUN rm /etc/nginx/http.d/default.conf
COPY ./conf/static.conf /etc/nginx/http.d/static.conf

WORKDIR /var/www

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
