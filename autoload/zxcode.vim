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

"------------------------
" setting
"------------------------
if !exists("g:xcode_application_name")
  let g:xcode_application_name = 'Xcode'
endif

"------------------------
" function
"------------------------
function! zxcode#open_xcode() abort
  cd `git rev-parse --show-toplevel`
  if filereadable(".git/config") == 0
    echo 'ERROR: can not use non git project'
    return
  endif
  let filelist = glob("**/*.xcworkspace")
  let splitted = split(filelist, "\n")
  let last_file = ''
  for x_file in splitted
    let last_file = x_file
  endfor
  echo 'Xcode project open. '.last_file
  call system('open -a Xcode '.expand(last_file))
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
