#!/bin/bash
# +------------------------------------------+
# |Useless but funny, made this .sh by claude|
# +------------------------------------------+
echo "Preparing perfect r/unixporn screenshot..."

# Clean desktop
gsettings set org.gnome.shell.extensions.desktop-icons show-home false
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false

# Open essential apps for screenshot
gnome-terminal &
sleep 2
nautilus &
sleep 1

echo "Apps ready! Take screenshot in 3 seconds..."
sleep 3

# Take screenshot
mkdir -p ~/Pictures/Screenshots  
scrot ~/Pictures/Screenshots/rice-$(date +%Y%m%d-%H%M%S).png -s

echo "Screenshot saved in ~/Pictures/Screenshots/"
