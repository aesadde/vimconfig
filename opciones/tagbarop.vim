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
" ===[ Easytags options ]=== {{{1
let g:easytags_dynamic_files = 2
let g:easytags_auto_highlight = 0
let g:easytags_auto_update = 0
let g:easytags_resolve_links = 1
set tags+=./tags
set tags+=./.tags
set tags+=./.git/tags

"1}}}
