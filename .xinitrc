#!/bin/sh

# resolution.sh

# Mouse/Touchpad & Keyboard settings
xsetroot -cursor_name left_ptr &
setxkbmap -layout us,th -model pc104 -option grp:caps_toggle &

# AutoStart
# killall pipewire || /usr/bin/dbus-run-session pipewire &
# killall redshift || redshift -PO 2200 &

# wal -i ~/Pictures/wallpaper/png/7.png &

# ~/.fehbg &

exec icewm-session
