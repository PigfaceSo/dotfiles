#!/bin/bash
# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s checkwinsize

####################
##    Load File   ##
####################

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
[[ -f $HOME/.bash_aliases ]] && source $HOME/.bash_aliases
[[ -f $HOME/git-prompt.sh ]] && source $HOME/git-prompt.sh
[[ -f $HOME/.geminirc ]] && source $HOME/.geminirc
export PATH=$PATH:$HOME/.local/bin

####################
##    History     ##
####################
export HISTSIZE=-1
export HISTFILESIZE=-1
export HISTCONTROL=ignorespace:ignoredups:erasedups
export HISTIGNORE="*-h:*--help*:ls:ls -*:history*:clear:pwd:exit:whoami:date"
# export HISTTIMEFORMAT="%Y-%m-%d %T "

####################
##    Profile     ##
####################
PROMPT_COMMAND='BAT=$(cat /sys/class/power_supply/BAT0/capacity);'
PROMPT_COMMAND="$PROMPT_COMMAND"'DATE=$(date +%F\ \|\ %R);'
PROMPT_COMMAND="$PROMPT_COMMAND"'GIT=$(__git_ps1 "\e[38;5;153;1mgit:\e[0m\e[38;5;214;1m(%s)\e[0m")'
PS1='[ \w ] '
PS1="$PS1"'\[\e[38;5;222m\]'
PS1="$PS1"'[ ${DATE} ] '
PS1="$PS1"'\[\e[0m\]'
PS1="$PS1"'\[\e[38;5;40m\]'
PS1="$PS1"'{${BAT}%} '
PS1="$PS1"'\[\e[0m\]'
PS1="$PS1"'\[\e[38;5;214m\]'
PS1="$PS1"'${GIT}'
PS1="$PS1"'\[\e[0m\]'
PS1="$PS1"'\n'
PS1="$PS1"'\$ '

####################
##    Binds       ##
####################
bind -x '"\C-f": tmux-sessionizer'
# bind -x '"\C-f": zellij-sessionizer'

####################
##    Alias       ##
####################
[[ "$TERM" = "xterm-kitty" ]] && alias ssh="kitten ssh" && alias icat="kitten icat"
[[ "$TERM" = "xterm-ghostty" ]] && alias ssh="TERM=xterm-256color ssh"
[[ -f "$HOME/esp/esp-idf/export.sh" ]] && alias esp_export="source $HOME/esp/esp-idf/export.sh"
[[ -n $(command -v jq) ]] && alias jq="jq --color-output"
[[ -n $(command -v nvim) ]] && alias vim="nvim"
[[ -n $(command -v dstask) ]] && alias task="dstask"
[[ -n $(command -v curlie) ]] && alias curl="curlie"
alias ls="ls --color=auto"
# [[ -n $(command -v eza) ]] && alias ls="eza --git" && alias tree="eza --color=never --tree"
alias c="clear"
alias ll="ls -alF"
alias grep="grep --color=auto"
alias ip="ip -c=auto"
alias env="env | less"
alias node-red="podman start node-red"
alias mosquitto="podman start mosquitto"
alias cst="nvim ~/dotfiles/suckless/st/config.h"
alias mst="cd ~/dotfiles/suckless/st; sudo make clean install; cd -"
alias cdwm="nvim ~/dotfiles/suckless/dwm/config.h"
alias mdwm="cd ~/dotfiles/suckless/dwm; sudo make clean install; cd -"
alias cdmenu="nvim ~/dotfiles/suckless/dmenu/config.h"
alias mdmenu="cd ~/dotfiles/suckless/dmenu; sudo make clean install; cd -"
alias cslock="nvim ~/dotfiles/suckless/slock/config.h"
alias mslock="cd ~/dotfiles/suckless/slock; sudo make clean install; cd -"
alias cslstatus="nvim ~/dotfiles/suckless/slstatus/config.h"
alias mslstatus="cd ~/dotfiles/suckless/slstatus; sudo make clean install; cd -"

####################
##  Load Command  ##
####################

# [[ -n $(command -v fzf) ]] && eval "$(fzf --bash)"
[[ -n $(command -v atuin) ]] && eval "$(atuin init bash)"
[[ -n $(command -v direnv) ]] && eval "$(direnv hook bash)"
[[ -n $(command -v zellij) ]] && eval "$(zellij setup --generate-completion bash)"
[[ -n $(command -v jj) ]] && source <(jj util completion bash)
[[ -n $(command -v thefuck) ]] && eval "$(thefuck --alias)"
[[ -n $(command -v dstask) ]] && eval "$(dstask bash-completion)"
[[ -n $(command -v kuberctl) ]] && source <(kubectl completion bash)
[[ -n $(command -v mise) ]] && eval "$(mise activate bash)"
[[ -n $(command -v zoxide) ]] && eval "$(zoxide init --cmd cd bash)"
