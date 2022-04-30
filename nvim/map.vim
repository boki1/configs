" ┏┳┓┏━┓┏━┓┏━┓╻┏┓╻┏━╸┏━┓
" ┃┃┃┣━┫┣━┛┣━┛┃┃┗┫┃╺┓┗━┓
" ╹ ╹╹ ╹╹  ╹  ╹╹ ╹┗━┛┗━┛

let mapleader=","

" General vim maps

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
vmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>P "+P

nmap <Leader>w :w<CR>

" Enter visual mode
" nmap <Leader><Leader> V

map j gj
map k gk
map H ^
map L $

vmap <C-h> :nohlsearch<Enter>
nmap <C-h> :nohlsearch<Enter>

map <Left>  :bp<Enter>
map <Right> :bn<Enter>
map <Leader>bp :bp<Enter>
map <Leader>bn :bn<Enter>
map <Leader>bd :bd<Enter>

map <Leader>gb :e#<Enter>
map <Leader>sl :set list!<Enter>

cabbrev vc so ~/.config/nvim/init.vim

" Comfortable motion
nmap <C-d> :call comfortable_motion#flick(100)<Enter>
nmap <C-s> :call comfortable_motion#flick(-100)<Enter>

" Ctrl-p
map <C-b> :CtrlPBufTag<Enter>
map <C-t> :CtrlPTag<Enter>
map <C-c> :CtrlPBookmarkDir<Enter>

" You complete me
" map <A-Enter>   :YcmCompleter FixIt<Enter>
" map <Leader>gd  :YcmCompleter GoToDefinition<Enter>
" map <Leader>nr  :YcmCompleter RefactorRename<Enter>
" map <Leader>dc  :YcmCompleter Doc<Enter>
" map <Leader>gi  :YcmCompleter GoToImplementation<Enter>
" map <Leader>gp  :call tag_peek#ShowTag()<Enter>

" nmap  <C-z> :ToggleTerminal<Enter>
" tmap  <C-z> <C-\><C-n>:ToggleTerminal<Enter>

" vim-plug shotcuts
cabbrev pi PlugInstall
cabbrev pc PlugClean
cabbrev pu PlugUpdate

" Fuzzy finder
map <C-f> :FZF<Enter>
nmap <Leader>t :BTags<CR>
nmap <Leader>T :Tags<CR>
map <Silent><Leader>cl :Colors<Enter>

" Misc
map <Leader>ff :FormatCode<Enter>
map <Leader>fw :FixWhitespace<Enter>
map <Leader>gy :Goyo<Enter>
map <Leader>gl :Limelight!!<Enter>
map <Leader>l :Tagbar<Enter>

" Expand region
map <Leader>+ <Plug>(expand_region_expand)
map <Leader>_ <Plug>(expand_region_shrink)

" CoC
nmap <Silent>[g <Plug>(coc-diagnostic-prev)
nmap <Silent>]g <Plug>(coc-diagnostic-next)
nmap <Silent><Leader>gd <Plug>(coc-definition)
nmap <Silent><Leader>gy <Plug>(coc-type-definition)
nmap <Silent><Leader>gi <Plug>(coc-implementation)
nmap <Silent><Leader>gr <Plug>(coc-references)
nmap <Silent><Leader>rn <Plug>(coc-rename)
nmap <Silent><Leader>qf <Plug>(coc-fix-current)
nmap <Silent><Leader>gk :call ShowDocumentation()<Enter>
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
