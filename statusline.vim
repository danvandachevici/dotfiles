set laststatus=2
set statusline=%1*
set statusline+=\ 
set statusline+=%2*
set statusline+=%{StatuslineMode()}
set statusline+=%1*
set statusline+=\ \ 
set statusline+=%3*
set statusline+=\ %F\ 
set statusline+=%1*
set statusline+=\ \ 
set statusline+=%=
set statusline+=%m
set statusline+=%h
set statusline+=%r
set statusline+=\ 
set statusline+=%3*
"set statusline+=%{Gitbranch()}
" Name of the current branch (needs fugitive.vim)
set statusline+=\ %{FugitiveStatusline()}
set statusline+=%1*
set statusline+=\ 
set statusline+=%4*
set statusline+=%5*
set statusline+=%1*

set statusline+=|
"
" [filetype] @ xx%
set statusline+=%y
set statusline+=\ @
set statusline+=\ %p%%\ \ 
" current buffer
set statusline+=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"hi StatusLine ctermbg=cyan ctermfg=white

"hi User1 ctermbg=blue ctermfg=white guibg=blue guifg=white
"hi User2 ctermbg=red ctermfg=white guibg=red guifg=white
hi User1 ctermbg=cyan ctermfg=white guibg=cyan guifg=white
hi User2 ctermbg=lightgreen ctermfg=black guibg=lightgreen guifg=black
hi User3 ctermbg=lightblue ctermfg=white guibg=lightblue guifg=white
hi User4 ctermbg=cyan ctermfg=lightgreen guibg=cyan guifg=lightgreen
hi User5 ctermbg=cyan ctermfg=magenta guibg=cyan guifg=magenta

function! StatuslineMode()
  let l:mode=mode()
  if l:mode==#"n"
    return "NORMAL"
  elseif l:mode==?"v"
    return "VISUAL"
  elseif l:mode==#"i"
    return "INSERT"
  elseif l:mode==#"R"
    return "REPLACE"
  elseif l:mode==?"s"
    return "SELECT"
  elseif l:mode==#"t"
    return "TERMINAL"
  elseif l:mode==#"c"
    return "COMMAND"
  elseif l:mode==#"!"
    return "SHELL"
  endif
endfunction
