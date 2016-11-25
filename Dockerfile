# vim:set ft=dockerfile:
FROM debian

MAINTAINER Andrius Kairiukstis <andrius@kairiukstis.com>

RUN apt-get update \
&&  apt-get -yqq install curl bzip2 build-essential libasound2-dev \
&&  mkdir -p /usr/src && cd /usr/src \
&&  curl -sf -o pjproject.tar.bz2 -L http://www.pjsip.org/release/2.5.5/pjproject-2.5.5.tar.bz2 \
&&  tar -xvjf pjproject.tar.bz2 \
&&  rm pjproject.tar.bz2 \
&&  cd pjproject* \
&&  ./configure \
&&  make dep \
&&  make \
&&  cp pjsip-apps/bin/pjsua-*gnu /usr/bin/pjsua \
&&  cd .. \
&&  rm -rf pjproject* \
&&  apt-get -yqq purge curl bzip2 build-essential libasound2-dev \
&&  apt-get clean all \
&&  rm -rf /var/lib/apt/lists/* /usr/share/doc /usr/share/man* /tmp/* /var/tmp/*

ENTRYPOINT ["/usr/bin/pjsua"]

