#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
#tee -a /tmp/mainbar.log
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload mainbar -r >>/tmp/mainbar.log 2>&1 & disown && echo "Main bar launched"
  done
else
  polybar --reload mainbar -r >>/tmp/mainbar.log 2>&1 & disown && echo "Main bar launched"
fi

