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
Plug 'eagletmt/ghcmod-vim'
Plug 'eagletmt/neco-ghc'
Plug 'pbrisbin/vim-syntax-shakespeare'  "yesod syntax highlight

"Colorschemes
Plug 'altercation/vim-colors-solarized' " solarized vim
Plug 'gilgigilgil/anderson.vim' " Wes Anderson colorschemes
Plug 'kien/rainbow_parentheses.vim' "Multi-color parantheses

"Other
Plug 'NLKNguyen/papercolor-theme' " Google inspired colorscheme
Plug 'bling/vim-airline' " status line
Plug 'tpope/vim-commentary' " add comments easily
Plug 'tpope/vim-surround' " surround things
Plug 'zhaocai/GoldenView.Vim' " better splits
Plug 'majutsushi/tagbar' "Tagbar
Plug 'derekwyatt/vim-scala' "Scala syntax highlighting

"Latex Plugin
Plug 'vim-scripts/LaTeX-Box' "best latex plugin ever

"iOS plugins
Plug 'eraserhd/vim-ios' " ios options for vim
Plug 'vim-scripts/cocoa.vim' " cocoa plugin
Plug 'Rip-Rip/clang_complete'
Plug 'toyamarinyon/vim-swift' " swift support

" Plug 'unblevable/quick-scope' "highlights chars for f motions
call plug#end()
"1}}}
" ===[ All options ]=== {{{1
source $HOME/dotfiles/vim/opciones/plugins.vim
source $HOME/dotfiles/vim/opciones/globales.vim "global options
source $HOME/dotfiles/vim/opciones/keys.vim "maps and keys
source $HOME/dotfiles/vim/opciones/customFunctions.vim "simple custom functions
" source $HOME/dotfiles/vim/opciones/tagbarop.vim "tagbar plugin options
" source $HOME/dotfiles/vim/opciones/quick-scope.vim
"1}}}
"===[ color options ]=== {{{1
syntax enable
set background=light
colorscheme solarized
let g:solarized_termcolors=16
"1}}}
" ===[ Useful autocommands ]===  {{{1
" Vim marker folding method for vimscripts {{{2
au! BufNewFile,BufRead * if getline(1) =~ '"ft=vim' | setf vim | endif
autocmd BufWritePre * :%s/\s\+$//e
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
