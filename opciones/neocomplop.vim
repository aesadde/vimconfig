" Disable AutoComplPop.
let g:acp_enableAtStartup = 1
" Use neocomplete
let g:neocomplete_enable_at_startup = 1
" Use smartcase.
let g:neocomplete_enable_smart_case = 1
"Use under _ bar completion
let g:neocomplete_enable_underbar_completion = 1

" Set minimum syntax keyword length.
let g:neocomplete_min_syntax_length = 3
" Use fuzzy completion
let g:neocomplete_enable_fuzzy_completion = 1
" Size of list
let g:neocomplete_max_list = 15

" Enable heavy features.
" Use camel case completion.
let g:neocomplete_enable_camel_case_completion = 1

"enable onmincompletion
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" Enable heavy omni completion.
if !exists('g:neocomplete_omni_patterns')
  let g:neocomplete_omni_patterns = {}
endif
let g:neocomplete_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'


" Uses lists from similar files
if !exists('g:neocomplete_same_filetype_lists')
    let g:neocomplete_same_filetype_lists = {}
endif
" In c buffers, completes from cpp and d buffers.
let g:neocomplete_same_filetype_lists.c = 'cpp,d,cu'
" In cpp buffers, completes from c buffers.
let g:neocomplete_same_filetype_lists.cpp = 'c'
" In gitconfig buffers, completes from all buffers.
let g:neocomplete_same_filetype_lists.gitconfig = '_'
" In default, completes from all buffers.
let g:neocomplete_same_filetype_lists._ = '_'
