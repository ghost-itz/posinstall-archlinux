#!/bin/bash


(yay)
 
git clone  https://aur.archlinux.org/yay.git

cd yay/

makepkg

sudo pacman -U yay-12.5.0-1-x86_64.pkg.tar.zst -y

yay -Syu -y

yay - S heroic-games-launcher-bin microsofte-edge-stable-bin -y