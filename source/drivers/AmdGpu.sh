sudo echo "[multilib]" >>/etc/pacman.conf
sudo echo "Include = /etc/pacman.d/mirrorlist" >>/etc/pacman.conf
sudo pacman --needed -Sy xf86-video-amdgpu lib32-mesa xorg-server vulkan-radeon lib32-vulkan-radeon mesa lib32-mesa-libgl mesa-libgl xorg xorg-server linux-firmware lib32-libva-mesa-driver mesa-vdpau libva-mesa-driver vulkan-icd-loader lib32-vulkan-icd-loader --noconfirm

