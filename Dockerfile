FROM httpd:2.4.55

MAINTAINER hainet50b <20400616+hainet50b@users.noreply.github.com>

COPY proxy-module.conf ./
RUN sed -i -e "s/Listen 80/Listen 9999/g" conf/httpd.conf
RUN cat proxy-module.conf >> conf/httpd.conf
