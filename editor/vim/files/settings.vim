set relativenumber
set number
set autoindent
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
set foldmethod=manual
set listchars=tab:>·,trail:~,extends:>,precedes:<,space:.
set hidden
set modifiable
set mouse=a
set path+=**
set autowriteall

set termguicolors

set splitright
set splitbelow

set cmdheight=2
set shortmess+=c
set completeopt=menuone,noinsert,noselect
set signcolumn=yes

set printfont=:h10
set printencoding=utf-8
set printoptions=paper:letter

set autoindent
set timeoutlen=300
set encoding=utf-8
set scrolloff=2

" set noshowmode
" set hidden
" set nowrap
" set nojoinspaces

" set splitright
" set splitbelow

" set wildmenu
" set wildmode=longest:list,full
" set wildignore=.hg,.svn,*~,*.png,*.jpg,*.gif,*.settings,Thumbs.db,*.min.js,*.swp,publish/*,intermediate/*,*.o,*.hi,Zend,vendor

set incsearch
set ignorecase
set smartcase
" set gdefault

if executable('rg')
	set grepprg=rg\ --no-heading\ --vimgrep
	set grepformat=%f:%l:%c:%m
endif

set spelllang=en

