#!/bin/bash

configfile="/home/simon/.config/nitrogen/bg-saved.cfg"

backgroundfile=$(ls /home/simon/Pictures/wallpapers/ | sort -R | tail -1)

convert "/home/simon/Pictures/wallpapers/$backgroundfile" -scale 1920x1080 /home/simon/background.jpg

echo "[:0.0]" > $configfile
echo "file=/home/simon/background.jpg" >> $configfile
echo "mode=4" >> $configfile
echo "bgcolor=#000000" >> $configfile

nitrogen --restore
