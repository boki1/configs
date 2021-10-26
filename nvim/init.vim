" __   ___
" \ \ / (_)_ __  _ _ __
"  \ V /| | '  \| '_/ _|
"   \_/ |_|_|_|_|_| \__|

set nocompatible

call plug#begin()

Plug 'nvim-lua/plenary.nvim'

" Colorschemes
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
Plug 'sickill/vim-monokai'
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
Plug 'nvim-treesitter/nvim-treesitter'

" Editor
Plug 'preservim/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'

call plug#end()

let mapleader="\<Alt>"

syntax on
filetype on

colorscheme monokai

set background=dark
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
set so=10
set ruler
set tabpagemax=10
set foldmethod=syntax
set listchars=tab:>·,trail:~,extends:>,precedes:<,space:.

hi CursorLine ctermbg=yellow ctermfg=black
hi Cursor ctermbg=grey ctermfg=black

au BufRead * normal zR
au Filetype c,c++,rust set colorcolumn=120

source ~/.config/nvim/maps.vim
source ~/.config/nvim/conf.vim
