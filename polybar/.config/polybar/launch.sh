#!/usr/bin/env bash

killall -q polybar

echo "---" | tee -a /tmp/polybar_top.log /tmp/polybar_bottom.log
polybar top >> /tmp/polybar_top.log 2>&1 & disown
polybar bottom >> /tmp/polybar_bottom.log 2>&1 & disown

echo "Polybar launched..."
