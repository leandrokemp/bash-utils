#!/bin/bash

# Update mirrors
echo "Updating mirrorlist"
sudo reflector -c NZ -c AU -l 10 -p https --save /etc/pacman.d/mirrorlist

# Update system packages
echo "Updating system packages"
yay -Syu --noconfirm

# Remove orphan packages
ORFHAN_PKGS=$(pacman -Qqdt)
if [ ! -z $ORFHAN_PKGS ]; then
   echo "Removing orphan packages"
   sudo pacman -Rsn $ORFHAN_PKGS --noconfirm
else
   echo "No orphan packages to remove"
fi

# Update flatpak
echo "Updating flatpak"
flatpak update -y

# Uninstall unused packages
echo "Uninstalling unused flatpaks"
flatpak uninstall --unused -y

exit 0
