# .profile

export QT_QPA_PLATFORMTHEME=qt5ct
export _JAVA_AWT_WM_NONREPARENTING=1
export EDITOR="vim" 
export VISUAL="vim"
export TERMINAL="xterm"
export BROWSER="firefox"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_DATA_DIRS="/usr/local/share:/usr/share:"
export XDG_CONFIG_DIRS="/etc/xdg"

if [[ -z "$DISPLAY" ]] && [[ $(tty) == /dev/tty1 ]]; then
    exec startx
fi
