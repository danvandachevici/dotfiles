#/bin/bash

#show commands as they happen
set -o xtrace


# VIM
VIMFOLDER=$HOME/.vim
[ ! -d ~/.vim ] && mkdir ~/.vim
[ ! -f ~/.vimrc ] && ln -s $PWD/vimrc $VIMFOLDER/.vimrc
[ ! -f ~/.vim/plugins.vim ] && ln -s $PWD/plugins.vim $VIMFOLDER/plugins.vim
[ ! -f ~/.vim/statusline.vim ] && ln -s $PWD/statusline.vim $VIMFOLDER/statusline.vim

# BASH
[ ! -f ~/.bashrc ] && ln -s $PWD/bashrc $HOME/.bashrc && source $HOME/.bashrc

# ZSH
[ ! -f ~/.zshrc ] && ln -s $PWD/bashrc $HOME/.zshrc && source $HOME/.zshrc

# TMUX
[ ! -f ~/.tmux.conf ] && ln -s $PWD/tmux.conf $HOME/.tmux.conf
