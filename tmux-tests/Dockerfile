# vim:set ft=dockerfile:
FROM alpine:edge

MAINTAINER Andrius Kairiukstis <andrius@kairiukstis.com>

RUN apk add --update \
      tmux \
      pjsua \
&&  rm -rf /var/cache/apk/* /tmp/* /var/tmp/*

COPY tmux-pjsua.conf      /tmux-pjsua.conf
COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY pjsua.sh             /pjsua.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
