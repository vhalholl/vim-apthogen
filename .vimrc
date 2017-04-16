runtime! debian.vim
set nocompatible
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect('bundle/{}')
call pathogen#helptags()
