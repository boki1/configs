" __  __                _
" |  \/  |__ _ _ __ _ __(_)_ _  __ _ ___
" | |\/| / _` | '_ \ '_ \ | ' \/ _` (_-<
" |_|  |_\__,_| .__/ .__/_|_||_\__, /__/
"             |_|  |_|         |___/


" Navigation
map j gj
map k gk

map H 		^
map L 		$

map <left> 	:bp	<CR>
map <right> :bn	<CR>
" Also :bd for buffer-close
"
map <leader>gb	:e#	<CR>

map ]h 			:GitGutterNextHunk			<CR>
map [h 			:GitGutterPrevHunk			<CR>

nnoremap <silent><C-d> 		:call comfortable_motion#flick(100)		<CR>
nnoremap <silent><C-s> 		:call comfortable_motion#flick(-100)	<CR>

map <silent><C-f> :FZF		<CR>
map <silent><C-g> :FZF ~	<CR>

map <leader>c	:ClangFormat				<CR>
map <silent>fw	:FixWhitespace				<CR>

map <silent>gy 	:Goyo						<CR>
map <silent>gl 	:Limelight!!				<CR>

map <leader>l 	:Tagbar						<CR>
map <leader>n 	:NERDTreeToggle 			<CR>

map <silent>s 	:set list!					<CR>

map <a-cr> :YcmCompleter FixIt				<CR>




" Snippets
iab com /*<CR><CR>/<Up>

" Abbreviations
cabbrev tn 			NERDTreeToggle
cabbrev tl 			Tagbar
cabbrev pi 			PlugInstall
cabbrev pc 			PlugClean
cabbrev pu 			PlugUpdate
cabbrev vimconfig 	so ~/.config/nvim/init.vim
cabbrev vc 			so ~/.config/nvim/init.vim
