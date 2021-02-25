set nocompatible
filetype off
call plug#begin()

" Powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fancy colors & useful visuals
Plug 'machakann/vim-highlightedyank'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" Source code browsing
Plug 'yegappan/taglist'

" File Tree
Plug 'preservim/nerdtree'

" Comments
Plug 'preservim/nerdcommenter'

" Semantics
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

" Syntax
Plug 'rust-lang/rust.vim'
Plug 'stevearc/vim-arduino'
Plug 'rust-lang/rust.vim'
Plug 'tjdevries/lsp_extensions.nvim'
Plug 'nvim-lua/completion-nvim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'nvim-lua/diagnostic-nvim'

Plug 'jiangmiao/auto-pairs'

" Colorthemes
Plug 'hzchirs/vim-material'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'chriskempson/base16-vim'
Plug 'jacoborus/tender.vim'
Plug 'NLKNguyen/papercolor-theme'

" Formatting

Plug 'rhysd/vim-clang-format'
Plug 'godlygeek/tabular'

" Notetaking
Plug 'junegunn/vim-journal'
Plug 'junegunn/goyo.vim'

call plug#end()

set relativenumber
set number
set shell=/bin/zsh

let mapleader="\<Space>"

" Quick-operations
nmap <C-w> :w<CR>
nmap <C-q> :wq<CR>
nmap <C-S-q> :q!<CR>

nnoremap <silent><C-a> 10k<CR>
nnoremap <silent><C-d> 10j<CR>

nnoremap <silent><C-,> "+y<CR>
vnoremap <silent><C-,> "+y<CR>
nnoremap <silent><C-.> "+p<CR>
vnoremap <silent><C-.> "+p<CR>
nnoremap <silent><C-;> "+x<CR>
vnoremap <silent><C-;> "+x<CR>

inoremap <silent><C-a> 10k<CR>
inoremap <silent><C-d> 10j<CR>

au Filetype c,c++,rust set colorcolumn=100
au Filetype python set colorcolumn=80

set mouse=a

" :␠,set listchars=tab:--->,nbsp:.
set list!
if has('gui_running')
    set listchars=tab:▶\ ,trail:·,extends:\#,nbsp:.
else
    set listchars=tab:▶\.,trail:.,extends:\#,nbsp:.
endif

:nnoremap <leader>l :set invlist<cr>
set list listchars=tab:❘⠀,trail:·,extends:»,precedes:«,nbsp:×
set list

set autoindent
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

syntax enable

set ruler
set tabpagemax=10
set cursorline
set spell

"
" Material Theme
" 'dark' | 'palenight' | 'oceanic' | 'light' (needs `set background=light`)
"
set termguicolors
" let g:material_terminal_italics = 1
" set background=light
" let g:material_style='light'
" colorscheme vim-material

"
" OneHalf theme
"
" syntax on
colorscheme onehalfdark
set background=dark

" Base-16
" let base16colorspace=256

" Papercolor
" set t_Co=256
" set background=dark
" colorscheme PaperColor

" Tender
" let g:airline_theme = 'tender'

 " if (has("termguicolors"))
 "     set termguicolors
 " endif
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
 " syntax enable

 " colorscheme tender
 "
 "
 " colorscheme PaperColor
 " set background=dark

" Airline
"
let g:airline#extensions#tabline#enabled = 1 " Enable smarter tab line
let g:airline#extensions#tabline#left_sep = ' ' " Tab separator
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" Yank highlighter
let g:highlightedyank_highlight_duration = 100
highlight HighlightedyankRegion cterm=reverse gui=reverse

"
" Clang Formatter
" 
let g:clang_format#code_style='gnu'
autocmd FileType c,cpp ClangFormatAutoEnable
" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>

autocmd filetype c nnoremap<F4> :!gcc % -g -o %:r <CR>
autocmd filetype c nnoremap<F5> :!gcc % -g -o %:r && ./%:r <CR>

autocmd filetype cpp nnoremap<F4> :!g++ % -ggdb -o %:r <CR>
autocmd filetype cpp nnoremap<F5> :!g++ % -ggdb -o %:r && ./%:r <CR>

autocmd filetype c,cpp nnoremap<leader><m> :!make all<CR>

nnoremap <F5> :SCCompileRunAF -g -Wall -Wextra -std=c++2a<cr>

"
" Rust
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
let g:rust_clip_command = 'xclip -selection clipboard'

"
" END Clang Formatter
"
" Python
"
nnoremap<F4> <Esc>:w<CR>:! clear; python %<CR>
nnoremap<F5> <Esc>:w<CR>:! clear; python -i %<CR>

" Rust Formatter
let g:rustfmt_autosave = 1

autocmd filetype rs nnoremap<F4> :!cargo build<CR>
autocmd filetype rs nnoremap<F5> :!cargo test<CR>

" Tabularize
" nmap <lead> :w<CR>

" No arrow keys --- force yourself to use the home row
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>

" Left and right can switch buffers
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>

nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>

" Search results centered please
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" Nerd commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" map ct <Plug>NERDCommenterToggle('n', 'Toggle')<Cr>

"
" Coc.nvim
" 

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

"
" END Coc.nvim 
"

"
" NerdTree
" 
autocmd vimenter * NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-r> :NERDTreeRefreshRoot<CR>
nnoremap <C-f> :NERDTreeFocus<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = ' ▸'
let g:NERDTreeDIrArrowCollapsible = '▾'

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('c', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('cpp', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('ino', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('h', 'yellow', 'none', 'yellow', '#151516')
call NERDTreeHighlightFile('rs', 'green', 'none', 'yellow', '#800080') 
" #800080 is purple

"
" Vim-Arduino
"
nnoremap <buffer> <leader>am :ArduinoVerify<CR>
nnoremap <buffer> <leader>au :ArduinoUpload<CR>
nnoremap <buffer> <leader>ad :ArduinoUploadAndSerial<CR>
nnoremap <buffer> <leader>ab :ArduinoChooseBoard<CR>
nnoremap <buffer> <leader>ap :ArduinoChooseProgrammer<CR>
nnoremap <buffer> <leader>ar :ArduinoChoossPort<CR>
nnoremap <buffer> <leader>ai :ArduinoInfo

function! MyStatusLine()
	let port = arduino#GetPort()
	let line = '%f [' . g:arduino_board . '] [' . g:arduino_programmer . ']'
	if !empty(port)
		let line = line . '(' . port . ':' . g:arduino_serial_baud . ')'
	endif
	return line
endfunction

autocmd BufNewFile,BufRead *.ino g:airline_section_x='%{MyStatusLine()}'
let g:airline_theme='material'


"
" vim-plug
nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pu :PlugUninstall<CR>

"
" vim-journal
nnoremap <leader>sj :set filetype=journal<CR>

syntax enable
filetype plugin indent on
" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect

" Avoid showing extra messages when using completion
set shortmess+=c

" Goyo - markdown

nnoremap <leader>gy :Goyo<CR>

" Python mode 

let g:pymode = 1
let g:pymode_indent = 1
let g:pymode_motion = 1
let g:pymode_lint = 1
let g:pymode_lint_on_fly = 1
let g:pymode_lint_message = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']
let g:pymode_rope = 1
let g:pymode_doc = 1

noremap <silent> <Leader>ac :exe AddColumn()<CR>
function! AddColumn()
  exe "norm \<C-u>"
  let @z=&so
  set noscb so=0
  bo vs
  exe "norm \<PageDown>"
  setl scrollbind
  wincmd p
  setl scrollbind
  let &so=@z
endfunction

highlight ExtraWhitespace ctermfg=grey guibg=red
augroup WhitespaceMatch
  " Remove ALL autocommands for the WhitespaceMatch group.
  autocmd!
  autocmd BufWinEnter * let w:whitespace_match_number =
        \ matchadd('ExtraWhitespace', '\s\+$')
  autocmd InsertEnter * call s:ToggleWhitespaceMatch('i')
  autocmd InsertLeave * call s:ToggleWhitespaceMatch('n')
augroup END
function! s:ToggleWhitespaceMatch(mode)
  let pattern = (a:mode == 'i') ? '\s\+\%#\@<!$' : '\s\+$'
  if exists('w:whitespace_match_number')
    call matchdelete(w:whitespace_match_number)
    call matchadd('ExtraWhitespace', pattern, 10, w:whitespace_match_number)
  else
    " Something went wrong, try to be graceful.
    let w:whitespace_match_number =  matchadd('ExtraWhitespace', pattern)
  endif
endfunction

" NerdCommenter
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
endif

" Semshi - python syntax highlighting
hi semshiLocal           ctermfg=209 guifg=#ff875f
hi semshiGlobal          ctermfg=214 guifg=#ffaf00
hi semshiImported        ctermfg=214 guifg=#ffaf00 cterm=bold gui=bold
hi semshiParameter       ctermfg=75  guifg=#5fafff
hi semshiParameterUnused ctermfg=117 guifg=#87d7ff cterm=underline gui=underline
hi semshiFree            ctermfg=218 guifg=#ffafd7
hi semshiBuiltin         ctermfg=207 guifg=#ff5fff
hi semshiAttribute       ctermfg=49  guifg=#00ffaf
hi semshiSelf            ctermfg=249 guifg=#b2b2b2
hi semshiUnresolved      ctermfg=226 guifg=#ffff00 cterm=underline gui=underline
hi semshiSelected        ctermfg=231 guifg=#ffffff ctermbg=161 guibg=#d7005f

hi semshiErrorSign       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
hi semshiErrorChar       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
sign define semshiError text=E> texthl=semshiErrorSign

nmap <silent> <leader>rr :Semshi rename<CR>

nmap <silent> <Tab> :Semshi goto name next<CR>
nmap <silent> <S-Tab> :Semshi goto name prev<CR>

nmap <silent> <leader>c :Semshi goto class next<CR>
nmap <silent> <leader>C :Semshi goto class prev<CR>

" nmap <silent> <leader>f :Semshi goto function next<CR>
" nmap <silent> <leader>F :Semshi goto function prev<CR>

nmap <silent> <leader>gu :Semshi goto unresolved first<CR>
nmap <silent> <leader>gp :Semshi goto parameterUnused first<CR>

nmap <silent> <leader>ee :Semshi error<CR>
nmap <silent> <leader>ge :Semshi goto error<CR>

function MyCustomPythonHighlights()
	hi semshiSelf            ctermfg=197 guifg=#ffa500 cterm=bold gui=bold
	hi semshiAttribute 		 ctermfg=229 guifg=#ffffaf
endfunction
autocmd FileType python call MyCustomPythonHighlights()

autocmd VimEnter * if isdirectory(expand('<afile>')) | Explore | endif

" Taglist
nnoremap <silent> <leader>n :TlistToggle<CR>
nnoremap <silent> <leader>f :TlistOpen<CR>
let Tlist_File_Fold_Auto_Close = 1


" Save folding on leave and restore on enter
" set foldmethod=manual
" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview

" set foldmethod=syntax
" set foldnestmax=1
