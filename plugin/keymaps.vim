" keymap.vimrc
" Old keymap for memories 

"" Main mapping
" Mapleader
let mapleader = '\'
let localmapleader = '\'

" Quickly edit/reload the vimrc file
nmap <silent> <leader>e :e $MYVIMRC<cr>
nmap <silent> <leader>s :so $MYVIMRC<cr>

" Code-Completition Ctrl+Space (Ctrl+x,Ctrl+o) Replaced by Tab -->
"inoremap <C-Space> <C-x><C-o> 

" Tab (dico & completition) 
inoremap <S-Tab> <C-R>=SmartTab()<cr>

" Tab management
map <C-t> :tabnew<cr>
map <C-Left> :tabp<cr>
map <C-Right> :tabn<cr>
map <C-q> :tabclose<cr>

"" F{1..12} mapping
" F1 built-in help
" F2 PasteMode
nnoremap <F2> :set invpaste paste?<cr> 
set pastetoggle=<F2>

" F3 Set Spell (also bind as debug for text)
noremap <F3> :set spell!<cr>:set spell?<cr>

" F4 Hiligths Searchs
noremap <F4> :set hlsearch!<cr>:set hlsearch?<cr>

" F5 Run
let g:frun = "<F5>"

" F6 Debug
let g:fdebug = "<F6>"

" F7 TaskList
map <F7> <Plug>TaskList :TaskList<cr>

" F8 TagList
nmap <F8> <Esc>:TlistToggle<cr>

"" F9 Make
"let g:fmake = "<F9>"
"nmap <F9> :make<ENTER>:copen<ENTER><CTRL>L

"" F10 Toggle Reminder
"if !hasmapto('<Plug>Reminder')
"    map <unique> <F10> <Plug>Reminder
"    imap <unique> <F10> <Plug>Reminder
"endif
"nnoremap <unique> <silent> <script> <Plug>Reminder :call Reminder()<cr>

"" F11
"nnoremap <silent> <F11> :execute 'set ' . (&relativenumber ? 'number' : 'relativenumber')<CR>

" F12 Toggle mouse for terminal (see plugin/toggle_mouse.vim)
