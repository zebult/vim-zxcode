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

function! zxcode#open_xcode(...) abort
    let a:count = get(a:, 1)
    " file open
    if filereadable(a:count)
        call system('open -a Xcode > '.expand('%:p'))
        echo "xcode file open. ".expand('%:p')
        return
    endif
    " nest limit
    if a:count == 10
        echo "Not git project."
        return
    endif
    " find git
    let s:search_path = "**/.git"
    for i in range(a:count)
        let s:search_path = "../" . s:search_path
    endfor
    let s:git_path = expand(s:search_path)
    if s:git_path == ""
        call g:Open_xcode(a:count + 1)
        return
    endif
    " find xcode project
    let s:search_path = "**/*.xcworkspace"
    for i in range(a:count)
        let s:search_path = "../" . s:search_path
    endfor
    let s:files = expand(s:search_path)
    if s:files == ""
        echo "Not xcode project."
    else
        echo "xcode project open. > ".expand(s:files)
        call system('open -a Xcode '.expand(s:files))
    endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
