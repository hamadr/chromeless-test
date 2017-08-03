FROM node:8
MAINTAINER Adrien Hamraoui <dev@hamadr.fr>


RUN apt-get update
RUN apt-get install -yy chromium

WORKDIR /usr/src/app
CMD ["node"]
