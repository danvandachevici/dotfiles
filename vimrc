" Include plugins:
source ~/.vim/plugins.vim

" Setup style
set expandtab
set shiftwidth=2
set tabstop=2
"set hidden
"set signcolumn=yes:2
" Aspect
"set relativenumber
set number
"set termguicolors

" Text
"set spell
"set wildmode=longest:full,full
"set list
" Display chars on tabs and trailing spaces -> 
set list lcs=tab:»·,trail:·
"set mouse=a
"set scrolloff=8
"set nojoinspaces
"set splitright
" use system clipboard
set clipboard=unnamed
"set confirm
"set exrc
"set updatetime=300
"set redrawtime=10000
set smartindent

set magic

syntax on

" Shows your command in the bottom right corner, on normal mode
set showcmd
" By default, the <Leader> is toggled for 1s. Below I move it to 5s.
set timeoutlen=5000

" Searching
set incsearch
set hlsearch
set ignorecase
set smartcase

" Resizing splits
"nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
"nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>


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
source ~/.vim/statusline.vim

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


