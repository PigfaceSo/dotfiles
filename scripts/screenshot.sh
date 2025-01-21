#!/bin/env bash

DIRECTORY="$HOME"'/Pictures/screenshot'
if [ ! -d ${DIRECTORY} ]; then
  mkdir -p ${DIRECTORY}
fi

if [ -z "$WAYLAND_DISPLAY" ]; then
  # FILE="$HOME"'/Pictures/screenshot/%Y-%m-%d-%T-screenshot.png'
  FILE='/tmp/%Y-%m-%d-%T-screenshot.png'

  CHOICE=$( \
    echo -e "Rectangular\nActiveWindow\nFullscreen" | \
    rofi -dmenu \
  )

  case ${CHOICE} in
    'Rectangular')
      scrot ${FILE} --silent -s -f --line mode=edge -e 'xclip -selection clipboard -target image/png -i $f' || exit
      ;;
    'ActiveWindow')
      scrot ${FILE} --silent -u -e 'xclip -selection clipboard -target image/png -i $f' || exit
      ;;
    'Fullscreen')
      scrot ${FILE} --silent -e 'xclip -selection clipboard -target image/png -i $f' || exit
      ;;
  esac
else
  CHOICE=$( \
    echo -e "Rectangular\nActiveWindow\nFullscreen" | \
    tofi
  )
  slurp | grim -g - - | wl-copy
fi
