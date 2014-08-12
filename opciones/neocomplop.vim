" Disable AutoComplPop.
let g:acp_enableAtStartup = 1
" Use neocomplcache
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
"Use under _ bar completion
let g:neocomplcache_enable_underbar_completion = 1

" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
" Use fuzzy completion
let g:neocomplcache_enable_fuzzy_completion = 1
" Size of list
let g:neocomplcache_max_list = 15

" Enable heavy features.
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1

"enable onmincompletion
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'


" Uses lists from similar files
if !exists('g:neocomplcache_same_filetype_lists')
    let g:neocomplcache_same_filetype_lists = {}
endif
" In c buffers, completes from cpp and d buffers.
let g:neocomplcache_same_filetype_lists.c = 'cpp,d'
" In cpp buffers, completes from c buffers.
let g:neocomplcache_same_filetype_lists.cpp = 'c'
" In gitconfig buffers, completes from all buffers.
let g:neocomplcache_same_filetype_lists.gitconfig = '_'
" In default, completes from all buffers.
let g:neocomplcache_same_filetype_lists._ = '_'
