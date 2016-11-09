#!/bin/bash

# Check if gedit is running
if pgrep "vlc" > /dev/null
then
    i3-msg "workspace $ws10"
else
    vlc &
    i3-msg "workspace $ws10"
fi
