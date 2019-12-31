systemctl enable NetworkManager
pacman -S haveged
systemctl enable haveged
pacman --needed -S zsh
pacman -S lxqt xorg xorg-server xorg-xinit ttf-dejavu ttf-freefont network-manager-applet sddm linux-headers breeze-icons
cp /etc/X11/xinit/xinitrc /home/felipecn/.xinitrc
