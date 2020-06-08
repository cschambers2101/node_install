#!/bin/bash!

# Installs nodejs from the Nodesource PPA

# add signing key
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

# set the required version
VERSION=node_14.x

# get distro version
DISTRO="$(lsb_release -s -c)"

# add ppa to source list
echo "deb https://deb.nodesource.com/$VERSION $DISTRO main" | sudo tee /etc/apt/sources.list.d/nodesource.list
echo "deb-src https://deb.nodesource.com/$VERSION $DISTRO main" | sudo tee -a /etc/apt/sources.list.d/nodesource.list

# install nodejs from ppa
sudo apt-get update
sudo apt-get install nodejs


