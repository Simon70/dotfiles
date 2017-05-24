#!/usr/bin/env bash

rm .bashrc
cp ~/.bashrc .
rm -rf .scripts
rm -rf .i3
cp -r ~/.scripts .
cp -r ~/.i3 .

