#!/bin/sh

WALLPAPERS=~/.config/wallpapers/ultrawide
INTERVAL=120

while true
  do
    feh --bg-scale --randomize $WALLPAPERS 
    sleep $INTERVAL
  done


