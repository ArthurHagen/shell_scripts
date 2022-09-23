#!/bin/sh
#1366x768
current_resolution=xrandr
if ($current_resolution | grep "left (")
then
    xrandr --output eDP-1 --primary --mode 1366x768 --pos 1366x0 --rotate normal --output HDMI-1 --mode $1 --pos 0x0 --rotate inverted

elif ($current_resolution | grep "inverted (")
then
    xrandr --output eDP-1 --primary --mode 1366x768 --pos 768x598 --rotate normal --output HDMI-1 --mode $1 --pos 0x0 --rotate right

elif ($current_resolution | grep "right (")
then
    xrandr --output eDP-1 --primary --mode 1366x768 --pos 1366x0 --rotate normal --output HDMI-1 --mode $1 --pos 0x0 --rotate normal

else
    xrandr --output eDP-1 --primary --mode 1366x768 --pos 768x598 --rotate normal --output HDMI-1 --mode $1 --pos 0x0 --rotate left
fi
