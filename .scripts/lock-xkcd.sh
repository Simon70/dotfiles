#!/bin/bash

xkcdInfo=$(curl --silent --get http://xkcd.com/info.0.json)
echo $xkcdInfo
#xkcdImage=$(echo $test | grep -Po '\"img\": \"\S+\"')
xkcdImage=$(echo "$xkcdInfo" | python3 -c 'import json,sys;obj=json.load(sys.stdin);print obj["img"]')

echo $xkcdImage

