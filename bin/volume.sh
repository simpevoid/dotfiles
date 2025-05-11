#!/bin/sh

arg=$1 

[ $arg = "up"     ] && amixer set Master 1%+
[ $arg = "down"   ] && amixer set Master 1%-
[ $arg = "toggle" ] && amixer set Master toggle
