# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER="firefox"

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"

if test -z "${XDG_RUNTIME_DIR}"; then
  export XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"
  if test ! -d "${XDG_RUNTIME_DIR}"; then
    mkdir -pm 0700 "${XDG_RUNTIME_DIR}"
  fi
fi

