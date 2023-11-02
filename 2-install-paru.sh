# Clone the Paru Git repository
git clone https://aur.archlinux.org/paru.git

# Change to the paru directory
cd paru

# Build and install Paru using makepkg
makepkg -si

# Clean up the build files (optional)
cd ..
rm -rf paru

# Paru is now installed, you can use it to manage AUR packages
