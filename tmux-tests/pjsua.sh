#!/bin/sh

echo "PJSUA command-line parameters: $@"

exec /usr/bin/pjsua \
  --log-level 0 --app-log-level 0 \
  --null-audio \
  --reg-timeout 300 \
  --realm '*' \
  --use-srtp=0 \
  --use-timer 1 \
  --reg-use-proxy=3 \
  --auto-update-nat=1 \
  --disable-stun \
  --max-calls 20 \
  "$@" 2>&1 | tee /var/log/pjsua.log
