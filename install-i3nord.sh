#!/bin/bash

# PPA for i3-gaps
sudo add-apt-repository -y ppa:regolith-linux/stable
# PPS for spotify
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt-get update

# Packages
echo "Installing packages"
sudo apt-get install build-essential curl checkinstall neovim ranger dunst pavucontrol polybar i3-gaps i3lock-fancy spotify-client playerctl picom firefox rofi nautilus nodejs nitrogen tilix zsh ruby ruby-dev bc imagemagick libjpeg-turbo8-dev libpam0g-dev libxcb-composite0 libxcb-composite0-dev libxcb-image0-dev libxcb-randr0 libxcb-util-dev libxcb-xinerama0 libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-x11-dev feh libev-dev -y
sudo apt-get autoremove -y
sudo gem install colorls
echo "Installing packages: Done!"

## Install i3lock-fancy dependencies - i3lock-color
echo "Installing i3lock-fancy dependencies (i3-lock-color)"
git clone https://github.com/PandorasFox/i3lock-color && cd i3lock-color;
autoreconf -i; ./configure;
make; sudo checkinstall --pkgname=i3lock-color --pkgversion=1 -y;
cd .. && sudo rm -r i3lock-color;
echo "Installing i3lock-fancy dependencies: Done!"

## Spotify
echo "Installing Spotify"
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo chmod a+wr /usr/share/spotify
sudo chmod a+wr /usr/share/spotify/Apps -R
spotify &
/home/$USER/spicetify-cli/spicetify backup apply
echo "Installing Spotify: Done!"

## Spicetify
echo "Installing spicetify"
curl -fsSL https://raw.githubusercontent.com/khanhas/spicetify-cli/master/install.sh | sh
echo "Installing spicetify: Done!"

## Installing zscroll
echo "Installing spotify polybar module dependencies (zscroll)"
git clone https://github.com/noctuid/zscroll && cd zscroll
sudo python3 setup.py install
cd .. && sudo rm -r zscroll

# SDKMAN
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# uLauncher
#wget https://github.com/Ulauncher/Ulauncher/releases/download/5.8.0/ulauncher_5.8.0_all.deb
#sudo dpkg -i ulauncher_5.8.0_all.deb
#rm ulauncher_5.8.0_all.deb
#git clone https://github.com/KiranWells/ulauncher-nord/ ~/.config/ulauncher/user-themes/nord

echo -e "\e[0;49;93mWARNING\e[0;49;0m: When oh my zsh is installed, zsh prompt will appear -> just type exit and the instalation will cotinue"
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

# Copy the .config folder
echo "Copying dotfiles to ~/.config"
cp -a dots/i3nord/. $HOME
echo "Copying dotfiles to ~/.config: Done!"

# Fonts
echo "Installing fonts"
if [ ! -d ~/.fonts ]; then
	mkdir ~/.fonts
fi
fc-cache -f -v
echo "Installing fonts: Done!"

echo "Installing nvim plugins"
nvim -es -u ~/.config/nvim/init.vim -i NONE -c "PlugInstall" -c "qa"
echo "Installing nvim plugins: done!"

# Minimal Firefox
echo -e """
\e[0;49;94mInstructions for minimal Firefox:\e[0;49;0m
	Verify that the user stylesheets (userChrome) option is enabled:
	 - Go to the address about:config in Firefox
	 - Search for toolkit.legacyUserProfileCustomizations.stylesheets
	 - Confirm the option is set to true

	Make sure that you have the Default theme enabled
	 - Go to the address about:addons
	 - Enable the Default theme if not already enabled

	Locate your Firefox user directory. You should be able to find it by navigating to /home/.mozilla/firefox/ and looking for a directory ending with the world .default-release.
	
	Within your Firefox user directory, locate the chrome directory, if one does not already exist you can simply go ahead and create it yourself.
		
	Copy the content of dots/i3nord/.mozilla/firefox/xxxx.default-release/chrome into your own chrome folder (the one that you just searched/created)

	Select the Customize option from the hamburger menu (≡ ), and remove all items except for:
	 - Forward button
	 - Back button
	 - Downloads button
"""
read -p "Waiting for Minimal Firefox setup..." key

echo -e """\n
\e[0;49;94mInstructions for JetBrains IDEs:\e[0;49;0m
    You can use the Nord theme into any intellij-family IDE and set any wallpaper from ~/.config/wallpaper as background
"""
read -p "Waiting for JetBrains IDEs setup..." key

echo -e """\n
\e[0;49;94mInstructions for Tilix:\e[0;49;0m
	Select the nord theme in tilix
	
	Select JetBrains Nerd Font 10
	
	Disable any kind of border in appearance: 
	 - Window style -> borderless
	 - Terminal title style -> None
	
	Transparency:
	 - If you are in a Virtual machine, picom will set the transparency on tilix. You can configure it in the ~/.config/picom/picom.conf file
	 - If you are not in a Virtual Machine, set it in the tilix configuration and remove it from the ~/.config/picom/picom.conf file
"""
read -p "Waiting for Tilix setup..." key

echo -e """\n
\e[0;49;94mInstructions for wlan/eth indicator on polybar:\e[0;49;0m
	Use the command ip link show to get your own interfaces
	
	Change them in the wlan/eth polybar module in ~/.config/polybar/config
"""
read -p "Waiting for wlan/eth polybar modules setup..." key

echo -e """\n
\e[0;49;94mInstructions for Slack:\e[0;49;0m
	Set custom theme with this Nord palette: 
	 - #2E3440,#3B4252,#88C0D0,#2E3440,#3B4252,#D8DEE9,#A3BE8C,#81A1C1,#3B4252,#D8DEE9
"""

echo -e """\n
\e[0;49;94mInstructions for audio controls:\e[0;49;0m
	Change your audio devices to swap them from terminal in .bas_aliases.
	Check your sink names with: pacmd list-sinks
"""

echo -e "\e[0;49;92mDone!\e[0;49;0m"

