systemctl enable NetworkManager;
pacman --needed -S haveged --noconfirm;
systemctl enable haveged;
pacman --needed -S zsh;
pacman --needed -S lxqt xorg xorg-server xorg-xinit ttf-dejavu ttf-freefont network-manager-applet sddm linux-headers breeze-icons --noconfirm;
cp /etc/X11/xinit/xinitrc /home/felipecn/.xinitrc;
