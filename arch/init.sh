#/bin/bash

echo "Installing packages..."

pacman -S $(cat pacmanpackages.txt)