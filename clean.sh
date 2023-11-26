#!/bin/bash

# List of desktops to uninstall
desktops=("gnome" "kde" "xfce" "mate" "cinnamon" "lxde" "lxqt" "budgie-desktop")

# Loop through the list
for desktop in "${desktops[@]}"
do
    echo "Removing $desktop and its unused dependencies..."
    sudo pacman -Rns $(pacman -Qdtq) $desktop --noconfirm
done

echo "All specified desktops and their unused dependencies have been removed. Only Hyprland should remain."
