FROM nginx:1.21.6-alpine

ENV NGINX_HTPASSWD_USERNAME=admin
ENV NGINX_HTPASSWD_PASSWORD=admin

RUN apk add --no-cache openssl

COPY entrypoint.sh /
COPY nginx.conf /etc/nginx/nginx.conf
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
