call plug#begin('~/.config/nvim/plugged')
" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'sickill/vim-monokai'
Plug 'dracula/vim'
Plug 'mhinz/vim-janah'
Plug 'NLKNguyen/papercolor-theme'
Plug 'cocopon/iceberg.vim'
Plug 'kaicataldo/material.vim'
Plug 'rebelot/kanagawa.nvim'
Plug 'ajmwagar/vim-deus'
Plug 'phanviet/vim-monokai-pro'
Plug 'sainnhe/everforest'
Plug 'doums/darcula'
Plug 'tomasiser/vim-code-dark'

" Line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Text formatting
Plug 'bronson/vim-trailing-whitespace'

" Text syntax
" Plug 'kien/rainbow_parentheses.vim'
Plug 'baskerville/vim-sxhkdrc' " Highlighting for sxhkd
Plug 'plasticboy/vim-markdown'
Plug 'godlygeek/tabular'
" Plug 'jbgutierrez/vim-better-comments' " Highlight TODOs and FIXMEs

" Language formatting
Plug 'rhysd/vim-clang-format'

" Language syntax
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Shirk/vim-gas'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'pboettch/vim-cmake-syntax'
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'rust-lang/rust.vim'
Plug 'dag/vim-fish'
Plug 'z0mbix/vim-shfmt', { 'for': 'sh' }

" Language servers
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'hrsh7th/cmp-nvim-lsp', {'branch': 'main'}
Plug 'hrsh7th/cmp-buffer', {'branch': 'main'}
Plug 'hrsh7th/cmp-path', {'branch': 'main'}
Plug 'hrsh7th/nvim-cmp', {'branch': 'main'}
Plug 'ray-x/lsp_signature.nvim'

" Search
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-rooter'

" Code navigation
Plug 'majutsushi/tagbar'

" Niceties
Plug 'glts/vim-radical' " Convert number representations
Plug 'dhruvasagar/vim-open-url' " Open links and search in web browser
Plug 'mbbill/undotree' " Look into different changes

" Utility integrations
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'tpope/vim-fugitive' " Git
Plug 'mcchrish/nnn.vim' " File manager
Plug 'akinsho/toggleterm.nvim' " Terminal
Plug 'cohama/agit.vim' " Agit

" View
Plug 'junegunn/goyo.vim' " Presentation mode
Plug 'junegunn/limelight.vim' " Presentation mode
Plug 'ap/vim-css-color' " Colors of hex values

" Vim extensions
Plug 'glts/vim-magnum' " Integer library for vim
Plug 'tpope/vim-repeat' " Extends . operator
Plug 'tpope/vim-speeddating' " Extends <C-a>/<C-x> for dates
Plug 'tpope/vim-surround' " Surround object
Plug 'xolox/vim-misc' " Miscellaneous auto-load Vim scripts
Plug 'terryma/vim-expand-region' " Select increasingly larger regions of text

" Spellchecks
Plug 'kamykn/spelunker.vim'

" Other

" Kind of cool :)
Plug 'promix17/typer'

" Only because nvim-cmp _requires_ snippets
Plug 'hrsh7th/cmp-vsnip', {'branch': 'main'}
Plug 'hrsh7th/vim-vsnip'

call plug#end()
