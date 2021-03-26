#!/bin/sh
wallpaper=$(ls /home/$USER/pix/wallpaper | grep -E ".png|.jpg")
chosen=$(echo "$wallpaper" | dmenu -i -p "Which wallpaper?")
fit=$(echo "zoom\ntile\nstretch\ncenter\nmaximize" | dmenu -i -p "Fit type: ")
echo "xwallpaper --$fit /home/$USER/pix/wallpaper/$chosen" > /home/$USER/pix/wallpaper/wallpaper.sh
xwallpaper --$fit "/home/$USER/pix/wallpaper/$chosen" && exit 0
