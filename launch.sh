#!/bin/bash/

killall waybar

if [[ $USER = "jules" ]]; then
	waybar -c ~/.config/waybar/config & -s ~/.config/waybar/style.css

else
	waybar &

fi
