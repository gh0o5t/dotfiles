#!/usr/bin/env bash

LAYOUT=$(setxkbmap -query | grep layout | awk '{print $2}' )
[ $LAYOUT == "us" ] && echo English 
[ $LAYOUT == "hu" ] && echo Hungarian 
