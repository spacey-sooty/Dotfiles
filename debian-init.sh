#!/usr/bin/sh

# install

# rust
curl https://sh.rustup.rs -sSf | sh

# neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
tar -xf nvim-linux64.tar.gz
mv nvim-linux64 ~/nvim-linux64
rm nvim-linux64.tar.gz

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

# vim colorscheme
git clone https://github.com/catppuccin/vim
mkdir ~/.vim
mv vim/colors ~/.vim/colors
rm vim -rf

# link

# neovim conf
ln -s ~/Dotfiles/nvim ~/.config/nvim

# git conf
ln -s ~/Dotfiles/.gitconfig ~/.gitconfig

# bash conf
ln -s ~/Dotfiles/.bashrc ~/.bashrc

# tmux conf
ln -s ~/Dotfiles/tmux/.tmux.conf ~/.tmux.conf

# vim conf
ln -s ~/Dotfiles/vim/.vimrc ~/.vimrc

# final step login with github auth
gh auth login

