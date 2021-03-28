#!/usr/bin/env bash

m=0

if type "xrandr"; then
  for n in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    nitrogen --set-scaled ~/.config/wallpaper/nord_bg.png --head=$m
    let "m = $m + 1"
  done
else
  nitrogen --set-scaled ~/.config/wallpaper/nord_bg.png
fi

