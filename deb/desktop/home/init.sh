#!/usr/bin/env bash

set -uxo pipefail
echo "Running as ${USER}"

sleep 30

/usr/bin/firefox &

sudo snap refresh firefox || echo "snap refresh error"
sleep 5
/snap/bin/firefox || echo "snap firefox error" &
TZ="Europe/Kiev" teams || echo "teams error" &
spotify || "spotify error" &

konsole -e "bash -c 'tmux attach || tmux'" || echo "konsole error" &

