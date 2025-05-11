/#!/bin/sh


outputDir="$HOME/Pictures/screen/"
name=$(printf "" | dmenu -p "FILE NAME: ")

maim -u -s $outputDir/$name.png
