sudo pacman -S --needed git base-devel --noconfirm;
git clone https://aur.archlinux.org/yay.git;
cd yay;
makepkg -si;

yay -Syyu pantheon-session-git pantheon-default-settings-git gnome-settings-daemon-elementary gnome-settings-daemon-ubuntu pantheon-print-git pantheon-polkit-agent-git elementary-icon-theme lightdm-pantheon-greeter ttf-opensans ttf-raleway ttf-dejavu ttf-droid gnu-free-fonts ttf-liberation pantheon-files pantheon-terminal pantheon-code pantheon-calculator pantheon-music pantheon-videos pantheon-calendar-git pantheon-mail-git pantheon-screenshot eidete-bzr pantheon-photos pantheon-camera-git simple-scan switchboard --noconfirm;