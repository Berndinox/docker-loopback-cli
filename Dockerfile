FROM node:alpine
MAINTAINER Bernd KLAUS "https://berndklaus.at"

RUN apk add --no-cache bash curl g++ gcc libgcc libstdc++ linux-headers make python

USER node

RUN mkdir -p /home/node/app && mkdir -p /home/node/.npm-global
WORKDIR /usr/src/app

ENV USER=node
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

RUN npm install -g loopback-cli && npm cache clean --force
 

EXPOSE 3000

ENTRYPOINT ["/bin/bash"]
