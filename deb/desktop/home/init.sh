echo "Running as ${USER}"

sleep 30

sudo snap refresh firefox && firefox &

TZ="Europe/Kiev" teams &

konsole -e tmux attach || tmux &
