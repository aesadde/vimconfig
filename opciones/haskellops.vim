" ===[ haskell global options ]=== {{{
augroup haskellgroup
    autocmd!
    autocmd Filetype haskell set tabstop=4 "A tab is 8 spaces
    autocmd Filetype haskell set expandtab "Always uses spaces instead of tabs
    autocmd Filetype haskell set softtabstop=4 "Insert 4 spaces when tab is pressed
    autocmd Filetype haskell set shiftwidth=4 "An indent is 4 spaces
    autocmd Filetype haskell set shiftround   "Round indent to nearest shiftwidth multiple
    autocmd BufEnter *.hs set formatprg=pointfree  "easy pointfree conversion of functions
    autocmd FileType haskell map <silent> <leader><cr> :noh<cr>:GhcModTypeClear<cr>:SyntasticReset<cr>
augroup END
" }}}
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

" ===[ Variables for haskell plugins ]=== {{{
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['haskell'] }
let g:necoghc_enable_detailed_browse = 1
let g:haskell_enable_quantification = 1
let g:haskell_enable_recursivedo = 1
let g:haskell_enable_arrowsyntax = 1
let g:haskell_enable_pattern_synonyms = 1
let g:haskell_enable_typeroles = 1
" }}}



