#/bin/zsh
# Duplicate screen on via connected HDMI port
output=$(xrandr | grep -o "^... connected")
echo Duplicating screen via output ${output:0:3}
xrandr --output ${output:0:3} --auto --scale-from 2256x1440
