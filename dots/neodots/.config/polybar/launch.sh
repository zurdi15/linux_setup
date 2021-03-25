#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch zurdibar
echo "---" | tee -a /tmp/zurdibar.log
polybar zurdibar -r >>/tmp/polybar.log 2>&1 & disown

echo "Bar launched..."
