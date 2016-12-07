#!/usr/bin/env /bin/sh

git clone git@github.com:nicholaswyoung/dotfiles.git ~/.config && \
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \
nvim -c "PlugInstall | qall!" ~/.config/nvim/init.vim
