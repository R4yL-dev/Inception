FROM alpine:3.19.1

RUN apk update && \
	apk add vsftpd openssl --no-cache && \
	rm -rf /var/cache/apk/*

COPY ./conf/vsftpd.conf /etc/vsftpd
COPY ./tools/init.sh /usr/local/bin/init.sh

RUN chmod +x /usr/local/bin/init.sh

RUN mkdir -p /etc/vsftpd/certs && \
	openssl req \
	-x509 \
	-nodes \
	-days 365 \
	-newkey rsa:4096 \
	-keyout /etc/vsftpd/certs/vsftpd.key \
	-out /etc/vsftpd/certs/vsftpd.crt \
	-subj "/C=CH/ST=Vaud/L=Bureau/O=42Lausanne/CN=lray.42.fr"

EXPOSE 20 21 21000-21100

CMD [ "/usr/sbin/vsftpd" ]

ENTRYPOINT [ "/usr/local/bin/init.sh" ]
