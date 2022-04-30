call plug#begin()
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

Plug 'xolox/vim-colorscheme-switcher'

" Line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Text formatting
Plug 'bronson/vim-trailing-whitespace'

" Text syntax
Plug 'kien/rainbow_parentheses.vim'
Plug 'baskerville/vim-sxhkdrc' " Highlighting for sxhkd
Plug 'plasticboy/vim-markdown'
Plug 'godlygeek/tabular'

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
Plug 'junegunn/fzf', { 'dir': '~/packages/fzf', 'do': { -> fzf#install() } }
Plug 'airblade/vim-rooter'

" Code navigation
Plug 'majutsushi/tagbar'

" Niceties
Plug 'glts/vim-radical' " Convert number representations
Plug 'dhruvasagar/vim-open-url' " Open links and search in web browser
Plug 'mbbill/undotree' " Look into different changes
Plug 'yuttie/comfortable-motion.vim' " Pretty jumps

" Utility integrations
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' " Fuzzy finder
Plug 'tpope/vim-fugitive' " Git
Plug 'mcchrish/nnn.vim' " File manager
Plug 'akinsho/toggleterm.nvim' " Terminal

" View
Plug 'junegunn/goyo.vim' " Presentation mode
Plug 'junegunn/limelight.vim' " Presentation mode

" Vim extensions
Plug 'glts/vim-magnum' " Integer library for vim
Plug 'tpope/vim-repeat' " Extends . operator
Plug 'tpope/vim-speeddating' " Extends <C-a>/<C-x> for dates
Plug 'tpope/vim-surround' " Surround object
Plug 'xolox/vim-misc' " Miscellaneous auto-load Vim scripts
Plug 'terryma/vim-expand-region' " Select increasingly larger regions of text

" Spellchecks
Plug 'psliwka/vim-dirtytalk', { 'do': ':DirtytalkUpdate' } " Programming dictionary


" Other

" Only because nvim-cmp _requires_ snippets
Plug 'hrsh7th/cmp-vsnip', {'branch': 'main'}
Plug 'hrsh7th/vim-vsnip'



" Plug 'tomasiser/vim-code-dark' Plug 'Rykka/riv.vim' Plug 'justinmk/vim-syntax-extra' Plug 'NLKNguyen/c-syntax.vim' Plug 'vim-syntastic/syntastic' Plug 'vim-scripts/a.vim' Plug 'semanticart/tag-peek.vim' Plug 'rust-lang/rust.vim' Plug 'vhdirk/vim-cmake' Plug 'nvie/vim-flake8' Plug 'maksimr/vim-jsbeautify' Plug 'ap/vim-css-color' Plug 'elzr/vim-json' Plug 'jiangmiao/auto-pairs' Plug 'ycm-core/YouCompleteMe' Plug 'tpope/vim-commentary' Plug 'nvim-lua/plenary.nvim' Plug 'nvim-telescope/telescope.nvim' Plug 'junegunn/fzf', { 'dir': '~/packages/fzf', 'do': './install --all' } Plug 's1n7ax/nvim-terminal' Plug 'xuyuanp/nerdtree-git-plugin'
" Plug 'airblade/vim-gitgutter'
" Plug 'github/copilot.vim'
" Plug 'cohama/agit.vim'
" Plug 'caenrique/nvim-toggle-terminal'
" Plug 'mcchrish/nnn.vim'
" Plug 'mhinz/vim-startify'
" Plug 'preservim/nerdtree'
" Plug 'mbbill/undotree'
" Plug 'airblade/vim-rooter'
" Plug 'nvim-treesitter/nvim-treesitter'
" Plug 'svermeulen/vim-subversive'
" Plug 'doums/darcula'
" Plug 'promix17/typer'
" Plug 'google/vim-maktaba'
" Plug 'google/vim-codefmt'
" Plug 'google/vim-glaive'
" Plug 'z0mbix/vim-shfmt', { 'for': 'sh' }
call plug#end()
