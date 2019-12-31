systemctl enable NetworkManager
pacman -S haveged
systemctl enable haveged
pacman --needed -S zsh
sudo pacman --neede -S mate-extra mate lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings zsh vlc git go ttf-dejavu ttf-freefont;
sudo systemctl enable lightdm;