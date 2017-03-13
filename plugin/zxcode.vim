"=============================================================================
" File: vim-zxcode.vim
" Author: zebult
" Created: 2016-10-17
"=============================================================================

scriptencoding utf-8

if exists('g:loaded_vim-zxcode')
    finish
endif
let g:loaded_vim-zxcode = 1

let s:save_cpo = &cpo
set cpo&vim

" open xcode
command! -nargs=* ZXcodeProjectOpen call zxcode#Open_xcode(<f-args>)
command! ZXcodeFileOpen execute ":call zxcode#Open_xcode(expand('%:p'))"
" close xcode
command! -nargs=0 ZXcodeClose call system("osascript -e 'tell application \"Xcode\" to quit'")
" focus xcode
command! -nargs=0 ZXcodeFocus call system("osascript -e 'tell application \"Xcode\" to activate'")

let &cpo = s:save_cpo
unlet s:save_cpo
