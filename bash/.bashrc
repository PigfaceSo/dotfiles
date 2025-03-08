# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

####################
##    Load File   ##
####################
[[ -f $HOME/.bash_aliases ]] && source $HOME/.bash_aliases
[[ -f $HOME/git-prompt.sh ]] && source $HOME/git-prompt.sh

####################
##    History     ##
####################
export HISTSIZE=9999
export HISTFILESIZE=9999
export HISTCONTROL=ignoreboth
export HISTIGNORE="*-h:*--help:*--help-all:cd*:history*:ls*:cc:clear:pwd:exit:whoami:man*:date:cal*:mount:unmount"
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
##  Load Command  ##
####################
[[ -f "/usr/bin/zoxide" ]] && eval "$(zoxide init --cmd cd bash)"
# [[ -f "/usr/bin/fzf" ]] && eval "$(fzf --bash)"
# [[ -f "/usr/bin/atuin" ]] && eval "$(atuin init bash)"

####################
##    Alias       ##
####################
TERMNAME="alacritty"
[[ -f "/usr/bin/jq" ]] && alias jq="jq --color-output"
[[ -f "/usr/bin/nnn" ]] && alias n="nnn"
[[ -f "/usr/bin/nvim" ]] && alias v="nvim" && alias vim="nvim" || [[ -f "/usr/bin/vim" ]] && alias v="vim"
[[ -f "/usr/bin/tmux" ]] && alias t="tmux"
alias cc="clear"
alias ls="ls --color=auto"; [[ -f "/usr/bin/eza" ]] && alias ls="eza --git"
alias ll="ls -alF"
alias grep="grep --color=auto"
alias ip="ip -c=auto"
alias node-redd="pgrep -x node-red > /dev/null && pkill node-red; nohup node-red -v > ~/node-red.log &"
alias mosquittod="pgrep -x mosquitto > /dev/null && pkill mosquitto; echo -e 'allow_anonymous true\nlistener 1883 $(ip -4 -o address show wlp2s0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')' > ~/mosquitto.conf; nohup mosquitto -c ~/mosquitto.conf -v > ~/mosquitto.log &"
alias ardc="pgrep -x arduino-cli > /dev/null && pkill arduino-cli; ${TERMNAME} -e sh -c 'arduino-cli compile -u' && ${TERMNAME} -e sh -c 'arduino-cli monitor --timestamp' &"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
