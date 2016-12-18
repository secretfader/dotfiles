#!/usr/bin/env /bin/sh

curl -sfLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \
nvim -c "PlugInstall | qall | silent!" ~/.config/nvim/init.vim
