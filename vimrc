" Include plugins:
source plugins.vim

set expandtab
set shiftwidth=2
set tabstop=2
"set hidden
"set signcolumn=yes:2
set relativenumber
set number
"set termguicolors
set spell
"set wildmode=longest:full,full
"set list
"set listchars=tab:>' ,trail:°
"set mouse=a
"set scrolloff=8
"set nojoinspaces
"set splitright
set clipboard=unnamed
"set confirm
"set exrc
"set updatetime=300
"set redrawtime=10000
set smartindent

syntax on



" searching
set incsearch
set hlsearch
set ignorecase
set smartcase

" backspace over everything
" set backspace=indent,eol,start


"-------------------------
" Key maps
"-------------------------

let mapleader="\<space>"

nmap <leader>f :Files<cr>

map gf :edit <cfile><cr>

""-----------------------------

" status line
hi User1 ctermbg=gray  ctermfg=black
hi User2 ctermbg=gray  ctermfg=red cterm=bold

set laststatus=2
set statusline=     "reset statusline
set statusline+=%1* "black on gray
set statusline+=%F      "full filename
set statusline+=\ %y    "filetype
set statusline+=\ %h    "help file flag
set statusline+=\ %2*   "white on red
set statusline+=%m      "modified flag
set statusline+=%1* "black on gray
set statusline+=\ %r    "read only flag
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ \ %P  "percent through file

" ------------------------
"  Plugins
" ------------------------
"source ~/.vim/partials/vim-plug.vim
