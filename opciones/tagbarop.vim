"===[ Haskell tags ]=== {{{1
let g:easytags_languages = {
\   'haskell': {
\       'cmd': '~/.cabal/bin/lushtags',
\       'args': [],
\       'fileoutput_opt': '-f',
\       'stdout_opt': '-f-',
\       'recurse_flag': '-R'
\   }
\}

if executable('lushtags')
    let g:tagbar_type_haskell = {
        \ 'ctagsbin' : 'lushtags',
        \ 'ctagsargs' : '--ignore-parse-error --',
        \ 'kinds' : [
            \ 'm:module:0',
            \ 'e:exports:1',
            \ 'i:imports:1',
            \ 't:declarations:0',
            \ 'd:declarations:1',
            \ 'n:declarations:1',
            \ 'f:functions:0',
            \ 'c:constructors:0'
        \ ],
        \ 'sro' : '.',
        \ 'kind2scope' : {
            \ 'd' : 'data',
            \ 'n' : 'newtype',
            \ 'c' : 'constructor',
            \ 't' : 'type'
        \ },
        \ 'scope2kind' : {
            \ 'data' : 'd',
            \ 'newtype' : 'n',
            \ 'constructor' : 'c',
            \ 'type' : 't'
        \ }
    \ }
endif
"1}}}
" ===[ Latex ctags options ]==== {{{1
let g:tagbar_type_tex = {
    \ 'ctagstype' : 'latex',
    \ 'kinds'     : [
        \ 's:sections',
        \ 'g:graphics:0:0',
        \ 'l:labels',
        \ 'r:refs:1:0',
        \ 'p:pagerefs:1:0'
    \ ],
    \ 'sort'    : 0,
    \ }
"1}}}
" ===[ Snippets ]=== {{{1
let g:tagbar_type_snippets = {
    \ 'ctagstype' : 'snippets',
    \ 'kinds' : [
        \ 's:snippets',
    \ ]
\ }
" 1}}}
" ===[ Tagbar options ]=== {{{1
let g:tagbar_width=26
let g:tagbar_autofocus=1
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_autofocus=1
let g:tagbar_autoclose=1
"1}}}
" ===[ Easytags options ]=== {{{1
let g:easytags_dynamic_files = 2
let g:easytags_auto_highlight = 0
let g:easytags_auto_update = 0
let g:easytags_resolve_links = 1
set tags+=./tags
set tags+=./.tags
set tags+=./.git/tags

"1}}}
