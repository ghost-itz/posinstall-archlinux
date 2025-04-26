#!/bin/bash

echo LANG=pt_BR.UTF-8 > /etc/locale.conf
export LANG=pt_BR.UTF-8

pacman -S grub-efi-x86 efibootmgr dosfstools mtools wireless_tools \
          noto-fonts noto-fonts-emoji noto-fonts-cjk pipewire-pulse \
          ntfs-3g os-prober ntp gnome-shell gnome-terminal gnome-control-center \
          gdm gnome-keyring chromium power-profiles-daemon nautilus\
          networkmanager git apparmor

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=ArchLinux

grub-mkconfig -o /boot/grub/grub.cfg

mkinitcpio -p linux-lts
