POS INSTALL "ARCH LINUX"

#su

nano /etc/sudoers
"#user" 

nano /etc/pacman.conf

#descomentar#
"multilib"

pacman -Syu

vim /etc/default/grub
#descomentar - "GRUB_DISABLE_OS_PROBER=false"

grub-mkconfig -o /boot/grub/grub.cfg


