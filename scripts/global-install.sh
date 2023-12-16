#!/usr/bin/sh
rm ~/.bashrc
ln -s ~/Dotfiles/.bashrc ~/.bashrc
curl https://sh.rustup.rs -sSf | sh
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.bashrc
nvm install --lts
npm install -g pnpm
npm install -g turbo
ln -s ~/Dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/Dotfiles/.gitconfig ~/.gitconfig
ln -s ~/Dotfiles/nvim ~/.config/nvim
ln -s ~/Dotfiles/inputrc ~/.config/inputrc
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
