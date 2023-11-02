#!/bin/bash

# Check if the script is running with root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root or with sudo."
  exit 1
fi

# Update the package database and upgrade installed packages
pacman -Syu --noconfirm
# Xorg-minimal
pacman -S xorg-server xorg-xinit xorg-xset xorg-xinput nano lxsession --noconfirm
# Dwm dependencies
pacman -S libx11 libxft libxinerama git lxsession --noconfirm
# Fonts
pacman -S ttf-jetbrains-mono-nerd noto-fonts noto-fonts-cjk noto-fonts-emoji --noconfirm
# Extra-needed-apps
pacman -S micro kitty rofi dunst lxappearance xdg-user-dirs fish thunar gvfs pipewire pipewire-alsa pipewire-pulse wireplumber alsa-utils playerctl htop neofetch exa duf ncdu flameshot viewnior evince --noconfirm
# Nvidia drivers
pacman -S nvidia nvidia-utils nvidia-settings nvtop --noconfirm

# Check if the installation was successful
if [ $? -eq 0 ]; then
  echo "Installation completed successfully."
else
  echo "Installation encountered an error."
fi
