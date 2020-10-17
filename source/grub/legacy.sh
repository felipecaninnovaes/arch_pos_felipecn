#-> Driver Install
Disc=$(whiptail --title "Driver Install" --radiolist \
    "Qual seu disco ?" 15 60 6 \
    "/dev/sda" "Particao SDA" ON \
    "/dev/sdb" "Particao SDB" OFF \
    "/dev/sdc" "Particao SDC" OFF \
    "/dev/sdd" "Particao SDD" OFF \
    "/dev/sde" "Particao SDE" OFF \
    "/dev/sdf" "Particao SDF" OFF 3>&1 1>&2 2>&3)

exitstatus=$?
if [ $exitstatus = 0 ]; then
     sudo pacman --needed -S grub  os-prober --noconfirm
     sudo grub-install --target=i386-pc $Disc;sudo grub-mkconfig -o /boot/grub/grub.cfg ;sudo mkinitcpio -p linux
else
    echo ""
fi










# sudo pacman --needed -S grub  os-prober --noconfirm
# grub-install --target=i386-pc /dev/sdX && mkinitcpio -p linux

# grub-mkconfig -o /boot/grub/grub.cfg && mkinitcpio -p linux


# other disk windows boot
# Then edit /etc/grub.d/40_custom, and at the end of the file add:

# "menuentry "Windows 10" --class windows --class os {
#    insmod ntfs
#    search --no-floppy --set=root --fs-uuid $your_uuid_here$
#    ntldr /bootmgr
# }"
