#!/bin/sh

xrdb -merge ~/.Xresources &

# Mouse/Touchpad & Keyboard settings
xsetroot -cursor_name left_ptr &
setxkbmap -layout us,th -model pc105 -option grp:caps_toggle &

# AutoStart
# pgrep -x redshift > /dev/null || redshift -PO 2200 &
# pgrep -x copyq > /dev/null || copyq && copyq hide &

# wal -i ~/Pictures/wallpaper/png/7.png &

# ~/.fehbg &

exec dbus-run-session bspwm
