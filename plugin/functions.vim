"functions.vim
"My Old's functions for memories

"" Shell
"command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
"function! s:RunShellCommand(cmdline)
"  echo a:cmdline
"  let expanded_cmdline = a:cmdline
"  for part in split(a:cmdline, ' ')
"     if part[0] =~ '\v[%#<]'
"        let expanded_part = fnameescape(expand(part))
"        let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
"     endif
"  endfor
"  botright new
"  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
"  call setline(1, 'You entered:    ' . a:cmdline)
"  call setline(2, 'Expanded Form:  ' .expanded_cmdline)
"  call setline(3,substitute(getline(2),'.','=','g'))
"  execute '$read !'. expanded_cmdline
"  setlocal nomodifiable
"  1
"endfunction

function! s:ExecuteInShell(command, bang)
	let _ = a:bang != '' ? s:_ : a:command == '' ? '' : join(map(split(a:command), 'expand(v:val)'))

	if (_ != '')
		let s:_ = _
		let bufnr = bufnr('%')
		let winnr = bufwinnr('^' . _ . '$')
		silent! execute  winnr < 0 ? 'belowright new ' . fnameescape(_) : winnr . 'wincmd w'
		setlocal buftype=nowrite bufhidden=wipe nobuflisted noswapfile wrap number
		silent! :%d
		let message = 'Execute ' . _ . '...'
		call append(0, message)
		echo message
		silent! 2d | resize 1 | redraw
		silent! execute 'silent! %!'. _
		silent! execute 'resize ' . line('$')
		silent! execute 'syntax on'
		silent! execute 'autocmd BufUnload <buffer> execute bufwinnr(' . bufnr . ') . ''wincmd w'''
		silent! execute 'autocmd BufEnter <buffer> execute ''resize '' .  line(''$'')'
		silent! execute 'nnoremap <silent> <buffer> <CR> :call <SID>ExecuteInShell(''' . _ . ''', '''')<CR>'
		silent! execute 'nnoremap <silent> <buffer> <LocalLeader>r :call <SID>ExecuteInShell(''' . _ . ''', '''')<CR>'
		silent! execute 'nnoremap <silent> <buffer> <LocalLeader>g :execute bufwinnr(' . bufnr . ') . ''wincmd w''<CR>'
		nnoremap <silent> <buffer> <C-W>_ :execute 'resize ' . line('$')<CR>
		silent! syntax on
	endif
endfunction

command! -complete=shellcmd -nargs=* -bang Shell call s:ExecuteInShell(<q-args>, '<bang>')
cabbrev shell Shell

""" SuperTab
"function! SmartTab()
"    if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
"        return "\<Tab>"
"    else
"        if &omnifunc != ''
"            return "\<C-X>\<C-O>"
"        elseif &dictionary != ''
"            return "\<C-K>"
"        else
"            return "\<C-N>"
"        endif
"    endif
"endfunction

""" Reminder
"let g:helpDisplay = 0 
"
"function! Reminder()
"    if g:helpDisplay == 0
"        "sview $HOME/.vim/help.txt
"        if exists('g:proj_running')
"            tabnew
"        endif
"        silent! topleft vertical 60 split +buffer Reminder
"        setlocal nonumber buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
"        "file $HOME/.vim/help.txt
"        silent read $HOME/.vim/help.txt
"        "highlight Memory ctermfg=white ctermbg=blue
"        if has("gui_running")
"            highlight Memory guifg=white guibg=blue
"        else
"            highlight Memory ctermfg=white ctermbg=blue
"        endif
"        3match Memory /^.\+\ \+:/
"        let g:helpDisplay = 1
"    else
"        bdelete
"        if  exists('g:proj_running')
"            tabclose
"        endif
"        let g:helpDisplay = 0
"    endif
"endfunction

"" Create tags for PHP
"function! Phptags()   
"    "change exclude for your project, here it's a good exclude for Copix temp and var files"
"    let cmd = '!ctags -f .tags -h ".php" -R --exclude="\.svn" --exclude="./var" --exclude="./temp" --totals=yes --tag-relative=yes'
"    exec cmd
"    set tags=.tags
"endfunction
