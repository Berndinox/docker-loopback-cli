FROM node:alpine
MAINTAINER Bernd KLAUS "https://berndklaus.at"

RUN apk add --no-cache bash curl \
 && npm install -g loopback-cli
WORKDIR /app

EXPOSE 3000

CMD node .
