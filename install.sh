#!/bin/bash!

wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.35.2/install.sh | bash

echo 'You must now close and relaunch your terminal'

source ~/.bashrc
echo 'Once that is complete run the command "nvm install 16.1.0"'

nvm install 16.1.0

