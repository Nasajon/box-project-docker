FROM php:7-cli-alpine

MAINTAINER Rodrigo Dirk "rodrigodirk@nasajon.com.br"

ENV BOX_PROJECT_VERSION 2.7.5

RUN curl -L https://github.com/box-project/box2/releases/download/$BOX_PROJECT_VERSION/box-$BOX_PROJECT_VERSION.phar -o box \
    && chmod +x box \
    && mv box /usr/local/bin/box

ENTRYPOINT ["/usr/local/bin/box"]
