filetype plugin indent on

au Filetype * set colorcolumn=120

" Help filetype detection
autocmd BufRead *.plot set filetype=gnuplot
autocmd BufRead *.md set filetype=markdown
autocmd BufRead *.lds set filetype=ld
autocmd BufRead *.tex set filetype=tex
autocmd BufRead *.trm set filetype=c

augroup FiletypeDetect
  	" Git commit message
	autocmd Filetype gitcommit setlocal spell tw=72 colorcolumn=73
  	au Filetype rust set colorcolumn=100

	" Disable COC for text files
	autocmd Filetype tex let b:coc_enabled = 0
	autocmd Filetype text let b:coc_enabled = 0
	autocmd Filetype markdown let b:coc_enabled = 0
augroup END


