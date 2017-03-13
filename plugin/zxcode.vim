"=============================================================================
" File: vim-zxcode.vim
" Author: zebult
" Created: 2016-10-17
"=============================================================================

scriptencoding utf-8

if exists('g:loaded_zxcode')
    finish
endif
let g:loaded_zxcode = 1

let s:save_cpo = &cpo
set cpo&vim

command! ZXcodeProjectOpen call zxcode#open_xcode()
command! ZXcodeFileOpen    call system('open -a Xcode '.expand('%:p'))
command! ZXcodeRun         call system(globpath(&runtimepath, 'autoload/' . 'xcode-build-run' . ''))
command! ZXcodeBuild       call system(globpath(&runtimepath, 'autoload/' . 'xcode-build' . ''))
command! ZXcodeFocus       call system("osascript -e 'tell application \"Xcode\" to activate'")
command! ZXcodeClose       call system("osascript -e 'tell application \"Xcode\" to quit'")

let &cpo = s:save_cpo
unlet s:save_cpo
