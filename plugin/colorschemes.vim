"colorschemes.vim

"" Enable colorschemes via .vim/colors
if &t_Co >= 256 || has("gui_running")
    "Ensure colors are loaded after vim completely loaded
    autocmd VimEnter * colorscheme default

    "Solarized exemple
    "autocmd VimEnter * let g:solarized_termtrans=1
    "autocmd VimEnter * let g:solarized_termcolors=256
    "autocmd VimEnter * colorscheme solarised

    "Molokai exemple
    "autocmd VimEnter * colorscheme molokai
endif
