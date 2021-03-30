#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
#tee -a /tmp/mainbar.log
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload topbar -r >>/tmp/topbar.log & disown && echo "Top bar launched"
    MONITOR=$m polybar --reload botbar -r >>/tmp/botbar.log & disown && echo "Bot bar launched"
  done
else
  polybar --reload mainbar -r >>/tmp/mainbar.log & disown && echo "Top bar launched"
  polybar --reload botbar -r >>/tmp/botbar.log & disown && echo "Bot bar launched"
fi

