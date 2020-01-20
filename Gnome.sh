systemctl enable NetworkManager;
pacman -S haveged;
systemctl enable haveged;
pacman --needed -S zsh;
sudo pacman --needed -S haveged networkmanager tilix gnome-shell gdm gnome-photos gnome-disk-utility gnome-system-monitor mousetweaks gnome-font-viewer gedit gnome-menus gnome-photos gnome-dictionary gnome-logs nautilus gnome-control-center gnome-tweaks gnome-backgrounds adwaita-icon-theme zsh vlc git go ttf-dejavu ttf-freefont --noconfirm;
sudo systemctl enable gdm;
sudo systemctl enable NetworkManager;
sudo systemctl enable haveged;
