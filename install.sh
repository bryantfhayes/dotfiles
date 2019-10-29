#!/bin/bash

DOTFILES_ROOT=~/dotfiles

# Install zsh
sudo apt-get install zsh

# Install Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -s $DOTFILES_ROOT/zshrc ~/.zshrc
ln -s $DOTFILES_ROOT/vimrc ~/.vimrc
ln -s $DOTFILES_ROOT/zsh/dracula.zsh-theme ~/.oh-my-zsh/themes/dracula.zsh-theme

