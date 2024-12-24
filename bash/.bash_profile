# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

export HISTFILESIZE=5000
export HISTCONTROL=ignoreboth

# export EDITOR="vim-x11"
# export VISUAL="vim-x11"
export EDITOR="nvim"
export VISUAL="nvim"
# export BROWSER="firefox"
export SESSION="bspwm"
export DESKTOP_SESSION="bspwm"
export XDG_SESSION_DESTOP="bspwm"

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
XDG_DATA_DIRS="/usr/local/share:/usr/share:"
export XDG_DATA_DIRS="$XDG_DATA_DIRS"'/var/lib/flatpak/exports/share:/home/wonwow/.local/share/flatpak/exports/share'

export XDG_CONFIG_DIRS="/etc/xdg"

 
# export XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"
# if test ! -d "${XDG_RUNTIME_DIR}"; then
#     mkdir "${XDG_RUNTIME_DIR}"
#     chmod 0700 "${XDG_RUNTIME_DIR}"
# fi

# if test -z "${XDG_RUNTIME_DIR}"; then
#     export XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"
#     if test ! -d "${XDG_RUNTIME_DIR}"; then
#         mkdir "${XDG_RUNTIME_DIR}"
#         chmod 0700 "${XDG_RUNTIME_DIR}"
#     fi
# fi

