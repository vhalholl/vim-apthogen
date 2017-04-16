" colorscheme.vim
"

"" Enable colorschemes in .vim/colors
if &t_Co >= 256 || has("gui_running") 
    "autocmd VimEnter * colorscheme default
    "autocmd VimEnter * colorscheme molokai
    autocmd VimEnter * let g:solarized_termcolors=256
    autocmd VimEnter * let g:solarized_termtrans=1
    autocmd VimEnter * colorscheme solarized
endif
