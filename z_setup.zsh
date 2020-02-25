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
cp ${DOTS_PATH}/.p10k.zsh ~
cp ${DOTS_PATH}/.zshrc ~
cp ${DOTS_PATH}/.vimrc ~
if [ ! -d ~/.vim ]; then
	mkdir ~/.vim
fi
cp ${DOTS_PATH}/plugins.vim ~/.vim


source ~/.zshrc
