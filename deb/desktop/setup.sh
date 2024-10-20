#!/usr/bin/env bash

source  "$(dirname "$0")/../../bash.lib.sh"

#TODO: install docker engine https://docs.docker.com/engine/install/ubuntu/
sudo apt update
sudo apt upgrade
sudo apt install -y \
  snapd \
  xclip \
  cloud-init \
  libnotify-bin \
  cmake-format \
  openvpn \
  network-manager-openvpn \
	keepassx \
	ncdu \
	mc \
	htop \
	curl \
	xdg-utils \
	net-tools \
	apache2-utils \
	chromium-browser \
	firefox \
	vlc \
	docker \
	docker-compose \
	tree \
	tmux \
	python3-pip \
	xonsh
sudo apt autoremove -y

sudo snap remove firefox
sudo snap install telegram-desktop
sudo snap refresh