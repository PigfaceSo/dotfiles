#!/bin/sh

# xrandr --setprovideroutputsource modesetting NVIDIA-0
# xrandr --auto

xsetroot -cursor_name left_ptr
setxkbmap -layout us,th -model pc104 -option grp:caps_toggle

pgrep -x sxhkd > /dev/null || sxhkd &
pgrep -x pipewire > /dev/null || pipewire &

pgrep -x redshift > /dev/null || redshift -PO 3200 &

# pgrep -x eww > /dev/null || eww daemon & 
# eww open bar &

~/.fehbg &

exec bspwm
