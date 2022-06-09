let g:branch_symbol = '⎇ '

" always show the status line
set laststatus=2
set statusline=
set statusline+=%2*
set statusline+=\ \ %{StatuslineMode()}\ \ 
set statusline+=%4*
set statusline+=\ \ %{g:branch_symbol}\ %{StatuslineGitBranch()}\ \ 
" Show numstat
"set statusline+=\ \ %{GetGitDiffSummary()}\ \ 
set statusline+=%3*
" File name & path (f for just file name)
set statusline+=\ \ %F\ \ 
set statusline+=%1*


" Left-Right separator
set statusline+=%=

" Modified flag [+]
set statusline+=%m
" Readonly flag
set statusline+=%R\ 

" Value of character under cursor (dec & hex)
set statusline+=dec(%b)\ hex(%B)\ 
set statusline+=%a

set statusline+=%5*
set statusline+=|

" [filetype] @ xx%
set statusline+=%y
set statusline+=\ @
set statusline+=\ %p%%\ 
" current buffer
set statusline+=CurBuf:%n\ \ 

" filename
set statusline+=%f\ \ 

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"hi StatusLine ctermbg=cyan ctermfg=white

hi User1 ctermbg=cyan ctermfg=black guibg=cyan guifg=black
hi User2 ctermbg=lightgreen ctermfg=black guibg=lightgreen guifg=black
hi User3 ctermbg=lightblue ctermfg=lightyellow guibg=lightblue guifg=lightyellow
hi User4 ctermbg=black ctermfg=lightyellow guibg=black guifg=lightyellow
hi User5 ctermbg=lightyellow ctermfg=black guibg=lightyellow guifg=black

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

function! StatuslineGitBranch()
  if exists("g:git_branch")
    return g:git_branch
  else
    return ''
  endif
endfunction

function! GetGitBranch()
  let l:is_git_dir = system('echo -n $(git rev-parse --is-inside-work-tree)')
  let g:git_branch = l:is_git_dir == 'true' ? system('bash -c "echo -n $(git rev-parse --abbrev-ref HEAD)"') : ''
endfunction

function! GetGitDiffSummary()
"  let l:file_additions = "+".system("git diff --numstat -- % | sed '/^$/d' | awk -F '\t' '{printf($1)}'")
"  let l:file_subtractions = "-".system("git diff --numstat -- % | sed '/^$/d' | awk -F '\t' '{printf($2)}'")
"  let l:adds = "+".system("git diff --numstat -- % | awk '{printf($1)}'")
"  let l:subs = "-".system("git diff --numstat -- % | awk '{printf($2)}'")
"  return l:adds."/".l:subs
endfunction

autocmd BufEnter * call GetGitBranch()

