sudo pacman --needed -S efibootmgr grub  os-prober --noconfirm
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=arch_grub_fcn && mkinitcpio -p linux && grub-mkconfig -o /boot/grub/grub.cfg && mkinitcpio -p linux
