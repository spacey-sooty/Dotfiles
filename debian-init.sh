#!/usr/bin/sh

chmod +x scripts/*.sh

# install

# rust
curl https://sh.rustup.rs -sSf | sh

# docker
./scripts/docker.sh

# neovim
# build deps
sudo apt-get install ninja-build gettext cmake unzip curl
cd ~
git clone https://github.com/neovim/neovim.git
cd neovim
make
sudo make install

# node, pnpm, turbo
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
source ~/.bashrc
nvm install --lts
npm install -g pnpm
npm install -g turbo

# gh cli
sudo apt install github-cli

# ripgrep
sudo apt-get install ripgrep

# tmux
sudo apt-get install tmux

# clone some required things

# tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# link

# inputrc
ln -s ~/Dotfiles/inputrc ~/.config/inputrc

# neovim conf
ln -s ~/Dotfiles/nvim ~/.config/nvim

# git conf
ln -s ~/Dotfiles/.gitconfig ~/.gitconfig

# bash conf
ln -s ~/Dotfiles/.bashrc ~/.bashrc

# tmux conf
ln -s ~/Dotfiles/tmux/.tmux.conf ~/.tmux.conf

# final step login with github auth
gh auth login

