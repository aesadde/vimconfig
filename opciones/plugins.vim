" ===[ Plugins ]=== {{{1
" ===[ golden-view ]=== {{{2
let g:goldenview__enable_default_mapping = 0
"2}}}
" ===[ Syntastic ]=== {{{2
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 1
let g:syntatstic_filetype_map = { 'latex': 'tex', 'cuda': 'cu'}
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

" let g:syntastic_haskell_hdevtools_args = '-g-Wall'
"cool symbols -- taken from https://github.com/joedicastro/dotfiles/blob/master/vim/vimrc
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_stl_format = '[%E{%e Errors}%B{, }%W{%w Warnings}]'
let g:syntastic_cuda_check_header = 1 " cuda options
let g:syntastic_haskell_checkers=["hdevtools"] " haskell options
let g:syntastic_mode_map={"mode": "active", "active_filetypes": ["haskell"]}
let g:syntastic_always_populate_loc_list = 0
"2}}}
" ===[ nerdtree ]=== {{{2
let NERDTreeDirArrows=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.o$','\.svn$', '\~$', '.DS_Store']
let NERDTreeMinimalUI=1
let NERDTreeChDirMode = 2
"2}}}
" ===[ airline ]=== {{{2
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
"2}}}
" ===[ haskell ]=== {{{2
augroup haskell
  map <leader>tg :!codex update --force<CR>:call system("git-hscope -X TemplateHaskell")<CR><CR>:call LoadHscope()<CR>
 au!
 au FileType haskell nmap <silent> <leader>ht :GhcModType<CR> " Type of expression under cursor
 au FileType haskell nmap <silent> <leader>hT :GhcModTypeInsert<CR> " Insert type of expression under cursor
 au FileType haskell nmap <silent> <leader>hc :SyntasticCheck ghc_mod<CR>" GHC errors and warnings
 au FileType haskell nmap <silent> <leader>hl :SyntasticCheck hlint<CR> " Haskell Lint
 au FileType haskell set tabstop=8                   "A tab is 8 spaces
 au FileType haskell set expandtab                   "Always uses spaces instead of tabs
 au FileType haskell set softtabstop=4               "Insert 4 spaces when tab is pressed
 au FileType haskell set shiftwidth=4                "An indent is 4 spaces
 au FileType haskell set shiftround                  "Round indent to nearest shiftwidth multiple
 au FileType haskell set omnifunc=necoghc#omnifunc "enable onmincompletion
 au FileType haskell let g:haskellmode_completion_ghc = 0
 au FileType haskell let g:necoghc_enable_detailed_browse = 1 " Show types in completion suggestions"
 au FileType haskell let g:ghcmod_use_basedir = getcwd()


 " tags set up
 au FileType haskell set tags=tags;/,codex.tags;/
 function! LoadHscope()
  let db = findfile("hscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/hscope.out$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
  endif
endfunction
au FileType haskell set csprg=~/.local/bin/hscope
au FileType haskell set csto=1 " search codex tags first
au FileType haskell set cst
au FileType haskell set csverb
au FileType haskell set completeopt+=longest
au BufEnter /*.hs call LoadHscope()

let g:tagbar_type_haskell = {
    \ 'ctagsbin'  : 'hasktags',
    \ 'ctagsargs' : '-x -c -o-',
    \ 'kinds'     : [
        \  'm:modules:0:1',
        \  'd:data: 0:1',
        \  'd_gadt: data gadt:0:1',
        \  't:type names:0:1',
        \  'nt:new types:0:1',
        \  'c:classes:0:1',
        \  'cons:constructors:1:1',
        \  'c_gadt:constructor gadt:1:1',
        \  'c_a:constructor accessors:1:1',
        \  'ft:function types:1:1',
        \  'fi:function implementations:0:1',
        \  'o:others:0:1'
    \ ],
    \ 'sro'        : '.',
    \ 'kind2scope' : {
        \ 'm' : 'module',
        \ 'c' : 'class',
        \ 'd' : 'data',
        \ 't' : 'type'
    \ },
    \ 'scope2kind' : {
        \ 'module' : 'm',
        \ 'class'  : 'c',
        \ 'data'   : 'd',
        \ 'type'   : 't'
    \ }
\ }

function! SetToCabalBuild()
    if glob("*.cabal") != ''
        set makeprg=cabal\ build
    endif
endfunction
autocmd BufEnter *.hs,*.lhs :call SetToCabalBuild()
let $PATH=$PATH.':'.expand("~/.cabal/bin") " neco-ghc
augroup END
"2}}}
" ===[ delimitMate ]=== {{{2
let delimitMate_matchpairs = "(:),[:],{:}"
let delimitMate_excluded_regions = "Comment,String"
"2}}}
" ===[  Latex Box ]=== {{{2
let g:LatexBox_latexmk_async=1 "enable background latexmk
let g:LatexBox_latexmk_preview_continuously=1
let g:LatexBox_quickfix=0
let g:LatexBox_output_type="pdf"
let g:LatexBox_folding=1
"latexmk options to be able to run commands and get output on the file
let g:LatexBox_latexmk_options="-shell-escape -enable-write18 -pdf"
let g:LatexBox_viewer="/Applications/Skim.app" "Open files with Skim
let g:LatexBox_complete_inlineMath=1 "inline math completion
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
"2}}}
" ===[  neocomplete ]=== {{{2
let g:acp#enableAtStartup = 0 " Disable AutoComplPop.
let g:neocomplete#enable_at_startup = 1 " Use neocomplete
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_smart_case = 1 " Use smartcase.
let g:neocomplete#enable_underbar_completion = 1 "Use under _ bar completion
let g:neocomplete#min_syntax_length = 3 " Set minimum syntax keyword length.
let g:neocomplete#enable_fuzzy_completion = 1 " Use fuzzy completion
let g:neocomplete#max_list = 5 " Size of list
let g:neocomplete#enable_camel_case_completion = 1 " Use camel case completion.


" Enable heavy omni completion.
if !exists('g:neocompelte#omni_patterns')
  let g:neocompelte#omni_patterns = {}
endif
let g:neocompelte#omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocompelte#omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" Uses lists from similar files
if !exists('g:neocompelte#same_filetype_lists')
    let g:neocompelte#same_filetype_lists = {}
endif

let g:neocompelte#same_filetype_lists.c = 'cpp,d,cu' " In c buffers, completes from cpp and d buffers.
let g:neocompelte#same_filetype_lists.cpp = 'c' " In cpp buffers, completes from c buffers.
let g:neocompelte#same_filetype_lists.gitconfig = '_' " In gitconfig buffers, completes from all buffers.
let g:neocompelte#same_filetype_lists._ = '_' " In default, completes from all buffers.
let g:neocompelte#same_filetype_lists.scala = 'java' "Complete Scala from Java

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"2}}}
" ===[Rainbow Parentheses ]=== {{{2
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16

let g:rbpt_loadcmd_toggle = 0
" 2}}}
" ===[ Easyalign ]=== {{{2
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
"2}}}
"===[ TagBar]=== {{{2


"2}}}
"1}}}
