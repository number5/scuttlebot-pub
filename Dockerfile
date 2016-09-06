FROM mhart/alpine-node:6.3

MAINTAINER Bruce Wang <number5@gmail.com>

VOLUME ["/ssb-data", "/node_modules"]
EXPOSE 8008

ENV NODE_ENV production

RUN apk add --no-cache python git
RUN apk add --no-cache -t build_deps build-base autoconf libtool automake

RUN npm install -g typescript babel-cli node-gyp @corbinu/prebuild
RUN npm install -g scuttlebot@8.4.1 --libc=musl
RUN apk del build_deps
CMD ["sbot", "server"]
