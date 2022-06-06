#/bin/bash

#show commands as they happen
set -o xtrace

CURPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# VIM
VIMFOLDER=$HOME/.vim
[ ! -d ~/.vim ] && mkdir ~/.vim
[ ! -f ~/.vimrc ] && ln -s $CURPATH/vimrc $VIMFOLDER/.vimrc
[ ! -f ~/.vim/plugins.vim ] && ln -s $CURPATH/plugins.vim $VIMFOLDER/plugins.vim
[ ! -f ~/.vim/statusline.vim ] && ln -s $CURPATH/statusline.vim $VIMFOLDER/statusline.vim
[ ! -f ~/.vim/tabline.vim ] && ln -s $CURPATH/tabline.vim $VIMFOLDER/tabline.vim

# BASH
[ ! -f ~/.bashrc ] && ln -s $CURPATH/bashrc $HOME/.bashrc && source $HOME/.bashrc

# ZSH

[ ! -f ~/.aliases ] && ln -s $CURPATH/aliases $HOME/.aliases
[ ! -f ~/.zshrc ] && ln -s $CURPATH/zshrc $HOME/.zshrc && source $HOME/.zshrc

# TMUX
[ ! -f ~/.tmux.conf ] && ln -s $CURPATH/tmux.conf $HOME/.tmux.conf
