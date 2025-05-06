#!/bin/bash

set -e

# Set the hostname
echo "${archlinux}" > /etc/hostname

pacman -S grub-efi-x86_64 efibootmgr dosfstools mtools wireless_tools \
          noto-fonts noto-fonts-emoji noto-fonts-cjk pipewire-pulse \
          ntfs-3g os-prober ntp xfce4 xfce4-pulseaudio-plugin \
          lightdm lightdm-slick-greeter gnome-keyring chromium \
          networkmanager apparmor network-manager-applet xfce4-weather-plugin \
          
          

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
