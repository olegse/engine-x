#  HTML files. Start with html volume or clone the source from
# github/olegse/class_files
ARG  CODE_VERSION=latest
#FROM osergiyuk/engine-x:main-base
FROM docker.io/cfsupport/engine-x:main-base

ENV NGINX_CONF default.conf

ADD ./conf.d/$NGINX_CONF /etc/nginx/$NGINX_CONF
RUN echo "hello $NGINX_CONF"
#COPY ./conf.d/$NGINX_CONF /etc/nginx/nginx.conf
