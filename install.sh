#/bin/bash

#show commands as they happen
set -o xtrace

VIMFOLDER=$HOME/.vim

[ ! -d ~/.vim ] && mkdir ~/.vim

#link vimrc
[ ! -f ~/.vimrc ] && ln -s $PWD/vimrc $VIMFOLDER/.vimrc

[ ! -f ~/.vim/plugins.vim ] && ln -s $PWD/plugins.vim $VIMFOLDER/plugins.vim
[ ! -f ~/.vim/statusline.vim ] && ln -s $PWD/statusline.vim $VIMFOLDER/statusline.vim
