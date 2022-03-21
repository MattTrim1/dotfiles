export DOTFILES=$HOME/dotfiles
export PATH=$HOME/bin:/usr/local/bin:$PATH

if [ -d "~/bin" ]; then
    export PATH="$PATH:~/bin"
fi

USER="$USER"
export ZSH="/home/${USER}/.oh-my-zsh"

ZSH_THEME="pygmalion"

zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 7

plugins=(git)

source $ZSH/oh-my-zsh.sh

