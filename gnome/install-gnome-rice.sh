#!/bin/bash
echo ":) Ricing GNOME..."

# Install essential packages
sudo pacman -S gnome-tweaks gnome-browser-connector git curl
yay -S extension-manager

# Install WhiteSur theme
echo "Installing WhiteSur theme..."
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git /tmp/whitesur
cd /tmp/whitesur && ./install.sh -l -c Light -t all -N glassy

# Install WhiteSur icons
echo "Installing icons..."
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git /tmp/whitesur-icons
cd /tmp/whitesur-icons && ./install.sh

# Install fonts
echo "Installing fonts..."
sudo pacman -S ttf-liberation ttf-jetbrains-mono ttf-roboto

# Apply settings
echo "⚙️ Applying configurations..."
gsettings set org.gnome.desktop.interface gtk-theme "WhiteSur-Light"
gsettings set org.gnome.desktop.interface icon-theme "WhiteSur"
gsettings set org.gnome.shell.extensions.user-theme name "WhiteSur-Light"
gsettings set org.gnome.desktop.interface accent-color 'teal'

echo "Base setup completed!"
echo "Restart GNOME Shell: Alt+F2, type 'r', press Enter"
echo "Then configure extensions manually in Extension Manager"
