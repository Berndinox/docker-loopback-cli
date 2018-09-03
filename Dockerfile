FROM node:alpine
MAINTAINER Bernd KLAUS "https://berndklaus.at"
USER root
RUN apk add --no-cache bash curl g++ gcc libgcc libstdc++ linux-headers make python \
 && npm install -g loopback-cli && npm cache clean --force
 

EXPOSE 3000

CMD node .
