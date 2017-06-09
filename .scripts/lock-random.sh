#!/bin/bash
file=$(ls ~/.scripts/ | grep lock | grep -v random | sort -R | tail -n 1)
source $HOME/.scripts/$file
