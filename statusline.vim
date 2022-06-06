set laststatus=2
set statusline=
set statusline+=%2*
set statusline+=\ \ %{StatuslineMode()}\ \ 
set statusline+=%4*
set statusline+=\ \ %{StatuslineGitBranch()}\ \ 
set statusline+=%3*
set statusline+=%{GetGitDiffSummary()}
set statusline+=\ \ %F\ \ 
set statusline+=%1*
set statusline+=\ \ 
set statusline+=%=
set statusline+=%m
set statusline+=%h
set statusline+=%r
set statusline+=\ 
set statusline+=%2*
" Name of the current branch (needs fugitive.vim)
" set statusline+=\ %{FugitiveStatusline()}\ 
set statusline+=
set statusline+=%1*
set statusline+=\ 
set statusline+=%1*

set statusline+=%5*
set statusline+=|
"
" [filetype] @ xx%
set statusline+=%y
set statusline+=\ @
set statusline+=\ %p%%\ 
" current buffer
set statusline+=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

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

"function! GetGitDiffSummary()
"  let l:file_diff = system('bash -c "git log --numstat --pretty=\"%H\" HEAD~1..HEAD | awk \'NF==3 {plus+=$1; minus+=$2} END {printf(\"+%d, -%d\n\", plus, minus)}"');
"  return l:file_diff
"endfunction

autocmd BufEnter * call GetGitBranch()


