# vim-zxcode.vim

We'll given the power of vim into xcode.

![zxcode](https://raw.github.com/wiki/zebult/vim-zxcode/image/zxcode.png)

You can xcode function from vim.

## installation
```vim
" dein.vim
call dein#add('zebult/xcode.vim')
" neobundle.vim
NeoBundle 'zebult/xcode.vim'
```

## mappings
```vim
nnoremap <silent> <Leader>R :ZXcodeRun<CR>
nnoremap <silent> <Leader>b :ZXcodeBuild<CR>
nnoremap <silent> <Leader>X :ZXcodeProjectOpen<CR>
nnoremap <silent> <Leader>x :ZXcodeFileOpen<CR>
nnoremap <silent> <Leader>Q :ZXcodeClose<CR>
nnoremap <silent> <Leader>e :ZXcodeFocus<CR>
```
