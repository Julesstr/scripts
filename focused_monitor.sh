#!/bin/bash/

workspace="workspace"
monitor=$(hyprctl monitors | grep -B 11 "focused: yes" | grep "Monitor" | awk '{print $2}')
hyprctl dispatch moveworkspacetomonitor workspace $monitor
