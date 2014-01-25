#DOCKER-VERSION 0.7.2

FROM bjg028/nodejs:0.10.26
MAINTAINER Brian Gillespie <brian.j.gillespie@gmail.com>

ADD src /src
RUN cd /src && grunt build

EXPOSE 3000
CMD NODE_ENV=production /usr/bin/forever /usr/bin/node /src/dist/server.js
