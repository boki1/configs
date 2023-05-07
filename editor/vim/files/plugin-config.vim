" Vim-cpp-enhanced-highlight
let g:cpp_function_highlight = 0
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1

" Rustfmt
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
let g:rust_clip_command = 'xclip -selection clipboard'

" Coc
autocmd CursorHold * silent call CocActionAsync('highlight') " Highlight the symbol and its references when holding the cursor
let g:coc_node_path = '/usr/local/bin/node'
let g:coc_global_extensions = ['coc-clangd']
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" Fuzzy finder
map  <C-p> 		:Files		<CR>
nmap <leader>; 	:Buffers	<CR>

" Auto-save
let g:auto_save = 1
let g:auto_save_silent = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]
