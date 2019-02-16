#!/usr/bin/env bash

echo "Starting bootstrapping"



if test ! $(which brew); then

    echo "Installing homebrew..."

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

fi

brew update

brew install findutils

PACKAGES=(

   kubernetes-cli

   terraform

)

echo "Installing packages..."

brew install ${PACKAGES[@]}



echo "Cleaning up..."

brew cleanup



echo "Installing cask..."

brew install caskroom/cask/brew-cask



CASKS=(

    visual-studio-code

    firefox

)



echo "Installing cask apps..."

brew cask install ${CASKS[@]}

echo "Bootstrapping complete"
