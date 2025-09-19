#!/bin/sh

# Start a D-Bus session if one is not running
# if test -z "$DBUS_SESSION_BUS_ADDRESS"; then
#   eval $(dbus-launch --sh-syntax --exit-with-session)
# fi

# X11 Settings
xset b off &
xset r rate 200 80 &
xrdb -merge ~/.Xresources &
xsetroot -cursor_name left_ptr &
setxkbmap -layout us,th -model pc105 -option grp:caps_toggle &

# AutoStart
[ -f "$HOME/.fehbg" ] && ~/.fehbg &

pgrep -x pulseaudio >/dev/null || pulseaudio --start &
pgrep -x keepassxc >/dev/null || keepassxc &
pgrep -x polybar >/dev/null || polybar top &

# pgrep -x pipewire >/dev/null || /usr/bin/dbus-run-session /usr/bin/pipewire &
# pgrep -x pipewire-pulse >/dev/null || /usr/bin/dbus-run-session /usr/bin/pipewire-pulse &
# pgrep -x wireplumber >/dev/null || /usr/bin/dbus-run-session /usr/bin/wireplumber &
# pgrep -x copyq > /dev/null || copyq && copyq hide &
# pgrep -x redshift > /dev/null || redshift -PO 2200 &

exec dbus-run-session -- bspwm
