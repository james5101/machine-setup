#!/usr/bin/env bash

echo "Starting installs"



if test ! $(which brew); then

    echo "Installing homebrew..."

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

fi

brew update

brew install findutils

PACKAGES=(

   kubernetes-cli

   terraform

   kubernetes-helm

   azure-cli

   bash-completion

)

echo "Installing packages..."

brew install ${PACKAGES[@]}



echo "Cleaning up..."

brew cleanup



echo "Installing cask..."

brew install caskroom/cask/brew-cask



CASKS=(

    visual-studio-code

    google-chrome
    
    slack
    
    virtualbox

)



echo "Installing cask apps..."

brew cask install ${CASKS[@]}

echo "Installs complete"

echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion" >> ~/.bash_profile

