# vim:set ft=dockerfile:
FROM alpine:latest

MAINTAINER Andrius Kairiukstis <andrius@kairiukstis.com>

RUN apk add --update pjsua \
&&  rm -rf /var/cache/apk/* /tmp/* /var/tmp/*

COPY pjsua.conf           /pjsua.conf
COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
