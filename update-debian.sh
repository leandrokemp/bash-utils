#!/bin/bash

# Update system packages
echo "Updating the system packages"
sudo apt update && sudo apt upgrade -y

# Full system upgrade
sudo apt full-upgrade -y

# Remove unused packages
echo "Removing unused packages"
sudo apt autoremove -y && sudo apt autoclean -y

# Update flatpak
echo "Updating flatpak"
flatpak update -y

# Uninstall unused packages
echo "Uninstalling unused flatpaks"
flatpak uninstall --unused -y

exit 0
