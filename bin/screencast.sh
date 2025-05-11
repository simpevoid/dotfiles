#!/bin/bash

outputDir="$HOME/Videos/screen"
name=$(printf "" | dmenu  -p  "File Name:")
screen_resolution="1366x768"
frame_rate="24"


#ffmpeg -f x11grab -video_size $screen_resolution -framerate $frame_rate -i :0.0+0,0 -c:v libx264 -preset ultrafast -crf 18 "$outputDir/$name.mkv"

ffmpeg -thread_queue_size 512 -f x11grab -video_size $screen_resolution -framerate $frame_rate -probesize 10M -i :0.0 \
       -vcodec libx264 -preset fast -crf 18 -pix_fmt yuv420p -threads auto "$outputDir/$name.mp4"
