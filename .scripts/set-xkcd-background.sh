#!/bin/bash

cd ~
python3 ~/.scripts/xkcd.py

configfile="$(echo ~)/.config/nitrogen/bg-saved.cfg"

echo "[:0.0]" > $configfile
echo "file=$(echo ~)/xkcd.png" >> $configfile
echo "mode=4" >> $configfile
echo "bgcolor=#000000" >> $configfile

nitrogen --restore
