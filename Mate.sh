systemctl enable NetworkManager;
pacman --needed -S haveged --noconfirm;
systemctl enable haveged;
pacman --needed -S zsh --noconfirm;
sudo pacman --neede -S mate-extra mate lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings zsh vlc git go ttf-dejavu ttf-freefont --noconfirm;
sudo systemctl enable lightdm;