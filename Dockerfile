#  HTML files. Start with html volume or clone the source from
# github/olegse/class_files
FROM nginx:latest

ENV NGINX_CONF simple.conf

ADD ./conf.d/$NGINX_CONF /etc/nginx/$NGINX_CONF
RUN echo "hello $NGINX_CONF"
#COPY ./conf.d/$NGINX_CONF /etc/nginx/nginx.conf
