"=============================================================================
" File: vim-zxcode.vim
" Author: zebult
" Created: 2016-10-17
"=============================================================================

scriptencoding utf-8

if !exists('g:loaded_zxcode')
  finish
endif
let g:loaded_zxcode = 1

let s:save_cpo = &cpo
set cpo&vim

function! zxcode#open_xcode() abort
  cd `git rev-parse --show-toplevel`
  if filereadable(".git/config") == 0
    echo 'ERROR: can not use non git project'
    return
  endif
  let filelist = glob("**/*.xcworkspace")
  let splitted = split(filelist, "\n")
  call system('open -a Xcode '.expand(splitted))
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
