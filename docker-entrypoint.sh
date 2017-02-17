#!/bin/sh

exec /usr/bin/pjsua /pjsua.conf \
  --log-level 0 --app-log-level 0 \
  --reg-timeout 300 \
  --realm '*' \
  --use-srtp=0 \
  --use-timer 1 \
  --reg-use-proxy=3 \
  --auto-update-nat=1 \
  --disable-stun \
  --null-audio \
  "$@"
