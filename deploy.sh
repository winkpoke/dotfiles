#! /bin/sh

DIR=~/dotfiles
LN="ln -s -b -f" 

${LN} ${DIR}/init.vim ~/.vimrc
mkdir -p ~/.config/nvim
${LN} ${DIR}/init.vim ~/.config/nvim/init.vim
mkdir -p ~/.vim/autoload
cp ${DIR}/pathogen.vim ~/.vim/autoload
cp ${DIR}/plug.vim ~/.vim/autoload

${LN} ${DIR}/tmux/tmux.conf ~/.tmux.conf
${LN} ${DIR}/tmux/.tmux ~/.tmux

${LN} ${DIR}/zshrc ~/.zshrc
${LN} ${DIR}/bashrc ~/.bashrc
${LN} ${DIR}/bash_profile ~/.bash_profile

${LN} ${DIR}/xprofile ~/.xprofile
${LN} ${DIR}/Xmodmap ~/.Xmodmap

${LN} ${DIR}/gitconfig ~/.gitconfig
