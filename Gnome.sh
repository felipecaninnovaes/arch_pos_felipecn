systemctl enable NetworkManager;
pacman --needed -S zsh;
sudo pacman --needed -S gdm networkmanager tilix gnome-shell gnome-disk-utility gnome-system-monitor mousetweaks gnome-font-viewer gedit gnome-menus gnome-photos gnome-dictionary gnome-logs nautilus gnome-control-center gnome-tweaks gnome-backgrounds adwaita-icon-theme zsh git go ttf-dejavu ttf-freefont --noconfirm;
sudo systemctl enable gdm;
sudo systemctl enable NetworkManager;
