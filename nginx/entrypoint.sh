#!/bin/sh

# htpasswd replacement
printf "${NGINX_HTPASSWD_USERNAME}:$(openssl passwd -apr1 ${NGINX_HTPASSWD_PASSWORD})\n" > /etc/nginx/htpasswd

exec "$@"