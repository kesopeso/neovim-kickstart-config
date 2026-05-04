#!/usr/bin/env bash

sudo rm -rf ./neovim /usr/local/bin/nvim /usr/local/share/nvim
git clone https://github.com/neovim/neovim.git
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_INSTALL_PREFIX=/usr/local
sudo make install
cd ..
rm -rf neovim
