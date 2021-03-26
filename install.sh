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

# PPA for i3-gaps
sudo add-apt-repository -y ppa:regolith-linux/stable
sudo apt update

# Packages
echo "Installing packages"
sudo ${pm} install curl -y
sudo ${pm} install neovim -y
sudo ${pm} install ranger -y
sudo ${pm} install polybar -y
sudo ${pm} install i3-gaps -y
sudo ${pm} install picom -y
sudo ${pm} install firefox -y
sudo ${pm} install rofi -y
sudo ${pm} install nautilus -y
sudo ${pm} install nodejs -y
sudo ${pm} install nitrogen -y
sudo ${pm} install tilix -y
sudo ${pm} install zsh -y
sudo ${pm} install ruby -y
sudo ${pm} install ruby-dev -y
sudo ${pm} install build-essential -y
sudo ${pm} autoremove -y
sudo gem install colorls
echo "Installing packages: Done!"

# SDKMAN
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# uLauncher
#wget https://github.com/Ulauncher/Ulauncher/releases/download/5.8.0/ulauncher_5.8.0_all.deb
#sudo dpkg -i ulauncher_5.8.0_all.deb
#rm ulauncher_5.8.0_all.deb
#git clone https://github.com/KiranWells/ulauncher-nord/ ~/.config/ulauncher/user-themes/nord

echo "When oh my zsh is installed, zsh prompt will appear -> just type exit and the instalation will cotinue :)"
read -p "Press any key when you are ready... " key

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Powerlevel10k
sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

# Zsh plugins
## Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

## Syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

## Fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Ranger devicons
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons

# Minimal Firefox
echo """
		Instructions for minimal Firefox:

    Verify that the user stylesheets (userChrome) option is enabled:

        Go to the address about:config in Firefox

        Search for toolkit.legacyUserProfileCustomizations.stylesheets

        Confirm the option is set to true

    Make sure that you have the Default theme enabled
        Go to the address about:addons
        Enable the Default theme if not already enabled

		Locate your Firefox user directory. You should be able to find it by navigating to /home/.mozilla/firefox/ and looking for a directory ending with the world .default-release.
		Within your Firefox user directory, locate the chrome directory, if one does not already exist you can simply go ahead and create it yourself.
		
		Copy the content of dots/neodots/.mozilla/firefox/xxxx.default-release/chrome into your own chrome folder (the one that you just searched/created)

    Select the Customize option from the hamburger menu (≡ ), and remove all items except for:

        Forward button
        Back button
        Downloads button
"""

read -p "Press any key when you are ready... " key

# Copy the .config folder
echo "Copying dotfiles to ~/.config"
cp -a dots/neodots/. $HOME
echo "Copying dotfiles to ~/.config: Done!"

# Fonts
echo "Installing fonts"
if [ ! -d ~/.fonts ]; then
	mkdir ~/.fonts
fi
fc-cache -f -v
echo "Installing fonts: Done!"

echo "Installing nvim plugins (and node)"
nvim -es -u ~/.config/nvim/init.vim -i NONE -c "PlugInstall" -c "qa"
echo "Installing nvim plugins: done!"

echo "Aditionally, you can use the Nord theme into any intellij-family IDE and set any wallpaper from ~/.config/wallpaper as background"

echo "Select the nord theme in tilix and disable any kind of border in appearance: Window style -> borderless and Terminal title style -> None."
echo "Set the Jetbrains Nerd Font 10 on tilix"
echo "Done!"
