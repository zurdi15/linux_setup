# Terminal banner
echo
HEADER="                                       #                                                                                                               \n"
HEADER+="                                     @ /                                                                                                               \n"
HEADER+="                                       (                                                                                                               \n"
HEADER+="                                      @&                                                                                                               \n"
HEADER+="                                       /                                                          .%@@@&%,                                             \n"
HEADER+="                                   #*/..@ *                                                  @@@@@@@@@@@@@@@@@&                                        \n"
HEADER+="                                 @    @    ,                                              @@@@@@@@@@@@&        %@/                                     \n"
HEADER+="                                % *@ .(  .( ,                                           @@@@@@@@@@@@@            #@/                                   \n"
HEADER+="                             @(%/@@@@% /@@@@@@@@@@                                    ,@@@@@@@@@@@@@              (@@                                  \n"
HEADER+="                            @@@@@@@@@ # @@@@@@@@@@                                   /@@     *@@@@@@,              @@@                                 \n"
HEADER+="                           @@@#       * @@@@@/@@                                    ,@      #@@@@@@@@&             @@@@                                \n"
HEADER+="                          .@,           @@@.%@@                                     @        (@@@@@@@@@@@@@@@@@@( *@@@@&                               \n"
HEADER+="                                     @ *@@ @@@                                      @          (@@@@@@@@@@@@@@@@@@@@@@@@                               \n"
HEADER+="                                      @@@ @@                                        @           &@@@@@@@@@@@@@@@@@@@@@@@                               \n"
HEADER+="                                     @@@@@@                                        .@,          &@@@@@@@@@@@@@@@@@@@@@@@                               \n"
HEADER+="                                    @& .@@   @%@                                    @@*        .@@@@@@@@@,    ,@@@@@@@@&                               \n"
HEADER+="                                  @@&@@@@  @@@@,                                    .@@@@*   /@@@@@@@@@.        /@@@@@@                                \n"
HEADER+="                                 @@  @@ @     / @,                   @@  @           *@@@@@@@@@@@@@@@@.          @@@@@                                 \n"
HEADER+="                               .@/ @@#  @ %/(@                       @@               .@@@@@@@@@@,(@(            @@@@                                  \n"
HEADER+="                              @@@/@@ %  ,        @( &@   @  @@@/ @@ (@@  @              @@@@@@@@@@              @@@(                                   \n"
HEADER+="                             @@/@@@    ,%     &@@@  &@   @  @&  %@   @@  @                %@@@@@@@@/          /@@.                                     \n"
HEADER+="                           ,@@@@@@@@@   @@@@@@@@@   .@* @@  @&   @@ #@@  @                   @@@@@@@@@@/*,%@@@(                                        \n"
HEADER+="                                     #  @                                                         .#&%%/(.                                             \n"
HEADER+="                                        @                                                                                                              \n"
HEADER+="                                        &                                                                                                              \n"
HEADER+="                                     .                                                                                                                 \n"
HEADER+="                                     . @                                                                                                               \n"
HEADER+="                                      @                                                                                                                \n"
echo -e $HEADER | lolcat
echo
# ========================================================================================

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/aatancef/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
	fzf
	zsh-syntax-highlighting
	zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal binaries
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export GRADLE_OPTS="-Dhttp.proxyHost=proxycorporativo -Dhttp.proxyPort=8080 -Dhttps.proxyHost=proxycorporativo -Dhttps.proxyPort=8080 -Djava.nonProxyHosts='localhost|10.*|172.*|AOTLXPRICO00001'"

mkat-cmd() {
  echo 'mkatdb:{url:"jdbc:mysql://db:13306/mkat?useSSL=false"}' > .mkatrc
  docker run -it --rm --add-host db:10.113.99.120 -e PATH=/mkat/bin:$PATH -v $PWD:/root -w /root registry:5000/mkat-server:latest "$@"
  rm -fr .mkatrc
}
mkat() {
  mkat-cmd /mkat/bin/mkat "$@"
}
load-dataset-defs() {
  mkat-cmd ./load-data.sh -d/root/catalog "$@"
}
update-mkat() {
  docker rmi $(docker image ls registry:5000/mkat-server:latest -q) >/dev/null 2>&1; mkat version 2>/dev/null && \
  echo "Successfully updated to latest version"
}

pkat() {
  echo "Process Catalog CLI"
  echo "  Commands available:"
  echo "    pkat-validate    "
  echo "    pkat-add         "
  echo "    update-pkat      "
}

pkat-cmd() {
  docker run -it --rm --add-host api:10.113.99.120 -e PATH=/pkat/bin:$PATH -v $PWD:/root -w /root registry:5000/pkat-cli:latest "$@"
}

pkat-validate() {
  pkat-cmd validate --file "$@"
}

pkat-add() {
  pkat-cmd process --add "$@"
}

update-pkat() {
  docker rmi $(docker image ls registry:5000/pkat-cli:latest -q) >/dev/null 2>&1; pkat-validate .dummy_file 2>/dev/null && \
  echo "pkat CLI successfully updated to latest version"
}

export VENVS_PATH=~/venvs

activate_usage() {
  echo -e "Usage: activate VIRTUAL_ENV\n\nValid VIRTUAL_ENV are:\n`ls ${VENVS_PATH} 2>/dev/null | sed 's/^/> /g'`"
}
activate() {
  [ -z $1 ] && echo -e "You must provide a VIRTUAL_ENV" && activate_usage && return 1
  [ ! -d "${VENVS_PATH}/$1" ] && echo -e "Not a valid VIRTUAL_ENV '$1'" && activate_usage && return 2
  source ${VENVS_PATH}/$1/bin/activate
}
mirinda() {
docker run -it --rm -e PATH=/mirinda/bin:$PATH -w /root -v $PWD:/root registry:5000/mirinda:latest mirinda "$@"
}
mirinda-new() {
mirinda_params="$@"
if [[ $mirinda_params == *"="* ]]; then
  prod_id=`echo $mirinda_params | cut -d ' ' -f2 | cut -d '=' -f2 | tr '[:lower:]' '[:upper:]'`
else
  prod_id=`echo $mirinda_params | cut -d ' ' -f4 | tr '[:lower:]' '[:upper:]'`
fi
docker run -it --rm -e PATH=/mirinda/bin:$PATH -w /root -v $PWD:/root registry:5000/mirinda:latest  mirinda new $mirinda_params; if [ -d "GEAOSP_MIR_UC_${prod_id}_WORKFLOWS" ]; then sudo chown -R $(id -u $USER) GEAOSP_MIR_UC_${prod_id}_WORKFLOWS; sudo chgrp -R $(id -g $USER) GEAOSP_MIR_UC_${prod_id}_WORKFLOWS; fi;
}
update-mirinda() {
docker rmi $(docker image ls registry:5000/mirinda:latest -q) >/dev/null 2>&1; mirinda version 2>/dev/null && \
echo "Successfully updated to latest version"
}
# ussh host-alias [user] 
# i.e. ussh discover 
# connects to discover, using a local user based bashrc (~/{localuser}/.bashrc) and history 
ussh() { 
 if [[ ! -z $2 ]]; then 
 THE_USER=$2 
 else 
 THE_USER=$USER 
 fi 
 ssh -t $1 USSH_USER=${THE_USER} THE_USER=${THE_USER} exec zsh 
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source $(dirname $(gem which colorls))/tab_complete.sh

# Calls the deployer directly
# Usage:
#  - $1: project home
#  - $2: project area
#  - $3: project product-id
#  - $4: envinronment where want to be deployed
function deploy(){
	activate ansible && bash /home/aatancef/orange/GEAOSP_ANS_WORKFLOW_DEPLOYER/deploy/execute.sh $1 $2 $3 $4 && deactivate
}

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/aatancef/.sdkman"
[[ -s "/home/aatancef/.sdkman/bin/sdkman-init.sh" ]] && source "/home/aatancef/.sdkman/bin/sdkman-init.sh"

