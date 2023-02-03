#!/bin/sh
brightness=$(brightnessctl g ) 
full_brightness=937
brightness_percentage=$(expr $brightness \* 100 / $full_brightness)
killall dunst
notify-send -i /usr/share/icons/Win11-dark/status@2x/24/display-brightness-symbolic.svg " Brightness " " $brightness_percentage% "
