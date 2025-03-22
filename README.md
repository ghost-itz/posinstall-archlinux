POS INSTALL "ARCH LINUX"

#su

vim /etc/sudoers
"#user" 

vim /etc/pacman.conf

#descomentar#
"multilib"

pacman -Syu

vim /etc/default/grub
#descomentar

grub-mkconfig -o /boot/grub/grub.cfg

Espaço de Trabalho apenas na tela principal
