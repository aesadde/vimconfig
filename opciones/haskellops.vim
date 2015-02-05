" ===[ haskell global options ]=== {{{1
augroup haskellgroup
    autocmd!
    autocmd Filetype haskell set tabstop=2 "A tab is 8 spaces
    autocmd Filetype haskell set expandtab "Always uses spaces instead of tabs
    autocmd Filetype haskell set softtabstop=2 "Insert 2 spaces when tab is pressed
    autocmd Filetype haskell set shiftwidth=2 "An indent is 2 spaces
    autocmd Filetype haskell set shiftround   "Round indent to nearest shiftwidth multiple
    autocmd FileType haskell map <silent> <leader><cr> :noh<cr>:GhcModTypeClear<cr>:SyntasticReset<cr>
    autocmd BufWritePost *.hs GhcModCheckAndLintAsync
    autocmd  Bufread,BufNewFile *.hsc set filetype=haskell
    autocmd FileType cabal setl et ts=2 sw=2 sts=2
    autocmd BufWritePre *.hs :%s/\s\+$//e "Autofix all whitespace on save
    autocmd BufWritePre *.hs :%s/\(\s*\n\)\+\%$//e "Delete all trailing empty lines on files
augroup END

set wildignore+=*.o
set wildignore+=*.hi
set wildignore+=*.chi
" 1}}}
"===[ Mappings for haskell plugins ]=== {{{1
" Type of expression under cursor
nmap <silent> <leader>ht :GhcModType<CR>
" Insert type of expression under cursor
nmap <silent> <leader>hT :GhcModTypeInsert<CR>
" GHC errors and warnings
nmap <silent> <leader>hc :SyntasticCheck ghc_mod<CR>
" Haskell Lint

nmap <silent> <leader>hl :SyntasticCheck hlint<CR>
" Hoogle the word under the cursor
nnoremap <silent> <leader>hh :Hoogle<CR>
" Hoogle and prompt for input
nnoremap <leader>hH :Hoogle
" Hoogle for detailed documentation (e.g. "Functor")
nnoremap <silent> <leader>hi :HoogleInfo<CR>
" Hoogle for detailed documentation and prompt for input
nnoremap <leader>hI :HoogleInfo
" Hoogle, close the Hoogle window
nnoremap <silent> <leader>hz :HoogleClose<CR>
"1}}}
" ===[ Variables for haskell plugins ]=== {{{
let g:necoghc_enable_detailed_browse = 1
let g:haskell_enable_quantification = 1
let g:haskell_enable_recursivedo = 1
let g:haskell_enable_arrowsyntax = 1
let g:haskell_enable_pattern_synonyms = 1
let g:haskell_enable_typeroles = 1
" }}}
