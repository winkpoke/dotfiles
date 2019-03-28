#! /bin/sh

DIR=~/dotfiles

ln -s ${DIR}/init.vim ~/.vimrc
ln -s ${DIR}/init.vim ~/.config/nvim/init.vim

ln -s ${DIR}/tmux/tmux.conf ~/.tmux.conf
ln -s ${DIR}/tmux/.tmux ~/.tmux

ln -s ${DIR}/zshrc ~/.zshrc
ln -s ${DIR}/bashrc ~/.bashrc

ln -s ${DIR}/xprofile ~/.xprofile
