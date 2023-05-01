let mapleader="\<space>"

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
vmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>P "+P

nmap <Leader>w :w<CR>

nmap <Leader><Leader> V

map j gj
map k gk
map H ^
map L $

vmap <Silent><C-h> :nohlsearch<Enter>
nmap <Silent><C-h> :nohlsearch<Enter>

map <Leader>bp :bp<Enter>
map <Leader>bn :bn<Enter>
map <Leader>bd :bd<Enter>

map <Leader>gb :e#<Enter>
map <Leader>sl :set list!<Enter>

nmap <C-f> 		:OpenFile	<CR>
nmap <C-m>		:OpenWiki	<CR>

nmap <Silent><Leader>t 	:BTags		<CR>
nmap <Silent><Leader>T 	:Tags		<CR>
nmap <Silent><Leader>cl :Colors		<CR>

map <Silent><Leader>gy 	:Goyo		<CR>
map <Silent><Leader>l 	:Tagbar		<CR>
map <Silent><Leader>ff 	:FormatCode		<CR>
map <Silent><Leader>gl 	:Limelight!!	<CR>
map <Silent><Leader>fw 	:FixWhitespace	<CR>
