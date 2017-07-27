#!/usr/bin/env bash

# Get possible updates for Linux Package Installer
# And install them with any updated dependencies
sudo apt-get update && sudo apt-get dist-upgrade

# Install Apache Sever for localhosting
sudo apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

# Version Control
sudo apt-get install git --yes

# Terminal Editor
sudo apt-get install vim --yes