" ===[ Plugins ]=== {{{1
" golden-view
let g:goldenview__enable_default_mapping = 0

" Syntastic
let g:syntastic_check_on_wq = 1
let g:syntastic_auto_jump = 0
let g:syntatstic_filetype_map = { 'latex': 'tex', 'cuda': 'cu'}
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
"cool symbols -- taken from https://github.com/joedicastro/dotfiles/blob/master/vim/vimrc
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_stl_format = '[%E{%e Errors}%B{, }%W{%w Warnings}]'
let g:syntastic_cuda_check_header = 1 " cuda options
let g:syntastic_haskell_checkers=["hdevtools"] " haskell options
let g:syntastic_mode_map={'mode': 'active', 'passive_filetypes': ['haskell']}
let g:syntastic_always_populate_loc_list = 1

"nerdtree
let NERDTreeDirArrows=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.o$','\.svn$', '\~$', '.DS_Store']
let NERDTreeMinimalUI=1
let NERDTreeChDirMode = 2

"airline
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.branch = '⎇' "beautifiers
let g:airline#extensions#syntastic#enabled = 1 "syntastic
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tagbar#flags = 's'
let g:airline#extensions#whitespace#enabled = 1
"show line count of file
call airline#parts#define_raw('linec', '%L')
let g:airline_section_z = airline#section#create(['%3p%%', 'linenr', '/', 'linec', ':%3c '])

"haskell
nmap <silent> <leader>ht :GhcModType<CR> " Type of expression under cursor
nmap <silent> <leader>hT :GhcModTypeInsert<CR> " Insert type of expression under cursor
nmap <silent> <leader>hc :SyntasticCheck ghc_mod<CR>" GHC errors and warnings
nmap <silent> <leader>hl :SyntasticCheck hlint<CR> " Haskell Lint
let g:ghcmod_hlint_options = ['--ignore=Redundant $']

autocmd BufWritePost *.hs,*.lhs GhcModCheckAndLintAsync " Auto-checking on writing
"  neocomplcache (advanced completion)
autocmd BufEnter *.hs,*.lhs let g:neocomplcache_enable_at_startup = 1
function! SetToCabalBuild()
    if glob("*.cabal") != ''
        set makeprg=cabal\ build
    endif
endfunction
autocmd BufEnter *.hs,*.lhs :call SetToCabalBuild()
let $PATH=$PATH.':'.expand("~/.cabal/bin") " neco-ghc

"delimitMate
let delimitMate_matchpairs = "(:),[:],{:}"
let delimitMate_excluded_regions = "Comment,String"

"supertab
let g:SupertTabDefaultCompletionType = 'context'
let g:SuperTabRetainCompletionDuration = 'completion' "current completion mode lasts for single completion
let g:SuperTabNoCompleteAfter = ['^', ',', '\s', '"', "'"]"'"'"']
let g:SuperTabLongestEnhanced = 1
let g:SuperTabLongestHighlight = 1
inoremap <Nul> <C-X><C-O>
inoremap <C-Space> <C-X><C-O>

" Latex Box
let g:LatexBox_latexmk_async=1 "enable background latexmk
let g:LatexBox_latexmk_preview_continuously=1
let g:LatexBox_quickfix=0
let g:LatexBox_output_type="pdf"
let g:LatexBox_folding=1
"latexmk options to be able to run commands and get output on the file
let g:LatexBox_latexmk_options="-shell-escape -enable-write18"
let g:LatexBox_viewer="/Applications/Skim.app" "Open files with Skim
let g:LatexBox_complete_inlineMath=1 "inline math completion
"enable folding
let g:LatexBox_Folding=1
let g:LatexBox_fold_text=1
let g:LatexBox_fold_preamble=1
" use custom mappings instead those provided by default
let g:LatexBox_no_mappings=1

nnoremap <Leader>ll :Latexmk!<CR>
nnoremap <Leader>lp :LatexmkStop<CR>
nnoremap <Leader>lv :LatexView<CR>
" display current line in Skim
map <silent> <Leader>ls :silent
      \ !/Applications/Skim.app/Contents/SharedSupport/displayline
      \ <C-R>=line('.')<CR> "<C-R>=LatexBox_GetOutputFile()<CR>"
      \ "%:p" <CR>

" neocomplete
let g:acp_enableAtStartup = 0 " Disable AutoComplPop.
let g:neocomplete_enable_at_startup = 1 " Use neocomplete
let g:neocomplete_enable_smart_case = 1 " Use smartcase.
let g:neocomplete_enable_underbar_completion = 1 "Use under _ bar completion
let g:neocomplete_min_syntax_length = 3 " Set minimum syntax keyword length.
let g:neocomplete_enable_fuzzy_completion = 1 " Use fuzzy completion
let g:neocomplete_max_list = 15 " Size of list
let g:neocomplete_enable_camel_case_completion = 1 " Use camel case completion.

autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc "enable onmincompletion
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

let g:neocomplete_same_filetype_lists.c = 'cpp,d,cu' " In c buffers, completes from cpp and d buffers.
let g:neocomplete_same_filetype_lists.cpp = 'c' " In cpp buffers, completes from c buffers.
let g:neocomplete_same_filetype_lists.gitconfig = '_' " In gitconfig buffers, completes from all buffers.
let g:neocomplete_same_filetype_lists._ = '_' " In default, completes from all buffers.
"1}}}
