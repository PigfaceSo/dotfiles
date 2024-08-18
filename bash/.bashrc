# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias nv="nvim"

PROMPT_COMMAND="BAT=$(cat /sys/class/power_supply/BAT0/capacity)"
PS1='[ \w ] [${BAT}%]'
PS1="$PS1"'\n'
PS1="$PS1"'\$ '

eval "$(zoxide init --cmd cd bash)"
eval "$(fzf --bash)"
