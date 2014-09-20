" ===[ haskell global options ]=== {{{
augroup haskellgroup
    autocmd!
    autocmd Filetype haskell set tabstop=8 "A tab is 8 spaces
    autocmd Filetype haskell set expandtab "Always uses spaces instead of tabs
    autocmd Filetype haskell set softtabstop=4 "Insert 4 spaces when tab is pressed
    autocmd Filetype haskell set shiftwidth=4 "An indent is 4 spaces
    autocmd Filetype haskell set shiftround   "Round indent to nearest shiftwidth multiple
augroup END
" }}}
