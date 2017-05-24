#!/bin/bash

file=/home/simon/tempLockscreen.png

scrot $file
i3lock -i $file --show-failed-attempts
rm $file
