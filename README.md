## 🚀 Pos Install ArchLinux

Enter ROOT mode

    su

Next enter in SUDO file

    nano /etc/sudoers

Find

`root ALL=(ALL:ALL) ALL`

Add the line below, under the line (ROOT), replacing $USER with your $USERNAME

`$USER ALL=(ALL:ALL) ALL`

Enable repository Multilib, for gaming (steam, Lutris, Heroic Games)
    
    nano /etc/pacman.conf

Uncomment (#), staying this way

`[multilib]`
`Include = /etc/pacman.d/mirrorlist`

Now, update whole system

    pacman -Syu

In case you  have Dualboot

    nano /etc/default/grub

Uncomment (#), usually is in the last line

`GRUB_DISABLE_OS_PROBER=false`

Updating GRUB

    grub-mkconfig -o /boot/grub/grub.cfg

Reboot your system

# For execution files .sh use: sudo sh "filename"

## 🚀 Instalação e execução

    pacman -S
