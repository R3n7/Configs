#!/bin/sh
xrandr -s 1920x1200
xrandr --output eDP-1 --brightness 0.3
feh --randomize --bg-fill /home/ren/Pictures/wallpapers/*
#nitrogen --restore &
picom & 
