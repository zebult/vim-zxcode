"=============================================================================
" File: xcode.vim
" Author: zebult
" Created: 2016-10-17
"=============================================================================

scriptencoding utf-8

if exists('g:loaded_xcode')
    finish
endif
let g:loaded_xcode = 1

let s:save_cpo = &cpo
set cpo&vim

" open xcode
command! -nargs=* XcodeProjectOpen call xcode#Open_xcode(<f-args>)
command! XcodeFileOpen execute ":call xcode#Open_xcode(expand('%:p'))"
" close xcode
command! -nargs=0 XcodeClose call system("osascript -e 'tell application \"Xcode\" to quit'")
" focus xcode
command! -nargs=0 XcodeFocus call system("osascript -e 'tell application \"Xcode\" to activate'")

let &cpo = s:save_cpo
unlet s:save_cpo
