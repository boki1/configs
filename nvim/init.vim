let __use_light_colormode=$LIGHT_VIM

set nocompatible

call plug#begin()

" Colorschemes
Plug 'vim-airline/vim-airline-themes'
Plug 'jacoborus/tender.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'

" View
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'Rykka/riv.vim'

" Syntax
Plug 'jiangmiao/auto-pairs'
Plug 'bfrg/vim-cpp-modern'
Plug 'rhysd/vim-clang-format'

" Editor
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'yegappan/taglist'

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

colorscheme gruvbox 
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

" Mappings
nnoremap <left> 	:bp		<CR>
nnoremap <right> 	:bn		<CR>
nnoremap <silent>s 	:set list!	<CR>
nnoremap <silent><C-s>	10k
nnoremap <silent><C-d>	10j
nnoremap <leader>gy 	:Goyo		<CR>
nnoremap <leader>gl 	:Limelight!!	<CR>
nnoremap <silent>tl 	:TlistToggle	<CR>
nnoremap <silent>tn 	:NERDTreeToggle <CR>

" Abbreviations
iab com /*<CR> *<CR>*/<Up> 
cabbrev tn NERDTreeToggle
cabbrev tl TlistToggle
