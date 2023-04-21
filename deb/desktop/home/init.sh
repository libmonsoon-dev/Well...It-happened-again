#!/usr/bin/env bash

set -euxo pipefail
echo "Running as ${USER}"

sleep 30

# TODO: move to just firefox and let env manage where is bin actualy located
/usr/bin/firefox &

sudo snap refresh firefox || echo "snap refresh error"
sleep 5
# TODO: remove snap-based firefox when I will fully migrate all tabs to apt-based
/snap/bin/firefox &
TZ="Europe/Kiev" teams &
spotify &

# Kubuntu-specific thing, yes
konsole -e tmux attach || tmux
