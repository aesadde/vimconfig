" ===[ Global Variables ]=== {{{1
let s:windows = has('win32') || has('win64')
let s:mac_gui = has('gui_macvim')
"1}}}
" ===[ vim-plug init ]=== {{{1
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle'}

Plug 'Shougo/vimproc.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/neocomplete.vim'
Plug 'scrooloose/syntastic'             " syntax checker

"Haskell Plugins
Plug 'yogsototh/haskell-vim'            " syntax indentation / highlight
Plug 'eagletmt/ghcmod-vim'
Plug 'eagletmt/neco-ghc'

Plug 'altercation/vim-colors-solarized' " solarized vim
Plug 'bling/vim-airline' " status line
Plug 'tpope/vim-commentary' " add comments easily
Plug 'tpope/vim-surround' " surround things
Plug 'zhaocai/GoldenView.Vim' " better splits

Plug 'vim-scripts/LaTeX-Box' "best latex plugin ever
call plug#end()

" ===[ All options ]=== {{{1
source $HOME/dotfiles/vim/opciones/plugins.vim
source $HOME/dotfiles/vim/opciones/globales.vim "global options
source $HOME/dotfiles/vim/opciones/keys.vim "maps and keys
source $HOME/dotfiles/vim/opciones/customFunctions.vim "simple custom functions
" source $HOME/dotfiles/vim/opciones/tagbarop.vim "tagbar plugin options
"1}}}
"===[ color options ]=== {{{1
syntax enable
set background=light
colorscheme solarized
" let g:solarized_termcolors=256
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
" ===[ Acknowledgments ]=== {{{1
" Many things in these files are taken from elsewhere
" bitbucket.org/sjl/dotfiles/src/cbbbc897e9b3/vim/vimrc
" blog.sanctum.geek.nz/vim-command-typos/
" vimrcfu.com/snippet/76
" 1}}}
