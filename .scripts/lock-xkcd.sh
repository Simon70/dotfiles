#!/bin/bash

cd ~
python3 ~/.scripts/xkcd.py
i3lock -i ~/xkcd.png --show-failed-attempts
rm ~/xkcd.png
