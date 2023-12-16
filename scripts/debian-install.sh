#!/usr/bin/sh
sudo apt-get install clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev libstdc++-12-dev
./docker-deb.sh
./nvim-deb.sh
sudo apt install gh
sudo apt-get install ripgrep
sudo apt-get install tmux
ln -s ~/Dotfiles/gtk.css ~/.config/gtk-3.0/gtk.css
sudo ln -s ~/Dotfiles/dwm.desktop ~/usr/share/xsessions/dwm.desktop
sudo ln -s ~/Dotfiles/scripts/dwm-start.sh /usr/local/bin/dwm-start.sh
gh auth login
