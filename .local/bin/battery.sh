#!/usr/bin/env bash

# Check if battery directories are detected
[ ! -e /sys/class/power_supply/BAT?* ] && echo "No battery" && exit 1

# Loop through all attached batteries and format the info
for battery in /sys/class/power_supply/BAT?*
do
    message=""
	status=$(cat "$battery/status")
	capacity=$(cat "$battery/capacity")

    case $status in
        "Full") message=" $capacity%" ;;
        "Discharging")
            [ $capacity -le 10 ] && message=" $capacity%"
            [ $capacity -le 20 ] && [ $capacity -gt 10 ] && message=" $capacity%"
            [ $capacity -le 30 ] && [ $capacity -gt 20 ] && message=" $capacity%"
            [ $capacity -le 40 ] && [ $capacity -gt 30 ] && message=" $capacity%"
            [ $capacity -le 50 ] && [ $capacity -gt 40 ] && message=" $capacity%"
            [ $capacity -le 60 ] && [ $capacity -gt 50 ] && message=" $capacity%"
            [ $capacity -le 70 ] && [ $capacity -gt 60 ] && message=" $capacity%"
            [ $capacity -le 80 ] && [ $capacity -gt 70 ] && message=" $capacity%"
            [ $capacity -le 90 ] && [ $capacity -gt 80 ] && message=" $capacity%"
            [ $capacity -le 100 ] && [ $capacity -gt 90 ] && message=" $capacity%"
            ;;
        "Charging")
            [ $capacity -le 20 ] && message=" $capacity%"
            [ $capacity -le 30 ] && [ $capacity -gt 20 ] && message=" $capacity%"
            [ $capacity -le 40 ] && [ $capacity -gt 30 ] && message=" $capacity%"
            [ $capacity -le 60 ] && [ $capacity -gt 40 ] && message=" $capacity%"
            [ $capacity -le 80 ] && [ $capacity -gt 60 ] && message=" $capacity%"
            [ $capacity -le 90 ] && [ $capacity -gt 80 ] && message=" $capacity%"
            [ $capacity -le 100 ] && [ $capacity -gt 90 ] && message=" $capacity%"
            ;;
        "Not charging") message=" Not charging" ;;
        "Unknown") message=" Unknown" ;;
    esac
            
echo $message
done
