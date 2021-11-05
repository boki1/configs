" __  __                _
" |  \/  |__ _ _ __ _ __(_)_ _  __ _ ___
" | |\/| / _` | '_ \ '_ \ | ' \/ _` (_-<
" |_|  |_\__,_| .__/ .__/_|_||_\__, /__/
"             |_|  |_|         |___/

map H ^
map L $

nnoremap <left> 		:bp							<CR>
nnoremap <right> 		:bn							<CR>
" Also :bd for buffer-close

nnoremap j gj
nnoremap k gk
nnoremap <C-f>			:Telescope find_files			<CR>
nnoremap <C-g> 			:Telescope live_grep			<CR>

nnoremap <silent>s 		:set list!					<CR>
nnoremap <silent>gy 	:Goyo						<CR>
nnoremap <silent>gl 	:Limelight!!				<CR>
nnoremap <leader><silent>l 	:Tagbar						<CR>
nnoremap <leader><silent>n 	:NERDTreeToggle 			<CR>
nnoremap <silent>fw		:FixWhitespace				<CR>
nnoremap <silent>gb		:e#							<CR>	" Go back. Usually combined with gf(=go file)
nnoremap <C-c>			:ClangFormat				<CR>

nnoremap ]h 			:GitGutterNextHunk			<CR>
nnoremap [h 			:GitGutterPrevHunk			<CR>

nnoremap <silent><C-d> 		:call comfortable_motion#flick(100)		<CR>
nnoremap <silent><C-s> 		:call comfortable_motion#flick(-100)	<CR>

nnoremap <silent> <C-f> :FZF		<CR>
nnoremap <silent> <C-g> :FZF ~		<CR>

" Snippets
iab com /*<CR> *<CR>*/<Up>

" Abbreviations
cabbrev tn 			NERDTreeToggle
cabbrev tl 			Tagbar
cabbrev pi 			PlugInstall
cabbrev pc 			PlugClean
cabbrev pu 			PlugUpdate
cabbrev vimconfig 		so ~/.config/nvim/init.vim
