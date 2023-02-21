FROM httpd:2.4.55

MAINTAINER hainet50b <20400616+hainet50b@users.noreply.github.com>

COPY add-proxy-module.txt ./
RUN sed -i -e "s/Listen 80/Listen 9999/g" conf/httpd.conf
RUN cp conf/httpd.conf conf/httpd.conf.init
RUN cat conf/httpd.conf.init add-proxy-module.txt > conf/httpd.conf
