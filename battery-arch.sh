
sudo pacman -S tlp tlp-rdw smartmontools libva-utils intel-media-driver
sudo tlp start
sudo systemctl enable tlp
sudo vim /etc/tlp.conf
# uncomment DEVICE with bluetooh only
vainfo # check for errors, if no errors, all good

