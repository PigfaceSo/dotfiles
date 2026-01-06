#!/bin/sh
pgrep -x bluetui >/dev/null && pkill --signal 3 -x bluetui || st -c float -e bluetui
