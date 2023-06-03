" Disable autocomplete
autocmd Filetype tex let b:coc_enabled = 0
autocmd Filetype text let b:coc_enabled = 0
autocmd Filetype markdown let b:coc_enabled = 0

" Comments
au FileType c,cpp,cc setlocal commentstring=//\ %s
au FileType vim setlocal commentstring=\"\ %s

" Text width
au Filetype gitcommit setlocal spell tw=72 colorcolumn=73
au Filetype tex setlocal spell tw=80 colorcolumn=81
au Filetype text setlocal spell tw=72 colorcolumn=73
au Filetype markdown setlocal spell tw=72 colorcolumn=73
