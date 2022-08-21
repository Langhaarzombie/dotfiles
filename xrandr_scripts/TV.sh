#!/bin/sh
xrandr --output eDP1 --primary --mode 2256x1504 --pos 0x1080 --rotate normal --output DP1 --off --output DP2 --off --output DP3 --mode 1920x1080i --pos 168x0 --rotate normal --output DP4 --off --output VIRTUAL1 --off

pacmd set-card-profile alsa_card.pci-0000_00_1f.3 output:hdmi-stereo
