#!/usr/bin/env bash

killall -q polybar

echo "---" | tee -a /tmp/polybar_astartes.log
polybar astartes >> /tmp/polybar_astartes.log 2>&1 &


echo "Bars launched..."
