#!/bin/bash

set -e

# Set the hostname
echo "${archlinux}" > /etc/hostname

pacman -S grub-efi-x86_64 efibootmgr dosfstools mtools wireless_tools \
          noto-fonts noto-fonts-emoji noto-fonts-cjk pipewire-pulse \
          ntfs-3g os-prober ntp gnome-shell gnome-terminal gnome-control-center \
          gdm gnome-keyring chromium power-profiles-daemon nautilus\
          networkmanager apparmor

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=ArchLinux

grub-mkconfig -o /boot/grub/grub.cfg

mkinitcpio -p linux-lts

systemctl enable gdm
systemctl enable NetworkManager
systemctl enable apparmor
systemctl enable power-profiles-daemon
systemctl enable ntpd

exit

# Unmount filesystems
umount -R /mnt

reboot
