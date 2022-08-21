#!/bin/bash

# Terminate running polybar
killall -q polybar
while pgrep -x polybar >/dev/null; do sleep 1; done

polybar --reload main
# for m in $(polybar --list-monitors | cut -d":" -f1); do
	# MONITOR=$m polybar --reload desktop &
# done

echo "Polybar launched..."

