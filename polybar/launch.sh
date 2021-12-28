#!/bin/bash

killall polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar main -c $(dirname $0)/config.ini &

if [[ $(xrandr -q | grep 'HDMI1 connected') ]]; then
	polybar external -c $(dirname $0)/config.ini &
fi
