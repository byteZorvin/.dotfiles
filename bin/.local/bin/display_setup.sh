#!/bin/bash

# Check if the external monitor is connected
if xrandr | grep -qs "HDMI-1-0 connected"; then
	# External monitor is connected, extend the display
	xrandr --output eDP --primary --auto --output HDMI-1-0 --auto --right-of eDP
else
	# External monitor is not connected, use only the laptop display
	xrandr --output eDP --primary --auto --output HDMI-1-0 --off
fi
