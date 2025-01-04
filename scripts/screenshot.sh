#!/bin/sh

FILE="$HOME"'/Pictures/screenshot/%Y-%m-%d-%T-screenshot.png'
DIRECTORY="$HOME"'/Pictures/screenshot'

if [ ! -d ${DIRECTORY} ]; then
  mkdir -p ${DIRECTORY}
fi

CHOICE=$( \
  echo "Rectangular\nActiveWindow\nFullscreen" | \
  rofi -dmenu \
)

case ${CHOICE} in
  'Rectangular')
    scrot ${FILE} --silent -s -f --line mode=edge || exit
    ;;
  'ActiveWindow')
    scrot ${FILE} --silent -u || exit
    ;;
  'Fullscreen')
    scrot ${FILE} --silent || exit
    ;;
esac
