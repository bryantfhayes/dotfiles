#!/bin/bash

DOTFILES_ROOT=~/dotfiles

# Install zsh
sudo apt-get install zsh

# Install Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Install fd (instead of find)
wget https://github.com/sharkdp/fd/releases/download/v7.3.0/fd-musl_7.3.0_amd64.deb
sudo dpkg -i fd-musl_7.3.0_amd64.deb

# Install ripgrep
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/11.0.2/ripgrep_11.0.2_amd64.deb
sudo dpkg -i ripgrep_11.0.2_amd64.deb

# Install dircolors
cp dircolors $HOME/.dircolors

# Install Flake8 Support
mkdir -p ~/.config
cp flake8 ~/.config/flake8
mkdir -p ~/.vim/pack/flake8/start/
cd ~/.vim/pack/flake8/start/
git clone https://github.com/nvie/vim-flake8.git
sudo apt-get install flake8

# Install hyperfine
wget https://github.com/sharkdp/hyperfine/releases/download/v1.9.0/hyperfine_1.9.0_amd64.deb
sudo dpkg -i hyperfine_1.9.0_amd64.deb

# Install Asciinema + svg-term-cli
sudo apt-get install asciinema
sudo npm install -g svg-term-cli

ln -s $DOTFILES_ROOT/zshrc ~/.zshrc
ln -s $DOTFILES_ROOT/vimrc ~/.vimrc
ln -s $DOTFILES_ROOT/zsh/dracula.zsh-theme ~/.oh-my-zsh/themes/dracula.zsh-theme

