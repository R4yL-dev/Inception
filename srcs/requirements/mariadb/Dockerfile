FROM alpine:3.18

RUN apk update && \
	apk add mysql mysql-client --no-cache && \
	rm -rf /var/cache/apk/*

COPY ./conf/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf
COPY ./tools/init.sh /usr/local/bin/init.sh

RUN mkdir -p /var/lib/mysql && \
	mkdir -p /run/mysqld && \
	chown -R mysql:mysql /var/lib/mysql && \
	chown -R mysql:mysql /run/mysqld

RUN mysql_install_db --user=mysql --ldata=/var/lib/mysql

RUN chmod +x /usr/local/bin/init.sh

WORKDIR /var/lib/mysql

CMD ["/usr/local/bin/init.sh"]
