# .profile

export QT_QPA_PLATFORMTHEME=qt5ct
export _JAVA_AWT_WM_NONREPARENTING=1
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="xterm"
export BROWSER="firefox"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_DATA_DIRS="/usr/local/share:/usr/share:"
export XDG_CONFIG_DIRS="/etc/xdg"

if [[ -z "$XDG_RUNTIME_DIR" ]]; then
  export XDG_RUNTIME_DIR="/tmp/user/$(id -u)"
  if [[ ! -d "$XDG_RUNTIME_DIR" ]]; then
    mkdir -p "$XDG_RUNTIME_DIR"
    chmod 0700 "$XDG_RUNTIME_DIR"
    chown $(id -u):$(id -g) "$XDG_RUNTIME_DIR"
  fi
fi

if [[ -z "$DISPLAY" ]] && [[ $(tty) == /dev/tty1 ]] && [[ -f "/usr/bin/startx" ]]; then
  exec startx
fi

. "$HOME/.local/share/../bin/env"
