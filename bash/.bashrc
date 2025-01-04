# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f $HOME/.bash_aliases ]] && source $HOME/.bash_aliases
[[ -f $HOME/git-prompt.sh ]] && source $HOME/git-prompt.sh

# History
HISTSIZE=1000
HISTFILESIZE=5000
HISTCONTROL=ignoreboth
HISTTIMEFORMAT="%Y-%m-%d %T "

# Profile
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

[[ -f "/usr/bin/zoxide" ]] && eval "$(zoxide init --cmd cd bash)"
[[ -f "/usr/bin/fzf" ]] && eval "$(fzf --bash)"
# eval "$(atuin init bash)"
