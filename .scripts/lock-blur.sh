#!/bin/bash

rawFile=/home/simon/tempRawLockscreen.png
editedFile=/home/simon/tempBlurredLockscreen.png


scrot $rawFile
convert $rawFile -resize 10% -filter Box -resize 1000% $editedFile
rm $rawFile
i3lock -i $editedFile --show-failed-attempts
rm $editedFile
