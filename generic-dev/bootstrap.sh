#!/bin/bash

# core packages
sudo apt-get update
sudo locale-gen en_AU.UTF-8
sudo apt-get install -y git
sudo apt-get install -y subversion
sudo apt-get install -y vim
sudo apt-get install -y tmux
sudo apt-get install -y curl
sudo apt-get install -y wget
sudo apt-get install -y tree
sudo apt-get install -y ntp
sudo apt-get install -y unzip
sudo apt-get install -y zip
sudo apt-get install -y default-jre

# set timezone
echo "Australia/Sydney" | sudo tee /etc/timezone
#echo "Europe/London" | sudo tee /etc/timezone
sudo dpkg-reconfigure --frontend noninteractive tzdata

# create projects directory
mkdir ~/projects

# dot files
git clone https://github.com/jonbartlett/dotfiles.git ~/projects/dotfiles
cd ~/projects/dotfiles
~/projects/dotfiles/link.sh
cat ~/projects/dotfiles/.bashrc_ubuntu >> ~/.bashrc

# fancy bash prompt
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1

# rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

# Vundle - Launch vim and run :PluginInstall
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# vim +PluginInstall +qall


