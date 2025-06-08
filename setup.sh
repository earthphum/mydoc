#!/bin/bash

echo "Starting setup"

if ["$EUID" -ne 0]; then
	echo "need root permission"
	exec sudo bash "$0" "$@"
	exit
fi
sudo pacman -Syu 

#till windows manager
sudo pacman -S i3 xorg-server xorg-xinit xterm nano vim neovim --noconfirm 

#Starter pack
sudo pacman -S pavucontrol git alacritty dmenu 

#If nvidia
sudo pacman -S nvidia nvidia-settings nvidia-utils
