



#!bin/bash

val=$(awk -F "[][]" '/dB/ {print $2}' <(amixer get Master))
;notify-send -h int:$val "  $val"
