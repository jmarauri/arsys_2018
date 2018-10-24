FROM ubuntu:18.10
MAINTAINER jmarauri@arsys.es

RUN useradd jp

RUN apt-get update
RUN apt-get install nginx -y
RUN echo '<marquee>Hola JP</marquee>' \
     > /var/www/html/index.html

RUN apt-get update

EXPOSE 80

ENV DATABASE_IP 192.168.2.9

RUN usermod -aG sudo jp

USER jp

VOLUME [ "/my-data" ]