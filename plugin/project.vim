" project.vimrc
" Configuration for Project plugin
"

" Use Project
runtime! ~/.vim/plugin/Project.vim

" Cindent on projects files
autocmd BufNewFile,BufRead .vimprojects setlocal cindent

" Mapping
"

" Source his own file: ~/.vim/project_map

" \1 will create phptags
"let g:proj_run1='call Phptags()'

" \2 on project view will svn update current directory
"let g:proj_run2='!svn ci %R'

" \5 on project view will commit current directory
"let g:proj_run5='!svn up %R'
