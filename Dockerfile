# vim:set ft=dockerfile:
FROM alpine:edge

MAINTAINER Andrius Kairiukstis <andrius@kairiukstis.com>

RUN apk add --update pjsua \
&&  rm -rf /var/cache/apk/* /tmp/* /var/tmp/*

ENTRYPOINT ["pjsua", "--null-audio"]

