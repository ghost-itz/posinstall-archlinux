#!/bin/bash

# Update how system of ArchLinux

sudo pacman -Syu -s && yay -Syu -s && flatpak update -y

