#!/bin/sh

# Instalação Ubuntu 18.04+
apt -y install  zsh git \
                python3-pip python3-dev \
                automake cmake make \
                gcc gnome-tweak-tool \
                libtool curl \
                exuberant-ctags \
                ripgrep \
                software-properties-common \
                cntlm
# cHROME 
curl -o- https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /tmp/google-chrome-stable_current_amd64.deb dpkg -i /tmp/google-chrome-stable_current_amd64.deb

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# nvm 
curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | zsh


# neovim 
# make CMAKE_BUILD_TYPE=RelWithDebInfo USE_BUNDLED=OFF
