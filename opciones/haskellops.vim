"===[ ghc-mod ]=== {{{
"open quickfix window with Unit
let g:ghcmod_open_quickfix_function = 'GhcModQuickFix'
function! GhcModQuickFix()
  :Unite -no-empty quickfix
endfunction
"}}}
