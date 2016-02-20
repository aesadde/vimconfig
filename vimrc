" ===[ Global Variables ]=== {{{1
let s:windows = has('win32') || has('win64')
let s:mac_gui = has('gui_macvim')
"1}}}
" ===[ vim-plug init ]=== {{{1
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'Shougo/vimproc.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/neocomplete.vim'
Plug 'scrooloose/syntastic'             " syntax checker
Plug 'Yggdroot/indentLine' "show indent lines (matching brackets)
Plug 'SirVer/ultisnips' " Track the engine.
Plug 'honza/vim-snippets' "Snippets

"Haskell Plugins
Plug 'eagletmt/ghcmod-vim',             { 'for': 'haskell' }
Plug 'eagletmt/neco-ghc',               { 'for': 'haskell' }
Plug 'Twinside/vim-hoogle',             { 'for': 'haskell' }
Plug 'bosu/hscope',                     { 'for': 'haskell' }
Plug 'bitc/vim-hdevtools',              { 'for': 'haskell' }


"Colorschemes
Plug 'altercation/vim-colors-solarized' " solarized vim
Plug 'kien/rainbow_parentheses.vim' "Multi-color parantheses

"Other
Plug 'bling/vim-airline' " status line
Plug 'tpope/vim-commentary' " add comments easily
Plug 'tpope/vim-surround' " surround things
Plug 'zhaocai/GoldenView.Vim' " better splits
Plug 'majutsushi/tagbar' "Tagbar
Plug 'jiangmiao/auto-pairs' "auto close pars and brackets
Plug 'jordwalke/VimCompleteLikeAModernEditor'
Plug 'benmills/vimux'

"Pandoc
Plug 'vim-pandoc/vim-pandoc-syntax', {'for': 'markdown'}

"Scala
Plug 'derekwyatt/vim-scala', {'for': 'scala'} "Scala syntax highlighting
Plug 'artur-shaik/vim-javacomplete2', {'for': 'scala,java'}

"Latex Plugin
Plug 'vim-scripts/LaTeX-Box', { 'for': 'tex' } "best latex plugin ever

"iOS plugins
Plug 'eraserhd/vim-ios',       { 'for': 'cocoa,swift'}" ios options for vim
Plug 'vim-scripts/cocoa.vim',  { 'for': 'cocoa,swift'} " cocoa plugin
Plug 'Rip-Rip/clang_complete', { 'for': 'cocoa,swift'}
Plug 'toyamarinyon/vim-swift', { 'for': 'cocoa,swift'} " swift support
Plug 'tpope/vim-fugitive' "git from vim

call plug#end()
"1}}}
" ===[ All options ]=== {{{1
source $HOME/dotfiles/vim/opciones/plugins.vim
source $HOME/dotfiles/vim/opciones/globales.vim "global options
source $HOME/dotfiles/vim/opciones/keys.vim "maps and keys
source $HOME/dotfiles/vim/opciones/customFunctions.vim "simple custom functions
"1}}}
"===[ color options ]=== {{{1
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

set gfn=Monaco:h11 " Use large font by default in MacVim

syntax enable
set background=dark
colorscheme smyck
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
" Source the vimrc file after saving it
augroup sourcing
  autocmd!
  autocmd bufwritepost .vimrc source $MYVIMRC
augroup END
" 2}}}
" Custom filetypes {{{2
au BufRead,BufNewfile *.fun set filetype=haskell "Fun Language (Oxford)
augroup markdown
  autocmd!
  au BufRead,BufNewFile *.md setfiletype markdown
  au BufRead,BufNewFile *.md UltiSnipsAddFiletypes markdown.tex
  au FileType markdown setlocal spell
  set conceallevel=0
  augroup END
" 2}}}
" 1}}}
" ===[ Acknowledgments ]=== {{{1
" Many things in these files are taken from elsewhere
" bitbucket.org/sjl/dotfiles/src/cbbbc897e9b3/vim/vimrc
" blog.sanctum.geek.nz/vim-command-typos/
" vimrcfu.com/snippet/76
" 1}}}
