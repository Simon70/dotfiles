#!/bin/bash
# make sure you always put $f in double quotes to avoid any nasty surprises i.e. "$f"
for f in $(ls)
do
  echo "Processing $f file..."
  if [ -z $(identify $f | grep 1920x1200) ];
  then
    echo "Yes"
  else
    mv $f ../
  fi
done
