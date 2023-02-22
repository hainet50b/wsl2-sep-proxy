FROM httpd:2.4.55

MAINTAINER hainet50b <20400616+hainet50b@users.noreply.github.com>

COPY proxy-module.conf ./
RUN cat proxy-module.conf >> conf/httpd.conf
