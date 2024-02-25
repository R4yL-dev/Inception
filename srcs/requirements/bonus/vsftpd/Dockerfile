FROM alpine:3.18

RUN apk update && \
	apk add vsftpd --no-cache && \
	rm -rf /var/cache/apk/*

COPY ./conf/vsftpd.conf /etc/vsftpd
COPY ./tools/init.sh /usr/local/bin/init.sh

RUN chmod +x /usr/local/bin/init.sh

EXPOSE 21 21000-21100

CMD [ "/usr/sbin/vsftpd" ]

ENTRYPOINT [ "/usr/local/bin/init.sh" ]
