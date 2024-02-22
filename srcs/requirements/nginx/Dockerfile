FROM alpine:3.19.1

RUN apk update && \
	apk add openssl nginx --no-cache && \
	rm -rf /var/cache/apk/*

RUN mkdir -p /etc/nginx/certs && \
	openssl req \
	-x509 \
	-nodes \
	-days 365 \
	-newkey rsa:4096 \
	-keyout /etc/nginx/certs/server.key \
	-out /etc/nginx/certs/server.crt \
	-subj "/C=CH/ST=Vaud/L=Bureau/O=42Lausanne/CN=lray.42.fr"

RUN rm /etc/nginx/http.d/default.conf
COPY ./conf/wordpress.conf /etc/nginx/http.d/wordpress.conf

WORKDIR /var/www

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
