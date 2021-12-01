" __   ___
" \ \ / (_)_ __  _ _ __
"  \ V /| | '  \| '_/ _|
"   \_/ |_|_|_|_|_| \__|

set nocompatible

call plug#begin()

" Colorschemes
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
Plug 'sickill/vim-monokai'
Plug 'mhinz/vim-janah'
Plug 'NLKNguyen/papercolor-theme'
Plug 'cocopon/iceberg.vim'
Plug 'kaicataldo/material.vim'

" View
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/fzf', { 'dir': '~/packages/fzf', 'do': './install --all' }
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'

" Syntax
Plug 'kien/rainbow_parentheses.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'Rykka/riv.vim'
Plug 'vim-python/python-syntax'
Plug 'pboettch/vim-cmake-syntax'
Plug 'justinmk/vim-syntax-extra'
Plug 'NLKNguyen/c-syntax.vim'
Plug 'vim-syntastic/syntastic'
Plug 'octol/vim-cpp-enhanced-highlight'

" Language support
Plug 'rust-lang/rust.vim'
Plug 'vhdirk/vim-cmake'
Plug 'elzr/vim-json'
Plug 'Shirk/vim-gas'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'

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
Plug 'github/copilot.vim'

" Extensions
Plug 'preservim/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-rooter'
Plug 'cohama/agit.vim'

call plug#end()

let mapleader="\\"

syntax on
filetype on

colorscheme material

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
set foldmethod=syntax
set listchars=tab:>·,trail:~,extends:>,precedes:<,space:.
set hidden
set modifiable
set mouse=a

let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
if (has('termguicolors'))
  set termguicolors
endif

au Filetype * set colorcolumn=120

source ~/.config/nvim/maps.vim
source ~/.config/nvim/conf.vim
