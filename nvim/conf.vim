"   ___           __ _
"  / __|___ _ _  / _(_)__ _ ___
" | (__/ _ \ ' \|  _| / _` (_-<
"  \___\___/_||_|_| |_\__, /__/
"                     |___/

" Colorschemes
let g:monokai_original = 1
let g:rehash256 = 1

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme='monokai'

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

