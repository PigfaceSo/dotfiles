# .bash_profile

# Get the aliases and functions

[[ -f $HOME/.bashrc ]] && . $HOME/.bashrc

WM_X11="bspwm"
WM_WAYLAND="river"

export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER="firefox"
export QT_QPA_PLATFORMTHEME=qt5ct
export _JAVA_AWT_WM_NONREPARENTING=1
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_DATA_DIRS="/usr/local/share:/usr/share:"
export XDG_CONFIG_DIRS="/etc/xdg"

# XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"
# if test ! -d "${XDG_RUNTIME_DIR}"; then
#   mkdir "${XDG_RUNTIME_DIR}"
#   chmod 0700 "${XDG_RUNTIME_DIR}"
# fi

if [ -z "${XDG_RUNTIME_DIR}" ]; then
  XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"
  if test ! -d "${XDG_RUNTIME_DIR}"; then
    mkdir "${XDG_RUNTIME_DIR}"
    chmod 0700 "${XDG_RUNTIME_DIR}"
  fi
fi

if [ -z "$WAYLAND_DISPLAY" ]; then
  export SESSION=${WM_X11}
  export DESKTOP_SESSION=${WM_X11}
  export XDG_SESSION_DESKTOP=${WM_X11}
  export XDG_CURRENT_DESKTOP=${WM_X11}
else
  export SESSION=${WM_WAYLAND}
  export DESKTOP_SESSION=${WM_WAYLAND}
  export XDG_SESSION_DESKTOP=${WM_WAYLAND}
  export XDG_CURRENT_DESKTOP=${WM_WAYLAND}
  export QT_QPA_PLATFORM=wayland
  export MOZ_ENABLE_WAYLAND=1
  export GRIM_DEFAULT_DIR="$HOME/Pictures/screenshot"
fi


