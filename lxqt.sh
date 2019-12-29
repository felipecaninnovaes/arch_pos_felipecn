grub-install --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
systemctl enable NetworkManager
pacman -S haveged
systemctl enable haveged
pacman -S zsh
pacman -S lxqt xorg xorg-server xorg-xinit ttf-dejavu ttf-freefont network-manager-applet sddm linux-headers breeze-icons
cp /etc/X11/xinit/xinitrc ~/.xinitrc
useradd -m -g users -G wheel felipecn
cp /etc/X11/xinit/xinitrc /home/felipecn/.xinitrc
