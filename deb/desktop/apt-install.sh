#!/usr/bin/env bash

sudo add-apt-repository -y ppa:lazygit-team/release && \
sudo add-apt-repository -y ppa:longsleep/golang-backports && \
sudo apt update && \
sudo apt upgrade && \
sudo apt install -y \
  openvpn \
  network-manager-openvpn \
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
	python3-pip \
	xonsh
