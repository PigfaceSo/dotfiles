#!/bin/sh
scrot "$HOME/Pictures/screenshot/%Y-%m-%d-%T-screenshot.png" --silent -s -f  -e 'xclip -sel clipboard -target image/png -i $f'
