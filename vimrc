" ===[ Global Variables ]=== {{{1
let s:windows = has('win32') || has('win64')
let s:mac_gui = has('gui_macvim')
"1}}}
" ===[ Pathogen init ]=== {{{1
"pathogen is in a submodule so need this at the beginning of vimrc
source ~/dotfiles/vim/bundle/vim-pathogen/autoload/pathogen.vim
filetype off

"disable plugins that I don't want instead of removing them completely
if s:mac_gui
    let g:pathogen_disabled = []
else
    let g:pathogen_disabled = []
endif

call pathogen#infect('bundle/{}')
call pathogen#helptags()
"1}}}
" ===[ All options ]=== {{{1
source $HOME/dotfiles/vim/opciones/globales.vim "global options
source $HOME/dotfiles/vim/opciones/keys.vim "maps and keys
source $HOME/dotfiles/vim/opciones/opjava.vim
source $HOME/dotfiles/vim/opciones/opspell.vim
source $HOME/dotfiles/vim/opciones/colors.vim "colorschemes
source $HOME/dotfiles/vim/opciones/syntasticop.vim "syntastic options
source $HOME/dotfiles/vim/opciones/nerdop.vim "powerline options
source $HOME/dotfiles/vim/opciones/tasklistop.vim "task list options
source $HOME/dotfiles/vim/opciones/bashop.vim "vim-bash options
source $HOME/dotfiles/vim/opciones/goldenview.vim "goldenview options
source $HOME/dotfiles/vim/opciones/customFunctions.vim "simple custom functions
source $HOME/dotfiles/vim/opciones/uniteop.vim "unite plugin options
source $HOME/dotfiles/vim/opciones/tagbarop.vim "tagbar plugin options
source $HOME/dotfiles/vim/opciones/airlinesop.vim "airline plugin options
source $HOME/dotfiles/vim/opciones/haskellops.vim "haskell mode options
source $HOME/dotfiles/vim/opciones/delimitMateop.vim "delimitMate options
source $HOME/dotfiles/vim/opciones/superTabop.vim "superTab options
source $HOME/dotfiles/vim/opciones/neocomplop.vim "neocomplcache options
source $HOME/dotfiles/vim/opciones/sessions.vim "sessions
source $HOME/dotfiles/vim/opciones/latexop.vim "latex
"1}}}
" ===[ Useful autocommands ]===  {{{1
au! BufNewFile,BufRead * if getline(1) =~ '"ft=vim' | setf vim | endif

autocmd BufWritePre * :%s/\s\+$//e

" Vim marker folding method for vimscripts {{{2
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType sh setlocal foldmethod=marker
augroup END
" 2}}}

" Autoload configuration when this file changes ($MYVIMRC) {{{2
autocmd! BufWritePost vimrc source %
" 2}}}
" 1}}}
"
" ===[ Acknowledgments ]=== {{{1
" Many things in these files are taken from elsewhere
" bitbucket.org/sjl/dotfiles/src/cbbbc897e9b3/vim/vimrc
" blog.sanctum.geek.nz/vim-command-typos/
" vimrcfu.com/snippet/76
" 1}}}
