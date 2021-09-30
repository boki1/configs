set nocompatible
filetype off
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

" Formatters
Plug 'jiangmiao/auto-pairs'
Plug 'rhysd/vim-clang-format'

" Editor
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'

call plug#end()

set relativenumber
set number
syntax on

set background=light
colorscheme gruvbox
let g:airline_theme='gruvbox'

let mapleader="\<Space>"

:set listchars=tab:>·,trail:~,extends:>,precedes:<,space:.
nnoremap <silent>s :set list!<CR>

nnoremap <silent><C-a> 10k<CR>
nnoremap <silent><C-d> 10j<CR>

au Filetype c,c++,rust set colorcolumn=120
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
syntax enable
set ruler
set tabpagemax=10

set cursorline
hi CursorLine ctermbg=yellow ctermfg=black
hi Cursor ctermbg=grey ctermfg=black

set foldmethod=syntax
au BufRead * normal zR

" Airline
let g:airline#extensions#tabline#enabled = 1 " Enable smarter tab line
let g:airline#extensions#tabline#left_sep = ' ' " Tab separator
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" Clang Formatter
let g:clang_format#code_style='chromium'
let g:clang_format#extra_args='-style=~/.config/clang-format/.clang-format'

nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>

" NerdTree
autocmd vimenter * NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-r> :NERDTreeRefreshRoot<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = ' ▸'
let g:NERDTreeDIrArrowCollapsible = '▾'
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
endfunction
call NERDTreeHighlightFile('c', 'green', 'none', 'green', '#587042')
call NERDTreeHighlightFile('cpp', 'green', 'none', 'purple', '#587042')
call NERDTreeHighlightFile('h', 'blue', 'none', 'blue', '#513dad')

nnoremap <leader>gy :Goyo<CR>
nnoremap <leader>gl :Limelight!!<CR>
let g:limelight_conceal_ctermfg = 240
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
