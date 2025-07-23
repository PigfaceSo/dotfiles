# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

####################
##    Load File   ##
####################
[[ -f $HOME/.bash_aliases ]] && source $HOME/.bash_aliases
[[ -f $HOME/git-prompt.sh ]] && source $HOME/git-prompt.sh
[[ -f $HOME/.local/share/blesh/ble.sh ]] && source -- ~/.local/share/blesh/ble.sh
export PATH=$PATH:$HOME/.local/bin

####################
##    History     ##
####################
export HISTSIZE=9999
export HISTFILESIZE=9999
export HISTCONTROL=ignoreboth
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
##  Load Command  ##
####################
[[ $TERM = "xterm-kitty" ]] && alias ssh="kitten ssh"
[[ $TERM = "xterm-kitty" ]] && alias icat="kitten icat"
[[ -f "/usr/bin/python3" && ! -d "$HOME/.venv/base" ]] && echo "Create Python ENV..." && python3 -m venv $HOME/.venv/base
[[ -d "$HOME/.venv/base" ]] && source $HOME/.venv/base/bin/activate

[[ -f "/usr/bin/zoxide" ]] && eval "$(zoxide init --cmd cd bash)"
#[[ -f "/usr/bin/fzf" ]] && eval "$(fzf --bash)"
[[ -f "/usr/bin/atuin" ]] && eval "$(atuin init bash)"

####################
##    Alias       ##
####################
[[ -f "/usr/bin/jq" ]] && alias jq="jq --color-output"
alias ls="ls --color=auto"; [[ -f "/usr/bin/eza" ]] && alias ls="eza --git"
alias ll="ls -alF"
alias grep="grep --color=auto"
alias ip="ip -c=auto"
