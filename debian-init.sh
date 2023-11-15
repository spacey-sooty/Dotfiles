#!/usr/bin/sh

chmod +x scripts/*.sh

# bash conf
rm ~/.bashrc
ln -s ~/Dotfiles/.bashrc ~/.bashrc

# install

# clang
sudo apt-get install clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev libstdc++-12-dev

# rust
curl https://sh.rustup.rs -sSf | sh

# docker
./scripts/docker.sh

# node stuff
./scripts/node.sh

# neovim
./scripts/nvim.sh

# gh cli
sudo apt install gh

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

# tmux conf
ln -s ~/Dotfiles/tmux/.tmux.conf ~/.tmux.conf

# gtk thingy
ln -s ~/Dotfiles/gtk.css ~/.config/gtk-3.0/gtk.css

# final step login with github auth
gh auth login

