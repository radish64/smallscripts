#!/bin/sh

muted=`amixer get Master | grep "off" | wc -l`
case $muted in
0) pactl set-sink-mute 0 1
;;
1) pactl set-sink-mute 0 0
;;
esac
