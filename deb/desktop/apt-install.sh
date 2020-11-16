#!/usr/bin/env bash

sudo add-apt-repository -y ppa:lazygit-team/release && \
sudo apt update && \
sudo apt upgrade && \
sudo apt install -y \
	keepassx \
	ncdu \
	mc \
	htop \
	curl \
	net-tools \
	apache2-utils \
	lazygit \
	telegram-desktop \
	chromium-browser \
	vlc \
	golang \
	docker \
	docker-compose \
	tree \
	tmux \
	xonsh
