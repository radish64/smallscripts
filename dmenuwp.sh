#!/bin/sh
wallpaper=$(ls /home/$USER/pix/wallpaper | grep -E ".png|.jpg")
chosen=$(echo "$wallpaper" | dmenu -i -p "Which wallpaper?")
if [ "$chosen" = "" ]; then exit 1; fi
fit=$(echo "zoom\ntile\nstretch\ncenter\nmaximize" | dmenu -i -p "Fit type: ")
if [ "$fit" = "" ]; then exit 1; fi
echo "xwallpaper --$fit /home/$USER/pix/wallpaper/$chosen" > /home/$USER/pix/wallpaper/wallpaper.sh
xwallpaper --$fit "/home/$USER/pix/wallpaper/$chosen" && exit 0
