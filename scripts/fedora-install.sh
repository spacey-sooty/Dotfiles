#!/usr/bin/sh
sudo ln -s ~/Dotfiles/dnf.conf /etc/dnf/dnf.conf
sudo dnf update -y
sudo dnf install gcc -y
sudo dnf install dnf-plugins-core -y
sudo dnf install neovim -y
sudo dnf install tmux -y
sudo dnf install ripgrep -y
sudo dnf install ufw -y
sudo dnf install gh -y
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo -y
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install discord -y
sudo dnf install lpf-spotify-client -y
lpf update -y
sudo dnf install steam -y
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo -y
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc -y
sudo dnf install brave-browser -y
sudo dnf remove firefox -y
sudo dnf remove libreoffice* -y
gh auth login
