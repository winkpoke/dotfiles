#! /bin/sh

DIR=~/dotfiles
LN="ln -s -b -f"

LN ${dir}/init.vim ~/.vimrc
LN ${dir}/init.vim ~/.config/nvim/init.vim

LN ${dir}/tmux/tmux.conf ~/.tmux.conf
LN ${dir}/tmux/.tmux ~/.tmux

LN ${dir}/zshrc ~/.zshrc
LN ${dir}/bashrc ~/.bashrc

LN ${DIR}/xprofile ~/.xprofile
LN ${DIR}/Xmodmap ~/.Xmodmap
