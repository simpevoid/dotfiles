#!/bin/sh

arg=$(printf "up\ndown" | fzy -p  "Network: ")

[ $arg = "up"     ] && doas rfkill unblock wifi
[ $arg = "down"   ] && doas rfkill block wifi
