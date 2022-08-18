FROM nginx:latest
COPY /public /var/www/public
COPY /docker/config/nginx.conf /etc/nginx/nginx.conf
RUN chmod 755 -R /var/www/public
EXPOSE 80 443
RUN echo "Bookboon test"
ENTRYPOINT ["nginx"]
