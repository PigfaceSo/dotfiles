#!/bin/sh

CHOICE=$(printf "poweroff\nreboot\nlockscreen" | dmenu -p "Power ")

if [ -z "$CHOICE" ]; then
  exit 1
fi

case ${CHOICE} in
  "poweroff")
    [[ -n $(command -v systemctl) ]] && systemctl poweroff || sudo poweroff
    ;;
  "reboot")
    [[ -n $(command -v systemctl) ]] && systemctl reboot || sudo reboot
    ;;
  "lockscreen")
    slock
    ;;
esac
