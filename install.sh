#!/usr/bin/env /bin/sh

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \
nvim -c "PlugInstall | qall!" ~/.config/nvim/init.vim
