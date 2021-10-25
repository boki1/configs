let __use_light_colormode=$LIGHT_VIM

set nocompatible

call plug#begin()

Plug 'nvim-lua/plenary.nvim'

" Colorschemes
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
Plug 'tomasr/molokai'
Plug 'mhinz/vim-janah'

" View
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'

" Syntax
Plug 'kien/rainbow_parentheses.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'bfrg/vim-cpp-modern'
Plug 'Rykka/riv.vim'

" Formatters
Plug 'bronson/vim-trailing-whitespace'
Plug 'rhysd/vim-clang-format'

" Navigation
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/a.vim'
Plug 'yuttie/comfortable-motion.vim'

" Semantics
Plug 'ycm-core/YouCompleteMe'

" Editor
Plug 'preservim/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'

call plug#end()

let mapleader="\<Space>"

syntax on
filetype on

set background=dark
if __use_light_colormode
	set background=light
endif

set relativenumber
set number
set autoindent
set smartindent
set cindent
set noexpandtab
set shiftwidth=8
set tabstop=8
set smarttab
set display+=lastline
set encoding=utf-8
set linebreak
set wrap
set scrolloff=10
set sidescrolloff=5
set ruler
set tabpagemax=10
set foldmethod=syntax
set listchars=tab:>·,trail:~,extends:>,precedes:<,space:.

hi CursorLine ctermbg=yellow ctermfg=black
hi Cursor ctermbg=grey ctermfg=black

au BufRead * normal zR
au Filetype c,c++,rust set colorcolumn=120

" Colorschemes
colorscheme janah
let g:molokai_original = 1
let g:rehash256 = 1
if __use_light_colormode | colorscheme yule-light | endif

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme='gruvbox'

" NerdTree
let g:NERDTreeDirArrowExpandable = ' ▸'
let g:NERDTreeDIrArrowCollapsible = '▾'

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

" Mappings
nnoremap <left> 	:bp			<CR>
nnoremap <right> 	:bn			<CR>

nnoremap <silent>s 	:set list!		<CR>
nnoremap <leader>gy 	:Goyo			<CR>
nnoremap <leader>gl 	:Limelight!!		<CR>
nnoremap <silent>tl 	:TlistToggle		<CR>
nnoremap <silent>tn 	:NERDTreeToggle 	<CR>
nnoremap <leader>f 	:Telescope find_files	<CR>
nnoremap <leader>g 	:Telescope live_grep	<CR>
nnoremap <leader>fw	:FixWhitespace		<CR>

nnoremap ]h 		<Plug>(GitGutterNextHunk)
nnoremap [h 		<Plug>(GitGutterPrevHunk)

nnoremap <silent> <C-d> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-s> :call comfortable_motion#flick(-100)<CR>

" Abbreviations
iab com /*<CR> *<CR>*/<Up>
cabbrev tn NERDTreeToggle
cabbrev tl TlistToggle
