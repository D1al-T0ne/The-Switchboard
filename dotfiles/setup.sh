#!/bin/bash

# Need for other tools and require interaction
apt-get install -y \
default-jdk \
dnsutils \
findutils \
npm

# Finish Environment Setup
mv /dotfiles/.vimrc ~/
mv /dotflis/.basrch ~/ and source ~/.bashrc
