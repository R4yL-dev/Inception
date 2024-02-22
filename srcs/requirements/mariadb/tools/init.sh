#!/bin/sh

mysqld --user=mysql --datadir=/var/lib/mysql &

sleep 5

mysql -u root -p"${DB_ROOT_PWD}" <<MYSQL_SCRIPT
CREATE DATABASE IF NOT EXISTS ${DB_NAME};
CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_USER_PWD}';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '${DB_USER}'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PWD}';
MYSQL_SCRIPT

mysqladmin -u root -p"${DB_ROOT_PWD}" shutdown

exec mysqld --user=mysql --datadir=/var/lib/mysql
