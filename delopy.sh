#! /bin/sh

DIR=~/dotfiles

ln -s ${DIR}/init.vim ~/.vimrc
ln -s ${DIR}/init.vim ~/.config/nvim/init.vim

ln -s ${DIR}/tmux/tmux.conf ~/.tmux.conf
ln -s ${DIR}/tmux/.tmux ~/.tmux
