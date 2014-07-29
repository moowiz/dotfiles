#!/bin/bash

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

ln -sf $HOME/.vim/.vimrc $HOME/.vimrc
ln -sf $HOME/.vim/.zshrc $HOME/.zshrc
vim -c "BundleInstall"
bundle/YouCompleteMe/install.sh --clang-completer

sudo pip install virtualenvwrapper
brew install ctags
