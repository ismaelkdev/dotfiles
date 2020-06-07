#!/usr/bin/env bash

killall -q polybar


echo "---" | tee -a /tmp/polybar_alpha.log /tmp/polybar_beta.log
polybar alpha >> /tmp/polybar_alpha.log 2>&1 &
polybar beta  >> /tmp/polybar_beta.log 2>&1 &

echo "Bars launched..."
