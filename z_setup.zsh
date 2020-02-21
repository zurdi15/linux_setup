#!/bin/zsh

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# Zsh plugins
## Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

## Syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-syntax-highlighting
echo "source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

## Fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Dots
if [ ! -d ~/tmp ]; then
	mkdir ~/tmp
fi
if [ -f ~/.bash_aliases ]; then
	touch ~/.bash_aliases
fi
echo "Creating aliases and dots files"
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

source ~/.zshrc
clear
