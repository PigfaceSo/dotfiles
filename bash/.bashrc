# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libffi.so.7
export HISTFILESIZE=5000
export HISTCONTROL=ignoreboth

source ~/git-prompt.sh


PROMPT_COMMAND='BAT=$(cat /sys/class/power_supply/BAT0/capacity);'
PROMPT_COMMAND="$PROMPT_COMMAND"'GIT=$(__git_ps1 "󰊢 %s ")'
PS1='[ \w ] '
PS1="$PS1"'\[\e[38;5;214m\]'
PS1="$PS1"'${GIT}'
PS1="$PS1"'\[\e[0m\]'
#PS1="$PS1"'\[\e[38;5;40m\]'
#PS1="$PS1"'󱟢 ${BAT}% '
#PS1="$PS1"'\[\e[0m\]'
PS1="$PS1"'\n'
PS1="$PS1"'\$ '

eval "$(zoxide init --cmd cd bash)"
eval "$(fzf --bash)"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias nv="nvim"
alias ga="git add"
alias gc="git commit"
alias gp="git push"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/wonwow/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/wonwow/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/wonwow/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/wonwow/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

