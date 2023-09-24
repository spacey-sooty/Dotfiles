#!/usr/bin/sh

# perms
chmod +x `ls scripts/*.sh`

# install
curl https://sh.rustup.rs -sSf | sh
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
tar -xf nvim-linux64.tar.gz
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
source ~/.bashrc
nvm install --lts
npm install -g pnpm
npm install -g turbo
sudo apt-get install ripgrep

# link
ln -s ~/Dotfiles/nvim ~/.config/nvim
ln -s ~/Dotfiles/.gitconfig ~/.gitconfig
ln -s ~/Dotfiles/.bashrc ~/.bashrc

rm nvim-linux64.tar.gz

