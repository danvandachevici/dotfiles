#/bin/bash

#show commands as they happen
set -o xtrace

CURPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# VIM
VIMFOLDER=$HOME/.vim
[ ! -d ~/.vim ] && mkdir ~/.vim
[ ! -f ~/.vimrc ] && ln -s $CURPATH/vim/vimrc $HOME/.vimrc

[ ! -f ~/.vim/plugins.vim ] && ln -s $CURPATH/vim/plugins.vim $VIMFOLDER/plugins.vim
[ ! -f ~/.vim/statusline.vim ] && ln -s $CURPATH/vim/statusline.vim $VIMFOLDER/statusline.vim
[ ! -f ~/.vim/tabline.vim ] && ln -s $CURPATH/vim/tabline.vim $VIMFOLDER/tabline.vim
[ ! -f ~/.vim/syntastic.vim ] && ln -s $CURPATH/vim/syntastic.vim $VIMFOLDER/syntastic.vim
[ ! -f ~/.vim/comments.vim ] && ln -s $CURPATH/vim/comments.vim $VIMFOLDER/comments.vim
[ ! -f ~/.vim/fzf.vim ] && ln -s $CURPATH/vim/fzf.vim $VIMFOLDER/fzf.vim
[ ! -d ~/.vim/bundle ] && mkdir ~/.vim/bundle
[ ! -d ~/.vim/bundle/Vundle.vim ] && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# BASH
[ ! -f ~/.bashrc ] && ln -s $CURPATH/bashrc $HOME/.bashrc && source $HOME/.bashrc

# ZSH
# ensure zsh is installed
zsh --version 
if [ $? -ne 0 ] && [ -f /etc/debian_version ]; then
    sudo apt install zsh
fi
# install oh my zsh
[ ! -d ~/.oh-my-zsh ] && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
[ ! -f ~/.aliases ] && ln -s $CURPATH/aliases $HOME/.aliases
[ ! -f ~/.zshrc ] && ln -s $CURPATH/zshrc $HOME/.zshrc && source $HOME/.zshrc

# TMUX
[ ! -f ~/.tmux.conf ] && ln -s $CURPATH/tmux.conf $HOME/.tmux.conf
