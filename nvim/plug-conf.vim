" ┏━┓╻  ╻ ╻┏━╸╻┏┓╻   ┏━╸┏━┓┏┓╻┏━╸╻┏━╸
" ┣━┛┃  ┃ ┃┃╺┓┃┃┗┫   ┃  ┃ ┃┃┗┫┣╸ ┃┃╺┓
" ╹  ┗━╸┗━┛┗━┛╹╹ ╹   ┗━╸┗━┛╹ ╹╹  ╹┗━┛

" Colorschemes
let g:monokai_original = 1
let g:rehash256 = 1

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme='gruvbox'

" NerdTree
let g:NERDTreeDirArrowExpandable = '↘'
let g:NERDTreeDirArrowCollapsible = '↓'

" Goyo and Limelight
let g:limelight_conceal_ctermfg = 240
let g:goyo_width = 120

" Syntax Highlighting
let g:cpp_function_highlight = 0
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1

" Comfortable motion
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

" Rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Material colorscheme
let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'

" Terminal
let g:auto_start_insert=1
let g:open_in_insert_mode=1

" Commenter
let g:NERDCommentEmptyLines = 1
let g:NERDAltDelims_java = 1
let g:NERDSpaceDelims = 1
let g:NERDCreateDefaultMappings = 1
let g:NERDDefaultAlign = 'left'
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

" CtrlP
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'] " Ignore files in .gitignore

" nnn
nnoremap <leader>n :NnnPicker %:p:h<CR>
let g:nnn#action = {
      \ '<C-t>': 'tab split',
      \ '<C-x>': 'split',
      \ '<C-v>': 'vsplit' }

" Typer
let g:typer_speed = 4

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Workspaces
let g:workspace_autocreate = 0

" Colorscheme toggler
" map <silent><leader>bg :let &background = ( &background == "dark" ? "light" : "dark" )<cr> <bar> :execute ( g:colors_name == "kanagawa" |  ? "set background=light | colorscheme PaperColor" : "set background=dark | colorscheme kanagawa" ) <cr>

nmap <leader>j :call GotoJump()<CR>
nnoremap <C-n> :NnnPicker<CR>
let g:nnn#action = {
      \ '<c-t>': 'tab split',
      \ '<c-s>': 'split',
      \ '<c-v>': 'vsplit' }
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && &filetype ==# 'nnn' | quit! | endif
autocmd BufEnter * if winnr('$') == 1 && &filetype ==# 'nnn' | quit! | endif
let g:nnn#command = 'nnn -d'

" Rustfmt
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
let g:rust_clip_command = 'xclip -selection clipboard'

" Toggle-term
let g:toggleterm_terminal_mapping = '<C-t>'

" Undotree
nmap <Leader>ut :UndotreeToggle<Enter>

" Store undotree persistently
" if has("persistent_undo")
   let target_path = expand('~/.undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
" endif

" Coc
autocmd CursorHold * silent call CocActionAsync('highlight') " Highlight the symbol and its references when holding the cursor

" Colorscheme switcher
let g:colorscheme_switcher_exclude_builtins = 1
let g:colorscheme_switcher_define_mappings = 1

" Vim-rooter
let g:rooter_patterns = ['.git', 'Makefile', 'CMakeLists.txt', 'build/env.sh']

" Fuzzy finder
map <C-p> :Files<Enter>
nmap <leader>; :Buffers<Enter>

" Cmp

" lua << END
" local cmp = require'cmp'
" local lspconfig = require'lspconfig'
" cmp.setup({
"   mapping = {
"     -- Tab immediately completes. C-n/C-p to select.
"     ['<Tab>'] = cmp.mapping.confirm({ select = true })
"   },
" })
" EOF
