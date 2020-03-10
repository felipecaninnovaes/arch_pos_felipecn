sudo echo "[multilib]" >>/etc/pacman.conf
sudo echo "Include = /etc/pacman.d/mirrorlist" >>/etc/pacman.conf
sudo pacman -Sy xf86-video-amdgpu lib32-mesa xorg-server amdvlk mesa lib32-mesa-libgl mesa-libgl xorg xorg-server linux-firmware lib32-libva-mesa-driver mesa-vdpau libva-mesa-driver --noconfirm

