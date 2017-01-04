#!/bin/bash

select=$(echo -e 'Abort\nSingle Builtin\nSingle External\nDual Vertical\nDual Horizontal' | rofi -dmenu -nb '#2f343f' -nf '#f3f4f5' -sb '#f0544c' -sf '#1f222d' -fn '-*-*-medium-r-normal-*-*-*-*-*-*-100-*-*' -i)
echo $select


