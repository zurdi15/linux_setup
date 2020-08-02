#!/bin/bash

# $1 - Package manager

function show_help {
	echo "Linux Setup as Z mode v1.0 - Zurdi Zurdo"
	echo "Released under the GNU GLP"
	echo ""
	echo "Usage: ./z_setup.sh [package manager]"
}

if [ -z $1 ]; then
	echo "Package manager needed"
	echo ""
	show_help
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
sudo ${pm} install lolcat -y
sudo ${pm} install tilix -y
sudo ${pm} install build-essential -y
sudo ${pm} autoremove -y
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

# SDKMAN
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# uLauncher
wget https://github.com/Ulauncher/Ulauncher/releases/download/5.8.0/ulauncher_5.8.0_all.deb
sudo dpkg -i ulauncher_5.8.0_all.deb
