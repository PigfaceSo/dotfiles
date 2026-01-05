#!/bin/sh
scrot "$HOME/Pictures/screenshot/%Y-%m-%d-%T-fullscreen-screenshot.png" --silent -e 'xclip -sel clipboard -target image/png -i $f'
