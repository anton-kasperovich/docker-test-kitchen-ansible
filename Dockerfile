FROM ruby:2.3.1-alpine

MAINTAINER Anton Kasperovich <anton.kaspiarovich@gmail.com>

RUN apk --update add \
    sudo \
    docker=1.11.2-r1 \
    && rm -rf /var/cache/apk/*

RUN gem install --no-rdoc --no-ri \
    test-kitchen:1.13.2 \
    kitchen-docker:2.6.0 \
    kitchen-ansible:0.45.5

WORKDIR /kitchen
