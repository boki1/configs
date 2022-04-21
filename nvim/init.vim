set nocompatible

call plug#begin()
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'sickill/vim-monokai'
Plug 'dracula/vim'
Plug 'mhinz/vim-janah'
Plug 'NLKNguyen/papercolor-theme'
Plug 'cocopon/iceberg.vim'
Plug 'kaicataldo/material.vim'
Plug 'vim-airline/vim-airline'
Plug 'kien/rainbow_parentheses.vim'
Plug 'rebelot/kanagawa.nvim'
Plug 'ajmwagar/vim-deus'
Plug 'phanviet/vim-monokai-pro'
Plug 'sainnhe/everforest'
Plug 'tomasiser/vim-code-dark'
Plug 'plasticboy/vim-markdown'
Plug 'Rykka/riv.vim'
Plug 'baskerville/vim-sxhkdrc'
Plug 'beautify-web/js-beautify'
Plug 'justinmk/vim-syntax-extra'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'NLKNguyen/c-syntax.vim'
Plug 'vim-syntastic/syntastic'
Plug 'vim-scripts/a.vim'
Plug 'semanticart/tag-peek.vim'
Plug 'Shirk/vim-gas'
Plug 'rust-lang/rust.vim'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'pboettch/vim-cmake-syntax'
Plug 'vhdirk/vim-cmake'
Plug 'nvie/vim-flake8'
Plug 'maksimr/vim-jsbeautify'
Plug 'ap/vim-css-color'
Plug 'elzr/vim-json'
Plug 'jiangmiao/auto-pairs'
Plug 'ycm-core/YouCompleteMe'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'kien/ctrlp.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/fzf', { 'dir': '~/packages/fzf', 'do': './install --all' }
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 's1n7ax/nvim-terminal'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'github/copilot.vim'
Plug 'cohama/agit.vim'
Plug 'caenrique/nvim-toggle-terminal'
Plug 'mcchrish/nnn.vim'
Plug 'rhysd/vim-clang-format'
Plug 'mcchrish/nnn.vim'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'
Plug 'yuttie/comfortable-motion.vim'
Plug 'airblade/vim-rooter'
Plug 'dhruvasagar/vim-open-url'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'svermeulen/vim-subversive'
Plug 'doums/darcula'
Plug 'promix17/typer'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'z0mbix/vim-shfmt', { 'for': 'sh' }
call plug#end()

call glaive#Install()
Glaive codefmt plugin[mappings]

let mapleader=","

syntax on
filetype on

colorscheme darcula

set background=dark
set relativenumber
set number
set autoindent
set nohlsearch
set smartindent
set cindent
set noexpandtab
set shiftwidth=4
set tabstop=4
set smarttab
set display+=lastline
set encoding=utf-8
set linebreak
set wrap
set scrolloff=10
set sidescrolloff=5
set so=10
set ruler
set tabpagemax=10
set foldmethod=manual
set listchars=tab:>·,trail:~,extends:>,precedes:<,space:.
set hidden
set modifiable
set mouse=a
set hidden
set path+=**
set autowriteall
set clipboard=unnamedplus

let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
if (has('termguicolors'))
  set termguicolors
endif

au Filetype * set colorcolumn=120

" __  __                _
" |  \/  |__ _ _ __ _ __(_)_ _  __ _ ___
" | |\/| / _` | '_ \ '_ \ | ' \/ _` (_-<
" |_|  |_\__,_| .__/ .__/_|_||_\__, /__/
"             |_|  |_|         |___/

" Navigation
map j gj
map k gk

map H ^
map L $

map <left> 	:bp<CR>
map <right> :bn<CR>

map <leader>gb	:e#<CR>

map ]h :GitGutterNextHunk<CR>
map [h :GitGutterPrevHunk<CR>

nnoremap <silent><C-d> :call comfortable_motion#flick(100) <CR>
nnoremap <silent><C-s> :call comfortable_motion#flick(-100)	<CR>

map <silent><C-f> :FZF <CR>

map <leader>ff :FormatCode<CR>

map <leader>c :ClangFormat<CR>
map <silent>fw :FixWhitespace<CR>

map <silent>gy 	:Goyo<CR>
map <silent>gl 	:Limelight!!<CR>

map <leader>l 	:Tagbar<CR>
map <leader>n 	:NERDTreeToggle<CR>

map <silent>sl 	:set list!<CR>

nmap <leader>s <plug>(SubversiveSubstituteRange)
xmap <leader>s <plug>(SubversiveSubstituteRange)
nmap <leader>ss <plug>(SubversiveSubstituteWordRange)
nmap s <plug>(SubversiveSubstitute)
nmap ss <plug>(SubversiveSubstituteLine)
nmap S <plug>(SubversiveSubstituteToEndOfLine)

map <silent><C-b> 		:CtrlPBufTag<CR>
map <silent><C-x>   :CtrlPTag<CR>
map <silent><C-c> 		:CtrlPBookmarkDir<CR>

map <a-cr> 		:YcmCompleter FixIt					<CR>
map <leader>gd  :YcmCompleter GoToDefinition 	<CR>
map <leader>nr  :YcmCompleter RefactorRename		<CR>
map <leader>dc  :YcmCompleter Doc 				<CR>
map <leader>gi  :YcmCompleter GoToImplementation	<CR>
map <leader>gp  :call tag_peek#ShowTag()<CR>

nnoremap <silent> <C-z> :ToggleTerminal				<Enter>
tnoremap <silent> <C-z> <C-\><C-n>:ToggleTerminal	<Enter>

tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"

nnoremap <leader>ws :ToggleWorkspace<CR>


" Snippets
" iab comm /*<CR><CR>/<Up>

" Abbreviations
cabbrev tn 			NERDTreeToggle
cabbrev tl 			Tagbar
cabbrev pi 			PlugInstall
cabbrev pc 			PlugClean
cabbrev pu 			PlugUpdate
cabbrev vimconfig 	so ~/.config/nvim/init.vim
cabbrev vc 			so ~/.config/nvim/init.vim

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
      \ '<c-t>': 'tab split',
      \ '<c-x>': 'split',
      \ '<c-v>': 'vsplit' }

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
noremap <silent><leader>bg :let &background = ( &background == "dark" ? "light" : "dark" )<CR> <bar> :execute ( g:colors_name == "kanagawa" ? "colorscheme PaperColor" : "colorscheme kanagawa" ) <CR>

" Jumps
function! GotoJump()
  jumps
  let j = input("jump to ")
  if j != ''
    let pattern = '\v\c^\+'
    if j =~ pattern
      let j = substitute(j, pattern, '', 'g')
      execute "normal " . j . "\<c-i>"
    else
      execute "normal " . j . "\<c-o>"
    endif
  endif
endfunction

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

" Autofmt
augroup autoformat_settings
  autocmd FileType c,cpp AutoFormatBuffer clang-format
  autocmd FileType python AutoFormatBuffer yapf
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType sh AutoFormatBuffer shfmt
augroup END

" Autosave folds on leave
au BufWinLeave * mkview
au BufWinEnter * silent loadview
