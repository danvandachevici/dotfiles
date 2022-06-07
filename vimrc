set nocompatible

" Include plugins:
source ~/.vim/plugins.vim

" Setup style
"set expandtab
set shiftwidth=2
set tabstop=2
" Aspect
set number

" Text
"set wildmode=longest:full,full
set wildmode=list:longest,list:full

" Display chars on tabs and trailing spaces -> 
set list lcs=tab:»·,trail:·

" enable mouse actions
set mouse=a
" how many spaces to keep below and under cursor
set scrolloff=8

" use system clipboard
set clipboard=unnamed

" after how many miliseconds of inactivity to write the swapfile (for backup)
set updatetime=1000

"set redrawtime=10000
set smartindent
"set magic

" not sure which one of these two does the job
syntax on
syntax enable


"highlight Comment cterm=underline ctermbg=Blue ctermfg=White

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
nnoremap <silent> <Leader>+ :exe "resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winwidth(0) * 2/3)<CR>


" backspace over everything
" set backspace=indent,eol,start


" remap leader key. Default is \\, this is just to always remember the default
let mapleader="\\"


map gf :edit <cfile><cr>

""-----------------------------

" status line
source ~/.vim/statusline.vim

" tab line
source ~/.vim/tabline.vim

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" buffers
nnoremap <Leader>l :ls<CR>

" reload vimrc
nnoremap <Leader>r :source ~/.vimrc<cr>

" TABS
nmap „ :tabp<cr>
nmap ” :tabn<cr>
nmap ¨ :tabm -<cr>
nmap ± :tabm +<cr>

nmap tn :tab n 


" move line up and down
" TODO

nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>

nmap diff :tab !git difftool -- %<cr>
