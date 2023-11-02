#!/bin/bash

# Check if the script is running with root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root or with sudo."
  exit 1
fi

# Update the package database and upgrade installed packages
pacman -Syu --noconfirm

# Install htop, neofetch, nnn, and xorg-server with noconfirm to avoid interactive prompts
pacman -S nvidia nvidia-utils nvidia-settings nvtop --noconfirm

# Check if the installation was successful
if [ $? -eq 0 ]; then
  echo "Installation completed successfully."
else
  echo "Installation encountered an error."
fi
