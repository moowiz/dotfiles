#!/bin/bash

ln -sf $HOME/.vim/.vimrc $HOME/.vimrc
ln -sf $HOME/.vim/.zshrc $HOME/.zshrc
vim -c "BundleInstall"
bundle/YouCompleteMe/install.sh --clang-completer

