#!/bin/sh

CHOICE=$( \
  echo "Rectangular\nActive\nFullscreen" | \
  dmenu \
)

case ${CHOICE} in
  'Rectangular')
    ksnip -r
    ;;
  'Active')
    ksnip -a
    ;;
  'Fullscreen')
    ksnip -f
    ;;
esac
