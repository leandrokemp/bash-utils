#!/bin/bash

# Update system packages
echo "Updating the system packages"
sudo apt update && sudo apt upgrade -y

# Remove unused packages
echo "Removing unused packages"
sudo apt autoremove && sudo apt autoclean

# Update flatpak
echo "Updating flatpak"
flatpak update -y

# Uninstall unused packages
echo "Uninstalling unused flatpaks"
flatpak uninstall --unused -y

exit 0
