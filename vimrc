"pathogen stuff
"Pathogen is in a submodule so need this at the beginning of vimrc
runtime bundle/vim-pathogen/autoload/pathogen.vim
filetype off
"disable plugins that I don't want instead of removing them completely

" Disable/enable plugins depending on Gui ------- {{{
if has('gui_macvim')
    let g:pathogen_disabled = []
else
    let g:pathogen_disabled = ['vim-YouCompleteMe', 'supertab']
endif
" }}}


" pathogen initialisation ---------------------- {{{
call pathogen#infect()
call pathogen#incubate()
call pathogen#helptags()
" }}}

"Source stuff -------------------------------------- {{{
source ~/.vim/opciones/globales.vim "global options
source ~/.vim/opciones/keys.vim "maps and keys
source ~/.vim/opciones/abbreviations.vim "abbreviations
source ~/.vim/opciones/opjava.vim
source ~/.vim/opciones/opspell.vim
source ~/.vim/opciones/LatexStuff.vim  "latex stuff
source ~/.vim/opciones/colors.vim "colorschemes
source ~/.vim/opciones/supertabop.vim "supertab options
source ~/.vim/opciones/syntasticop.vim "syntastic options
source ~/.vim/opciones/nerdop.vim "powerline options
source ~/.vim/opciones/tasklistop.vim "task list options
source ~/.vim/opciones/tagbarop.vim "tagbar options
source ~/.vim/opciones/vim-latexop.vim "vim latex options
source ~/.vim/opciones/bashop.vim "vim-bash options
source ~/.vim/opciones/airlineop.vim "vim-airline options
"}}}

" Vim marker folding method for vimscripts --------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
