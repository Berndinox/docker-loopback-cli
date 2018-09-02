FROM node:alpine
MAINTAINER Bernd KLAUS "https://berndklaus.at"

RUN apk add --no-cache bash curl g++ gcc libgcc libstdc++ linux-headers make python

USER node
RUN mkdir ~/.npm-global && npm config set prefix '~/.npm-global' && export PATH=~/.npm-global/bin:$PATH && source ~/.profile \
 && npm install -g loopback-cli && npm cache clean --force
 
WORKDIR /app

EXPOSE 3000

CMD node .
