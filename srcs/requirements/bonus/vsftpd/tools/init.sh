#!/bin/sh

addgroup -g 1000 -S $FTP_USER
adduser -D -G $FTP_USER -h /var/wordpress -s /bin/false -u 1000 $FTP_USER

echo "$FTP_USER:$FTP_PWD" | /usr/sbin/chpasswd
chown -R "$FTP_USER":"$FTP_USER" /var/wordpress

exec /usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
