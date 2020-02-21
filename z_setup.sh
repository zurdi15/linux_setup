#!/bin/bash

# $1 - Package manager

if [ -z $1 ]; then
	echo "Package manager needed"
	exit 1
fi
pm=$1

# Packages
echo "Installing packages"
sudo ${pm} install curl -y
sudo ${pm} install vim -y
sudo ${pm} install zsh -y
sudo ${pm} install ruby -y
sudo ${pm} install ruby-dev -y
sudo ${pm} autoremove
sudo gem install colorls

# Fonts
echo "Installing fonts"
if [ ! -d ~/.fonts ]; then
	mkdir ~/.fonts
fi
wget -O ~/.fonts/Ubuntu_Mono_Nerd_Font_Complete.ttf https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/UbuntuMono/Regular/complete/Ubuntu%20Mono%20Nerd%20Font%20Complete.ttf
fc-cache -f -v

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
