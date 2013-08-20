"pathogen stuff
"Pathogen is in a submodule so need this at the beginning of vimrc
runtime bundle/vim-pathogen/autoload/pathogen.vim

filetype off
"disable plugins that I don't want instead of removing them completely
let g:pathogen_disabled = []
call pathogen#infect()
call pathogen#incubate()
call pathogen#helptags()

source ~/.vim/opciones/globales.vim "global options
source ~/.vim/opciones/keys.vim "maps and keys
source ~/.vim/opciones/abbreviations.vim "abbreviations
source ~/.vim/opciones/opjava.vim
"source ~/.vim/opciones/opsessions.vim
source ~/.vim/opciones/opspell.vim
source ~/.vim/opciones/pythonStuff.vim "python related
source ~/.vim/opciones/LatexStuff.vim  "latex stuff
source ~/.vim/opciones/colors.vim "colorschemes
source ~/.vim/opciones/supertabop.vim "supertab options
source ~/.vim/opciones/syntasticop.vim "syntastic options
source ~/.vim/opciones/nerdop.vim "powerline options
source ~/.vim/opciones/tasklistop.vim "task list options
