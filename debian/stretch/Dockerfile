# vim:set ft=dockerfile:
FROM debian:stretch-slim

LABEL maintainer="Andrius Kairiukstis <k@andrius.mobi>"

ENV PJPROJECT_VERSION=2.9

ENV BUILD_PACKAGES="curl \
                    bzip2 \
                    build-essential \
                    libasound2-dev"

RUN apt-get update \
 && apt-get \
      -yqq \
      --no-install-suggests \
      --no-install-recommends \
      install ${BUILD_PACKAGES} \
 && mkdir -p /usr/src \
 && cd /usr/src \
 && curl -sf -o pjproject.tar.bz2 -L http://www.pjsip.org/release/${PJPROJECT_VERSION}/pjproject-${PJPROJECT_VERSION}.tar.bz2 \
 && tar -xvjf pjproject.tar.bz2 \
 && rm pjproject.tar.bz2 \
 && cd pjproject* \
 && ./configure \
 && make dep \
 && make \
 && cp pjsip-apps/bin/pjsua-*gnu /usr/bin/pjsua \
 && cd .. \
 && rm -rf pjproject* \
 && apt-get -yqq purge curl ${BUILD_PACKAGES} \
 && apt-get clean all \
 && rm -rf /var/lib/apt/lists/* \
           /usr/share/doc \
           /usr/share/man* \
           /tmp/* \
           /var/tmp/*

COPY pjsua.conf           /pjsua.conf
COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
