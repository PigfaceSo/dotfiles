#!/bin/sh

xrandr --newmode "1920x1080"  172.80  1920 2040 2248 2576  1080 1081 1084 1118  -HSync +Vsync 

xrandr --addmode eDP-1 1920x1080

xrandr --output eDP-1 --mode 1920x1080

