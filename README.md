## 🚀 Pos Install ArchLinux

Entrar modo ROOT

    su

    nano /etc/sudoers

`root ALL=(ALL:ALL) ALL`

Adicionar a linha abaixo, substituindo $USER pelo seu usuário

`$USER ALL=(ALL:ALL) ALL`

Adicionar repositório Multilib, para jogos (steam, Lutris, Heroic Games)
    
    nano /etc/pacman.conf

Descomentar (#) 
`[multilib]`
`Include = /etc/pacman.d/mirrorlist`

Atualização completa do Sistema

    pacman -Syu

Dualboot, para aparecer no GRUB a entrada do Windows
    
    nano /etc/default/grub

Descomentar (#), está na última linha do arquivo

`GRUB_DISABLE_OS_PROBER=false`

Atualizar o GRUB

    grub-mkconfig -o /boot/grub/grub.cfg

## 🚀 Instalação e execução

    pacman -S
