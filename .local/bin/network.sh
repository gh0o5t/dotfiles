#!/usr/bin/env bash

ETHER=' '
WIFI=' '
message=""

for interface in $(nmcli device status | grep ' connected '| awk '{ print $1 }'); do
    TYPE=$(nmcli device show $interface | grep 'TYPE' | awk '{ print $2 }')
    IP=$(nmcli device show $interface | grep 'IP4\.ADDRESS\[1\]' | awk '{ print $2 }')
    CONNECTION=$(nmcli device show $interface | grep 'CONNECTION' | awk '{ print $2 }')
    [ "$TYPE" = "wifi" ] && message="$message $WIFI $IP ($CONNECTION) "
    [ "$TYPE" = "ethernet" ] && message="$message $ETHER $IP " 
done

printf "$message"

