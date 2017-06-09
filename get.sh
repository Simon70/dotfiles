#!/usr/bin/env bash

rm .bashrc
cp ~/.bashrc .
rm -rf .scripts
rm -rf .i3
cp -r ~/.scripts .
cp -r ~/.i3 .
rm ./.scripts/show-rofi.sh
rm ./.scripts/status.py