#!/bin/bash/

nmcli device wifi list

read -p "SSID: " ssid

nmcli device wifi connect $ssid --ask
