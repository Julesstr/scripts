#!/bin/bash/

status=$(hyprctl monitors | grep eDP-1)
monitors=$(hyprctl monitors | grep -c Monitor)
if [[ -z "$status" ]]; then
  hyprctl keyword monitor "eDP-1,2560x1440@165,-1600x0,1.6"
elif [[ "$monitors" -ge 2 ]]; then
  hyprctl keyword monitor "eDP-1,disable"

fi
