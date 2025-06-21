#!/bin/bash

display=$1
wallpaper=$2


# Update Pywal
wal -q -n -i "$wallpaper" --cols16 lighten
source "$HOME/.cache/wal/colors.sh"
