#!/bin/sh

params="$@"

echo "Starting tmux session for pjsua with command-line params: ${params}"
tmux source /tmux-pjsua.conf \; \
  new-session -d -c / -n pjsua -s pjsua -x 179 -y 53 \
    '/pjsua.sh "${params}"' \; \
  select-window -t :1 \
>/dev/null 2>&1

sleep 1

tail -f /var/log/pjsua.log
