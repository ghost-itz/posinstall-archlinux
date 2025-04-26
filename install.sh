#!/bin/bash

set -e

pacstrap -i /mnt base base-devel linux-lts linux-firmware nano linux-lts-headers
genfstab -U -p /mnt >> /mnt/etc/fstab

arch-chroot /mnt
arch-chroot /mnt /bin/bash <<EOF

# Set the locale
echo LANG=pt_BR.UTF-8 >> /etc/locale.gen
locale-gen
echo LANG=pt_BR.UTF-8 > /etc/locale.conf
export LANG=pt_BR.UTF-8

# Set the hostname
echo "${archlinux}" > /etc/hostname

# Create a new user and set the password
useradd -m -G wheel -s /bin/bash ${ghost}
echo "${ghost}:${mecanican}" | chpasswd

pacman -S grub-efi-x86 efibootmgr dosfstools mtools wireless_tools \
          noto-fonts noto-fonts-emoji noto-fonts-cjk pipewire-pulse \
          ntfs-3g os-prober ntp gnome-shell gnome-terminal gnome-control-center \
          gdm gnome-keyring chromium power-profiles-daemon nautilus\
          networkmanager git apparmor

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=ArchLinux

grub-mkconfig -o /boot/grub/grub.cfg

mkinitcpio -p linux-lts

systemctl enable gdm

exit

# Unmount filesystems
umount -R /mnt

reboot
