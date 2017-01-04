#!/bin/bash

configfile="/home/simon/.config/nitrogen/bg-saved.cfg"

backgroundfile=$(ls ~/Pictures/wallpapers/ | sort -R | tail -1)

convert "$(echo ~)/Pictures/wallpapers/$backgroundfile" -scale 1920x1080 ~/background.jpg

echo "[:0.0]" > $configfile
echo "file=$(echo ~)/background.jpg" >> $configfile
echo "mode=4" >> $configfile
echo "bgcolor=#000000" >> $configfile

nitrogen --restore
