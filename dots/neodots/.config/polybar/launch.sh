#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
#tee -a /tmp/mainbar.log
polybar mainbar -r >>/tmp/mainbar.log 2>&1 & disown && echo "Main bar launched"
#polybar appsbar -r >>/tmp/appsbar.log 2>&1 & disown && echo "Apps bar launched"

