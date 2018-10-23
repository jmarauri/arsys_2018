From ubuntu:18.10
MAINTAINER jmarauri@arsys.es

RUN apt-get update
RUN apt-get install nginx -y
RUN echo '<marquee>Hola JP</marquee>' \
     > /var/www/html/index.html

RUN apt-get update

EXPOSE 80

# comentario practica 04 :)
WORKDIR /var/www/html

ENTRYPOINT ["nginx","-g daemon off;"]
