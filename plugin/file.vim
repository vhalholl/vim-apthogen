"file.vim
"
"Old stuff

"" FileFormat & Encoding
set fileformat=unix
set encoding=utf-8

"" Indentation
set cindent
set autoindent                  " Always set autoindenting on
set copyindent                  " Copy the previous indentation on autoindenting 
set backspace=indent,eol,start  " Allow backspacing over everything in insert mode
set backspace=2
set softtabstop=4 
set shiftwidth=4 
set tabstop=4
set expandtab
set showtabline=4
set shiftround                  " Use multiple of shiftwidth when indenting with '<' and '>'
set smarttab                    " Insert tabs on the start of a line according to
                                " Shiftwidth, not tabstop
"set nowrap
set nowrapscan

" Specifics Templates, Syntaxes, Indentations and Plugins
"if has("autocmd")
"    filetype plugin indent on
"    augroup default
"        au!
"        " Textwidth de 78 (fichiers texte)
"        autocmd FileType text setlocal textwidth=78  
"        " Jump2LastPos
"        autocmd BufReadPost *
"        \ if line("'\"") > 0 && line("'\"") <= line("$") |
"        \   exe "normal g`\"" |
"        \ endif 
"        " PKGBUILD
"        autocmd BufNewFile,BufRead PKGBUILD setlocal syntax=sh
"        " BASH
"        autocmd BufNewFile,BufRead .bash* setlocal syntax=sh
"        " Puppet
"        autocmd BufRead,BufNewFile *.pp setlocal filetype=puppet
"        " Templates
"        autocmd BufNewFile *.html,*.phtml* 0read ~/.vim/templates/xhtml.html 
"        autocmd BufNewFile *.pl,*.perl 0read ~/.vim/templates/perl.pl
"        autocmd BufNewFile *.php*,*.inc 0read ~/.vim/templates/php.php
"        autocmd BufNewFile *.py,*.pyw 0read ~/.vim/templates/python.py
"        autocmd BufNewFile *.bash,*.sh 0read ~/.vim/templates/bash.sh
"        autocmd BufNewFile *.c,*.h 0read ~/.vim/templates/c.c
"        " Completition
"        autocmd FileType python set omnifunc=pythoncomplete#Complete
"        autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"        autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"        autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"        autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"        autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"        autocmd FileType c set omnifunc=ccomplete#Complete
"
"        set omnifunc=syntaxcomplete#Complete
"        set completeopt=menuone,menu,longest,preview
"    augroup END
"    "PDF Handling
"    augroup PDF
"        au!
"        autocmd BufReadPre *.pdf setlocal ro
"        autocmd BufReadPost *.pdf %!pdftotext -nopgbrk "%" - | fmt -csw78
"    augroup END
"endif
