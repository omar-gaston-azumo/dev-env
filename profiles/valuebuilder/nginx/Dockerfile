FROM nginx:alpine

COPY ssl/dhparam.pem /etc/nginx/ssl/dhparam.pem
COPY ssl/localhost.crt /etc/ssl/certs/localhost.crt
COPY ssl/localhost.key /etc/ssl/private/localhost.key

COPY nginx.conf /etc/nginx/nginx.conf
COPY sites/default.conf /etc/nginx/sites-available/default.conf
COPY sites/api.conf /etc/nginx/sites-available/api.conf

EXPOSE 80 443

WORKDIR /var/www/