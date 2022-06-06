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
set statusline+=%1*
hi User1 ctermbg=lightgray ctermfg=darkgreen guibg=lightgray guifg=darkgreen
hi User2 ctermbg=lightgray ctermfg=black guibg=lightgray guifg=black
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

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" buffers
nnoremap <Leader>l :ls<CR>

" reload vimrc
nnoremap <Leader>r :source ~/.vimrc<cr>

"noremap is not recursive
"map is recursive
" change between buffers
nmap „ :bp
nmap ” :bn

" move line up and down
nnoremap ˚ :m .+1<CR>
nnoremap ˝ :m .-2<CR>

nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
