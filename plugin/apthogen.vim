" apthogen.vim
"
filetype plugin indent on

"" Enable Syntax Coloration
if &t_Co > 2 || has("gui_running")
    if has("syntax")
        syntax on
    endif
endif

"" Enable colorschemes in .vim/colors
if &t_Co >= 256 || has("gui_running")
    " if solarised
    " let g:solarized_termtrans=1
    " let g:solarized_termcolors=256
    " colorscheme solarised
    " else
    colorscheme default
endif

"" Hide buffers when they are abandoned instead of closing them
set hidden

"" Make Apthogen Symlinks
for i in [ "adn","mutations","infection","apthogen",".vimrc" ] 
    if filereadable(expand($HOME."/.vim/".i))
"        let j = expand("File ".$HOME."/.vim/".i)
    elseif filewritable(expand($HOME."/.vim".i)) == 2
"        let j = expand("Dir  ".$HOME."/.vim/".i)
    else
        if has("unix") || has("win32unix")
            call system(expand("ln -s ".$HOME."/.vim/bundle-availlable/vim-config/".i." ".$HOME."/.vim/".i))
"            let j = expand("Linked ".$HOME."/.vim/".i)
        endif
    endif
"    echom j
endfor
if has("unix") || has("win32unix")
    call system(expand("ln -s ".$HOME."/.vim/bundle-availlable/vim-config/plugin".$HOME."/.vim/config"))
"   let j = expand("Linked ".$HOME."/.vim/config")
endif
"    echom j

"" Set backup dir & backup
if filewritable(expand($HOME."/.vim/backup")) == 2
    set backupdir=$HOME/.vim/backup
else
    if has("unix") || has("win32unix")
        call system("mkdir $HOME/.vim/backup -p")
        set backupdir=$HOME/.vim/backup
    endif
endif
set backup
set autowrite                   " Automatically save before commands like :next and :make
"set nobackup                   " TODO:Pros/Cons

"" Undo managment
if v:version >= 703
    if filewritable(expand($HOME."/.vim/undo")) == 2
        set undodir=$HOME/.vim/undo
    else
        if has("unix") || has("win32unix")
            call system("mkdir $HOME/.vim/undo -p")
            set undodir=$HOME/.vim/undo
        endif
    endif
    set noswapfile              " TODO:Pros/Cons     
	set undofile
	set undolevels=1000         "maximum number of changes that can be undone
	set undoreload=10000        "maximum number lines to save for undo on a buffer reload
	set norelativenumber
else
    set dir=~/
    set swapfile
endif



"" Mouse4GUI
if has("gui_running")
    map <S-Insert> <MiddleMouse>
    map <S-Insert> <MiddleMouse>
    set mousehide 
    set ch=2
endif

"" Automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

"" History mgmt
set history=1000

"" Menu wildcard
set wildmenu
set wildignore=*.o,*#,*~,*.dll,*.so,*.a
set wildmode=full

"" Visual
set background=dark
set number

if has("unix") || has("win32unix")
    set nospell spelllang=fr,en
    set foldmethod=syntax       " syntax,indent,marker Activate Folding 
endif

highlight LineNr term=bold ctermfg=darkgray guifg=darkgray
"set cursorline
"set visualbell           
"set errorbells            
"set showcmd                    " Show (partial) command in status line.

set showmatch                   " Show matching brackets.
set matchtime=2                 " Tenths of a second to show the matching patern, w/ 'showmatch'
"set title                      " Change the terminal's title

"" Terminal
set mouse=a                     " mouse=nic Enable mouse usage (all modes)
set ttyfast                     " Fast Term Connection 'Smoothy Redrawing'
set lazyredraw                  " Don't redraw screen when executing macro,registers...
set laststatus=2                " 0:never,1:only if there are at least two windows,2:always 
"set writeany                   " no need '!' for override anymore
