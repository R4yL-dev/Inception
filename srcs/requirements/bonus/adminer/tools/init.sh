#!/bin/sh

wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php

php-fpm82 -D

nginx -g 'daemon off;'

