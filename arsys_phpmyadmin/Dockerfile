FROM phpmyadmin/phpmyadmin:4.7.7-1

ARG filename

LABEL build_time="hello"

MAINTAINER jp
#Set TimeZone Madrid
ENV TZ=Europe/Madrid
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN touch ${filename}