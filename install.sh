#!/bin/bash

DOTFILES_ROOT=~/dotfiles

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -s $DOTFILES_ROOT/zshrc ~/.zshrc
ln -s $DOTFILES_ROOT/vimrc ~/.vimrc
ln -s ~/dotfiles/zsh/dracula.zsh-theme ~/.oh-my-zsh/themes/dracula.zsh-theme

