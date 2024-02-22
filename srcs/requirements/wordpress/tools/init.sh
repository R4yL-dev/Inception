#!/bin/sh

sleep 5

rm -fr localhost/
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

wp core download
wp core config \
	--dbname=$DB_NAME \
	--dbuser=$DB_USER \
	--dbpass=$DB_USER_PWD \
	--dbhost=mariadb \
	--dbprefix=$DB_PREFIX
wp core install \
	--url=$WP_URL \
	--title=$WP_TITLE \
	--admin_name=$WP_ADMIN \
	--admin_password=$WP_ADMIN_PWD \
	--admin_email=$WP_ADMIN_EMAIL \
	--skip-email
wp user create $WP_USER $WP_USER_EMAIL \
	--user_pass=$WP_USER_PWD \
	--role=$WP_USER_ROLE

php-fpm82 -F
