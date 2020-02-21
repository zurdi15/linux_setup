#!/bin/env zsh

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# Zsh plugins
## Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

## Syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## Fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Dots
mkdir ~/tmp
if[ -f ~/.bash_aliases ];then
	touch ~/.bash_aliases
fi
echo -e '
alias l="colorls -lA --sd"\n
alias ll="colorls -l --tree --sd"\n
alias lll="colorls -lA --tree --sd"\n
alias rd="rm -rf"\n
alias shut="shutdown now"' >> ~/.bash_aliases
DOTS_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cp ${DOTS_PATH}/.p10k.zsh ~
cp ${DOTS_PATH}/.zshrc ~
cp ${DOTS_PATH}/.vimrc ~
