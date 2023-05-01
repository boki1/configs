command! -nargs=* DiffPaste call s:DiffPaste(<q-args>)

command! -nargs=+ MapToggle call s:MapToggle(<f-args>)

command! SudoWrite call s:SudoWrite()

command! Reconfigure so ~/.vim/vimrc

command! OpenWiki call s:OpenWiki()

"
" Implementations
"

function! s:SudoWrite()
  write !sudo tee % >/dev/null
  e!
endfunction

function! s:MapToggle(key, opt)
  let cmd = ':set '.a:opt.'! \| set '.a:opt."?\<CR>"
  exec 'nnoremap '.a:key.' '.cmd
endfunction

MapToggle sl list
MapToggle sh hlsearch
MapToggle sw wrap
MapToggle ss spell
MapToggle sc cursorcolumn

function! s:DiffPaste(flags)
  let diff           = getreg(lib#DefaultRegister())
  let filename       = expand('%')
  let current_lineno = line('.')
  let current_line   = getline('.')

  " Strip out some metadata, split by positional information
  let blocks        = []
  let current_block = []

  for line in split(diff, "\n")
    if line =~ '^\%(index\|diff --git\|---\|+++\)'
      continue
    elseif line =~ '^@@.*@@.*$'
      call add(blocks, current_block)
      let current_block = []
      call add(current_block, line)
    else
      call add(current_block, line)
    endif
  endfor

  call add(blocks, current_block)

  for block in blocks
    if empty(block)
      continue
    endif

    let old_count = len(filter(copy(block), "v:val !~ '+'"))
    let new_count = len(filter(copy(block), "v:val !~ '-'"))

    " Add custom metadata
    let header = [
          \ 'diff --git a/'.filename.' b/'.filename,
          \ '--- a/'.filename,
          \ '+++ b/'.filename,
          \ ]

    " We may not have positional info, use cursor location
    if block[0] !~ '^@@.*@@.*$'
      call add(header, '@@ -'.current_lineno.','.old_count.' +'.current_lineno.','.new_count.' @@ '.current_line)
    endif

    let block = extend(header, block)
    let diff  = join(block, "\n")

    " Perform this diff
    let command_result = system('git apply '.a:flags.' -', diff."\n")
    if v:shell_error
      echoerr command_result
      return
    endif
  endfor

  edit!
endfunction

function! s:OpenWiki()
	call fzf#run(fzf#wrap({
		\   'options': '--prompt "Open wiki> "',
		\ 	'source': 'cat ~/toolkit/fzf-marks | sed "s/.*: \(.*\)$/\1/"',
		\ 	'sink': 'lcd'},
		\ 0))
endfunction
