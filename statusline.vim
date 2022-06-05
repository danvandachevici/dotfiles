set laststatus=2
set statusline=
set statusline+=%2*
set statusline+=%{StatuslineMode()}
set statusline+=%1*
set statusline+=\ \ 
"set statusline+=%f
set statusline+=%F
set statusline+=\ \ 
set statusline+=%=
set statusline+=%m
set statusline+=%h
set statusline+=%r
set statusline+=\ 
set statusline+=%3*
"set statusline+=%{b:gitbranch}
set statusline+=%1*
set statusline+=\ 
set statusline+=%4*
"set statusline+=%5*
set statusline+=%1*
set statusline+=|
set statusline+=filetype:\ 
set statusline+=%Y
set statusline+=\ @\ 
set statusline+=%l/%L
set statusline+=-
set statusline+=%c/120

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


"hi User2 ctermbg=lightgreen ctermfg=black guibg=lightgreen guifg=black
"hi User1 ctermbg=black ctermfg=white guibg=black guifg=white
"hi User3 ctermbg=black ctermfg=lightblue guibg=black guifg=lightblue
"hi User4 ctermbg=black ctermfg=lightgreen guibg=black guifg=lightgreen
"hi User5 ctermbg=black ctermfg=magenta guibg=black guifg=magenta

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

"function! StatuslineGitBranch()
"  let l:branchname = GitBranch()
"  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
"endfunction


function! StatuslineGitBranch()
  let b:gitbranch=""
  if &modifiable
    try
      let l:dir=expand('%:p:h')
      let l:gitrevparse = system("git -C ".l:dir." rev-parse --abbrev-ref HEAD")
      if !v:shell_error
        let b:gitbranch="(".substitute(l:gitrevparse, '\n', '', 'g').") "
      endif
    catch
    endtry
  endif
endfunction

augroup GetGitBranch
"  autocmd!
"  autocmd VimEnter,WinEnter,BufEnter * call StatuslineGitBranch()
augroup END
