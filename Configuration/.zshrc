export ZSH=/Users/max/.oh-my-zsh

ZSH_THEME="robbyrussell"

COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh
export TERM="screen-256color"

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="$PATH:$(which elixir)"
export PATH="$PATH:$(which elixirc)"
export PATH="$PATH:$(which iex)"

export LANG=en_US.utf8

source ~/.antigenrc

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#Aliases and command mods
cd() { builtin cd "$@" && ls; }
..() { builtin cd .. && ls; }
alias reload="exec zsh"
alias l="ls -a"
alias g="git"
alias ga="git add -A"
alias gcm="git commit -m "
alias gp="git push"
alias gl="git pull"
alias oc="sudo openconnect"
alias j="autojump"
alias gf="git-flow"
alias m="mix"
alias nv="nvim"

clear
