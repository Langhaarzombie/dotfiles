#/usr/local/bin/fish

export LANG="en_US.UTF-8"

set -U fish_greeting
set -U EDITOR nvim

# Aliases and command mods
function my_vi_bindings
  fish_vi_key_bindings
  bind -M insert -m default kj backward-char force-repaint
end
set -g fish_key_bindings my_vi_bindings
function cd
    if test (count $argv) -gt 0
        builtin cd "$argv"
        ls
    else 
        builtin cd /Users/max
    end
end
# General
alias ..="cd .."
alias l="ls -a"
alias reload="exec fish"
alias cat="bat --theme=OneHalfDark"
# Git
alias g="git"
alias ga="git add -A"
alias gcm="git commit -m "
alias gacm="ga and gcm"
alias gp="git push"
alias gl="git pull"
alias gs="git status"
alias glog="g log --oneline --graph --stat --decorate"
alias gb="git branch"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gf="git-flow"
# ELixir
alias m="mix"
alias mr="mix run"
alias iexs="iex -S mix"
alias iexsr="iex -S mix run"
# Vim
alias nv="nvim"
alias vi="nvim"
alias vim="nvim"
alias VIM="sudo nvim"
alias .="nvim ."
# Tmux
alias ta="tmux a -t"
alias tns="tmux new -s"
alias tcs="tns"
alias tls="tmux ls"
alias tks="tmux kill-session -t"
