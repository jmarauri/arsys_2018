From ubuntu:18.10
MAINTAINER jmarauri@arsys.es

RUN apt-get update
RUN apt-get install nginx -y
RUN echo '<marquee>Hola JP</marquee>' \
     > /var/www/html/index.html


EXPOSE 80
