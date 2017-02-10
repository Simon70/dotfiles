#!/bin/bash

select=$(echo -e 'Abort\nSingle Builtin\nSingle External\nDual Vertical\nDual Horizontal' | rofi -p "Action:" -dmenu -lines 5 -eh 2 -width 100 -padding 450 -opacity 85 -bw 0 -bc "#1f222d" -bg "#1f222d" -fg "#ffffff" -hlbg "#1f222d" -hlfg "#9575cd" -font "System San Francisco Display 18")
echo $select


