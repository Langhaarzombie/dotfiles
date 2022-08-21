#!/bin/sh
xrandr --output eDP1 --primary --mode 2256x1504 --pos 0x0 --rotate normal --output DP1 --off --output DP2 --off --output DP3 --off --output DP4 --off --output VIRTUAL1 --off

pacmd set-card-profile alsa_card.pci-0000_00_1f.3 output:analog-stereo+input:analog-stereo

zsh ~/.config/bspwm/bspwmrc
