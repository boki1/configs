" __  __                _
" |  \/  |__ _ _ __ _ __(_)_ _  __ _ ___
" | |\/| / _` | '_ \ '_ \ | ' \/ _` (_-<
" |_|  |_\__,_| .__/ .__/_|_||_\__, /__/
"             |_|  |_|         |___/

nnoremap <left> 		:bp					<CR>
nnoremap <right> 		:bn					<CR>

nnoremap <silent>s 		:set list!				<CR>
nnoremap <leader>gy 		:Goyo					<CR>
nnoremap <leader>gl 		:Limelight!!				<CR>
nnoremap <silent>tl 		:TlistToggle				<CR>
nnoremap <silent>tn 		:NERDTreeToggle 			<CR>
nnoremap <leader>f 		:Telescope find_files			<CR>
nnoremap <leader>g 		:Telescope live_grep			<CR>
nnoremap <silent><leader><C-w>	:FixWhitespace				<CR>

nnoremap ]h 			:GitGutterNextHunk			<CR>
nnoremap [h 			:GitGutterPrevHunk			<CR>

nnoremap <silent> <C-d> 	:call comfortable_motion#flick(100)	<CR>
nnoremap <silent> <C-s> 	:call comfortable_motion#flick(-100)	<CR>

" Snippets
iab com /*<CR> *<CR>*/<Up>

" Abbreviations
cabbrev tn NERDTreeToggle
cabbrev tl TlistToggle
cabbrev pi PlugInstall
cabbrev pc PlugClean
cabbrev pu PlugUpdate
