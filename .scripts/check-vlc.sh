if pgrep -x "vlc" > /dev/null
then
    i3-msg "workspace 10 "
else
    i3-msg "exec vlc; workspace 10 "
fi
