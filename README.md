# xcode.vim

We'll given the power of vim into xcode.

You can open the xcode from vim.

## installation
```vim
" dein.vim
call dein#add('zebult/xcode.vim')
" neobundle.vim
NeoBundle 'zebult/xcode.vim'
```

## mappings
```vim
nnoremap <silent> <Leader>X :XcodeProjectOpen<CR>
nnoremap <silent> <Leader>x :XcodeFileOpen<CR>
nnoremap <silent> <Leader>e :XcodeFocus<CR>
nnoremap <silent> <Leader>Q :XcodeClose<CR>
```
