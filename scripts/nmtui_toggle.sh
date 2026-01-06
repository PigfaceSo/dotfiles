#!/bin/sh
pgrep -x nmtui >/dev/null && pkill --signal 3 -x nmtui || st -c float -e nmtui
