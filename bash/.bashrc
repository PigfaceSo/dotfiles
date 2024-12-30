# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f $HOME/.bash_aliases ]] && source $HOME/.bash_aliases
[[ -f $HOME/git-prompt.sh ]] && source $HOME/git-prompt.sh

# set vi mode on bash
# set -o vi

# History
HISTSIZE=1000
HISTFILESIZE=5000
HISTCONTROL=ignoreboth
HISTTIMEFORMAT="%Y-%m-%d %T "

# Profile
PROMPT_COMMAND='BAT=$(cat /sys/class/power_supply/BAT0/capacity);'
PROMPT_COMMAND="$PROMPT_COMMAND"'GIT=$(__git_ps1 "󰊢 %s ")'
PS1='[ \w ] '
PS1="$PS1"'\[\e[38;5;214m\]'
PS1="$PS1"'${GIT}'
PS1="$PS1"'\[\e[0m\]'
PS1="$PS1"'\[\e[38;5;40m\]'
PS1="$PS1"'󱟢 ${BAT}% '
PS1="$PS1"'\[\e[0m\]'
PS1="$PS1"'\n'
PS1="$PS1"'\$ '

# Alias
alias vim="nvim"
alias cc="clear"
alias ls="ls --color=auto"
alias ll="ls --color=auto -l"
alias grep="grep --color=auto"
alias jq="jq --color-output"
alias t="task"

[[ -f "/usr/bin/zoxide" ]] && eval "$(zoxide init --cmd cd bash)"
[[ -f "/usr/bin/fzf" ]] && eval "$(fzf --bash)"
# eval "$(atuin init bash)"
