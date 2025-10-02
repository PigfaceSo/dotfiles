#!/bin/bash
# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s checkwinsize

####################
##    Load File   ##
####################

# Reset stty to default
stty sane

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
[[ -f $HOME/.bash_aliases ]] && source $HOME/.bash_aliases
[[ -f $HOME/git-prompt.sh ]] && source $HOME/git-prompt.sh
# [[ -f "$HOME/esp/esp-idf/export.sh" ]] && source $HOME/esp/esp-idf/export.sh
# [[ -f $HOME/fzf-git.sh ]] && source $HOME/fzf-git.sh
# [[ -f $HOME/.local/share/blesh/ble.sh ]] && source -- ~/.local/share/blesh/ble.sh
export PATH=$PATH:$HOME/.local/bin
export GPG_TTY=$(tty)

####################
##    History     ##
####################
export HISTSIZE=9999
export HISTFILESIZE=9999
export HISTCONTROL=ignorespace:ignoredups:erasedups
export HISTIGNORE="*-h:*--help*:ls:ls -la:ls -l:history:clear:pwd:exit:whoami:date"
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
##    Alias       ##
####################
[[ "$TERM" = "xterm-ghostty" ]] && alias ssh="TERM=xterm-256color ssh"
[[ -n $(command -v jq) ]] && alias jq="jq --color-output"
alias ls="ls --color=auto"
# [[ -n $(command -v eza) ]] && alias ls="eza --git"
alias tree="ls --color=never --tree"
alias ll="ls -alF"
alias grep="grep --color=auto"
alias ip="ip -c=auto"

alias klik_up="docker compose --project-directory ~/mysql_klik up -d"
alias klik_down="docker compose --project-directory ~/mysql_klik down"
alias klik_mysql="docker exec -it klik_mysql bash -c 'mysql -u root -D klik'"
alias ditto_up="docker compose --project-directory ~/git/ditto/deployment/docker/ up -d"
alias ditto_down="docker compose --project-directory ~/git/ditto/deployment/docker/ down"
alias node-red="docker start node-red"
alias mosquitto="docker start mosquitto"
alias kali_run="qemu-system-x86_64 -accel kvm -m 4G -smp 2 -drive file=~/Downloads/vm/kali-linux-2025.2-qemu-amd64.qcow2,format=qcow2 -device virtio-net-pci,netdev=net0 -netdev user,id=net0,hostfwd=tcp::2222-:22"
alias metaploitable_run="qemu-system-x86_64 -accel kvm -m 1G -smp 2 -drive file=~/Downloads/vm/Metasploitable.qcow2,format=qcow2 -device virtio-net-pci,netdev=net0 -netdev user,id=net0,hostfwd=tcp::2223-:22"
[[ -n $(command -v dstask) ]] && alias task="dstask"
[[ -n $(command -v curl) ]] && alias curl="curlie"
[[ -f "$HOME/esp/esp-idf/export.sh" ]] && alias esp_export="source $HOME/esp/esp-idf/export.sh"

####################
##  Load Command  ##
####################
[[ "$TERM" = "xterm-kitty" ]] && alias ssh="kitten ssh" && alias icat="kitten icat"
# [[ -n $(command -v python3) && ! -d "$HOME/.venv/base" ]] && echo "Create Python ENV..." && python3 -m venv $HOME/.venv/base
# [[ -d "$HOME/.venv/base" ]] && source $HOME/.venv/base/bin/activate

[[ -n $(command -v zoxide) ]] && eval "$(zoxide init --cmd cd bash)"
[[ -n $(command -v fzf) ]] && eval "$(fzf --bash)"
# [[ -n $(command -v atuin) ]] && eval "$(atuin init bash)"
[[ -n $(command -v direnv) ]] && eval "$(direnv hook bash)"
[[ -n $(command -v zellij) ]] && eval "$(zellij setup --generate-completion bash)"
[[ -n $(command -v jj) ]] && source <(jj util completion bash)
[[ -n $(command -v bin) ]] && eval "$(bin completion bash)"
[[ -n $(command -v thefuck) ]] && eval "$(thefuck --alias)"
[[ -n $(command -v dstask) ]] && eval "$(dstask bash-completion)"
[[ -n $(command -v await) ]] && eval "$(await --autocomplete-bash)"
[[ -n $(command -v spotify_player) ]] && eval "$(spotify_player generate bash)"
# [[ -n $(command -v mise) ]] && eval "$(mise activate bash)"

# bind -x '"\C-f": zellij-sessionizer'
bind -x '"\C-f": tmux-sessionizer'
