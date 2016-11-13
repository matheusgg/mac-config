#!/bin/bash
echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing bash-completion package..."
brew install bash-completion

echo "Installing scala package..."
brew install scala

echo "Installing maven package..."
brew install maven

echo "Installing git package..."
brew install git

echo "Installing java package..."
brew cask install java

echo "Installing wget package..."
brew install wget

echo "Downloading user files..."
git clone https://github.com/matheusgg/mac-config.git /tmp/mac-config

mv /tmp/mac-config/vim ~/.vim
mv /tmp/mac-config/.vimrc ~/.vimrc
mv /tmp/mac-config/.gitconfig ~/.gitconfig
mv /tmp/mac-config/.gitignore_global ~/.gitignore_global
mv /tmp/mac-config/.zshrc ~/.zshrc

mkdir /Development
mv /tmp/mac-config/idea /Development/idea

rm -rf /tmp/mac-config