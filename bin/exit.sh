#!/bin/sh

choice=$(printf "shutdown\nreboot\nexit" | fzy -p "Choose action: ")


[  $choice = "shutdown" ] && doas poweroff
[  $choice = "reboot"   ] && doas reboot
[  $choice = "exit"     ] && pkill dwm
