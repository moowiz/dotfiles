#!/bin/bash

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
curl -L https://raw.github.com/tonyseek/oh-my-zsh-seeker-theme/master/install.sh | sh

ln -sf $HOME/.vim/.vimrc $HOME/.vimrc
ln -sf $HOME/.vim/.zshrc $HOME/.zshrc
vim -c "BundleInstall"
bundle/YouCompleteMe/install.sh --clang-completer

sudo pip install virtualenvwrapper
brew install ctags
