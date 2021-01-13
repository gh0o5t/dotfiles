#!/usr/bin/env bash

IF_NAME="ens33"
IPS=""

for intf in $IF_NAME; do
    IPS="${IPS} $intf:$(ip address show $intf | grep -E "inet .*" | cut -d " " -f6)"
done

echo $IPS

