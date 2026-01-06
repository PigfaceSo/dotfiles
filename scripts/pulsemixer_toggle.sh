#!/bin/sh
pgrep -x pulsemixer >/dev/null && pkill --signal 3 -x pulsemixer || st -c float -e pulsemixer
