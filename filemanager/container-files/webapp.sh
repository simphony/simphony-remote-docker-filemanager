#!/bin/sh
export HOME="/home/$USER"
cat /webapp/templates/php-fpm-pool.conf.template | envsubst '$USER' > /etc/php/8.1/fpm/pool.d/www.conf
service php8.1-fpm start
cat /webapp/templates/nginx.conf.template | envsubst '$JPY_BASE_USER_URL $URL_ID' > /webapp/nginx.conf
nginx -c /webapp/nginx.conf
