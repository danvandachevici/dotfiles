" To setup Vundle vim package manager: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" git-related actions
Plugin 'tpope/vim-fugitive'

" syntactic checker
Plugin 'vim-syntastic/syntastic'

" displays inline git diff
Plugin 'airblade/vim-gitgutter'

" fzf
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" commenting out all types of files
Plugin 'tpope/vim-commentary'

" emmet like HTML building
Plugin 'mattn/emmet-vim'

" changing starting tag fixes the end tag too
Plugin 'AndrewRadev/tagalong.vim'

" mark display
Plugin 'kshenoy/vim-signature'

" terraform
Plugin 'hashivim/vim-terraform'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
