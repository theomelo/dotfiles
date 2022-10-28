#!/bin/sh

echo "Installing pre requisites"
sudo apt-get update && sudo apt-get install -y \
  fontconfig \
  silversearcher-ag \
  zsh \
  dconf-cli \
  direnv

echo "Setup Starship"
curl -sS https://starship.rs/install.sh | sh -s -- -y

echo "Add custom fonts"
fc-cache -vf ~/.fonts

