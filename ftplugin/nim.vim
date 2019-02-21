" Vim filetype plugin file
" Language: Nim
" Author:   Leorize

if exists("b:did_ftplugin")
  finish
endif

let b:did_ftplugin = 1

setlocal comments=:#,s1:#[,e:]#,fb:-
setlocal commentstring=#%s
if !exists('g:nim_fold') || g:nim_fold
  setlocal foldignore=
  setlocal foldmethod=indent
endif
setlocal include=^\\s*\\(from\\|import\\|include\\)
setlocal suffixesadd=.nim

" required by the compiler
setlocal expandtab
" NEP-1
if !exists("g:nim_nep1") || g:nim_nep1 != 0
  setlocal shiftwidth=2 softtabstop=2
endif
