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

" Languages
Plug 'dag/vim-fish'
Plug 'bfrg/vim-cpp-modern'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'

" Syntax
Plug 'kien/rainbow_parentheses.vim'
Plug 'jiangmiao/auto-pairs'
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
Plug 'airblade/vim-rooter'

call plug#end()

let mapleader="\<leader>"

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
" Better completion: popup even when there's only one match, do not insert text until
" a selection is made and do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect
set cmdheight=2
set updatetime=300
set timeoutlen=300 " http://stackoverflow.com/questions/2158516/delay-before-o-opens-a-new-line
set splitright
set splitbelow
set mouse=a

hi CursorLine ctermbg=yellow ctermfg=black
hi Cursor ctermbg=grey ctermfg=black

au BufRead * normal zR
au Filetype c,c++,rust set colorcolumn=120

source ~/.config/nvim/maps.vim
source ~/.config/nvim/conf.vim
