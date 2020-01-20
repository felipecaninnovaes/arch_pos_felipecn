systemctl enable NetworkManager;
pacman -S --needed haveged --noconfirm;
systemctl enable haveged;
pacman --needed -S zsh;
sudo pacman --neede -S plasma konsole sshfs kdeconnect htop openssh vlc ksysguard gwenview spectacle plank kvantum-qt5 --noconfirm;
sudo systemctl enable sddm;
