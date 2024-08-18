# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


source ~/git-prompt.sh

PROMPT_COMMAND='BAT=$(cat /sys/class/power_supply/BAT0/capacity);'
PROMPT_COMMAND="$PROMPT_COMMAND"'GIT=$(__git_ps1 "[%s]")'
PS1='[ \w ] '
PS1="$PS1"'\[\e[38;5;214;1m\]'
PS1="$PS1"'${GIT} '
PS1="$PS1"'\[\e[0m\]'
PS1="$PS1"'[${BAT}%] '
PS1="$PS1"'\n'
PS1="$PS1"'\$ '

eval "$(zoxide init --cmd cd bash)"
eval "$(fzf --bash)"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias nv="nvim"
