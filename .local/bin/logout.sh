#!/usr/bin/env bash

col_gray1="#2e3440"
col_gray2="#444444"
col_gray3="#bbbbbb"
col_gray4="#4c566a"
col_red="#BF616A"

RET=$(echo -e "Shutdown\nReboot\nSuspend\nLogout\nLock\nCancel" | dmenu -p "Run λ" -l 6 -g 1 -nb $col_gray1 -nf $col_gray3 -sb $col_red -sf $col_gray4)

case $RET in
    Shutdown) systemctl poweroff ;;
    Reboot) systemctl reboot ;;
    Suspend) systemctl suspend ;;
    Logout) killall dwm ;;
    Lock) slock ;;
    *) ;;
esac
