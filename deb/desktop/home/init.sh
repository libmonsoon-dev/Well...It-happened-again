#!/usr/bin/env bash

source "$(dirname "$0")/../../../bash.lib.sh"
set +e

echo "Running as ${USER}"
env

# TODO: try remove sleep
sleep 3

/usr/bin/firefox &
thunderbird &
#spotify || "spotify error" &

konsole -e "bash -c 'tmux attach || tmux'" &
# TODO: auto link to ~/init.sh
# TODO: generate and execute *.desktop files with dex -ad
