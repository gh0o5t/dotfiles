#!/usr/bin/env bash

# set keyboard layout
setxkbmap $1 
pkill -RTMIN+1 dwmblocks
