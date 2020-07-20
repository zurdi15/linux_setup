#!/bin/zsh

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

# Dots
if [ -f ~/.bash_aliases ]; then
	touch ~/.bash_aliases
fi

echo "Creating aliases and dot files"
echo -e '
# Custom z aliases
alias l="colorls -lA --sd"
alias ll="colorls -l --tree --sd"
alias lll="colorls -lA --tree --sd"
alias rd="rm -rf"
alias shut="shutdown now"' >> ~/.bash_aliases

DOTS_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/dots

mkdir ~/.pre_zsetup_backup

if [ -f ~/.p10k.zsh ]; then
	cp ~/.p10k.zsh ~/.pre_zsetup_backup
fi
if [ -f ~/.zshrc ]; then
	cp ~/.zshrc ~/.pre_zsetup_backup
fi
if [ -f ~/.vimrc ]; then
	cp ~/.vimrc ~/.pre_zsetup_backup
fi
if [ -f ~/.vim/plugins.vim ]; then
	if [ ! -d ~/.pre_zsetup_backup/.vim ]; then
		mkdir ~/.pre_zsetup_backup/.vim
	fi
	cp ~/.vim/plugins.vim ~/.pre_zsetup_backup/.vim
fi

cp ${DOTS_PATH}/.p10k.zsh ~
if [ ! -d ~/.config/gtk-3.0 ]; then
	mkdir ~/.config/gtk-3.0
cp ${DOTS_PATH}/.gtk.css ~/.config/gtk-3.0
cp ${DOTS_PATH}/.zshrc ~
cp ${DOTS_PATH}/.vimrc ~
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ${DOTS_PATH}/plugins.vim ~/.vim
vim +PlugInstall +qall

source ~/.zshrc
