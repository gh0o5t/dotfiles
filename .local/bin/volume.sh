#!/usr/bin/env sh

[ $(pulsemixer --get-mute) = 1 ] && echo 婢 && exit

vol="$(pulsemixer --get-volume |  cut -f 1 -d " ")"

if [ "$vol" -gt "70" ]; then
	icon=""
elif [ "$vol" -lt "30" ]; then
	icon="奔"
else
	icon="墳"
fi

echo "$icon $vol%"
