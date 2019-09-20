#!/bin/sh

INSTALL_DIR=$(pwd)

# Instalação Ubuntu 18.04+
apt -y install  zsh git \
                python3-pip python3-dev \
                automake cmake make \
                gcc gnome-tweak-tool \
                libtool libtool-bin curl \
                exuberant-ctags \
                ripgrep \
                software-properties-common \
                cntlm \
                chrome-gnome-shell \
                pkg-config
# Chrome 
curl -o- https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /tmp/google-chrome-stable_current_amd64.deb dpkg -i /tmp/google-chrome-stable_current_amd64.deb

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# nvm 
curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | zsh
zsh -c "nvm install stable"
npm install -g typescript @angular/cli tslint neovim yarn


# neovim 
pip3 install neovim sass

git clone --depth=1 https://github.com/neovim/neovim /tmp/neovim
cd /tmp/neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
make install
cd $INSTALL_DIR
ln -sf $INSTALL_DIR/vim ~/.config/nvim
update-alternatives --install /usr/local/bin/vim vim /usr/local/bin/nvim 60
chown ~/ -R $USER
nvim +PlugInstall +qall!
nvim +CocInstall coc-typescript coc-css coc-html coc-tslint +qall!

# VSCODE
curl -o- https://az764295.vo.msecnd.net/insider/6b2daa3388c0692fad64a32040812c27414b1385/code-insiders_1.34.0-1555997095_amd64.deb > /tmp/code-insiders.deb 
dpkg -i /tmp/code-insiders.deb

# Remove hotkey for emoji
gsettings set org.freedesktop.ibus.panel.emoji hotkey \[\]

nvm install v10

npm install -g @angular/cli typescript 
