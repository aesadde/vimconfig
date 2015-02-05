"==[ Fold colunmn toggle ]== {{{1
function! FoldColumnToggle()
    if &foldcolumn
        setlocal foldcolumn = 0
    else
        setlocal foldcolumn = 4
    endif
endfunction
nnoremap <leader>tf :call FoldColumnToggle()<cr>
"1}}}
" ==[ Toggles quickfix list ]== {{{1
let g:quickfix_is_open = 0
let g:error_is_open = 0

function! QuickfixToggle()
    if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
        execute g:quickfix_return_to_window . "wincmd w"
    else
        let g:quickfix_return_to_window = winnr()
        copen
        let g:quickfix_is_open = 1
    endif
endfunction
nnoremap <leader>q :call QuickfixToggle()<cr>
"1}}}
" ===[ Trailing whitespaces ]=== {{{
function! StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction
" }}}
" ===[ Word count ]=== {{{
function! WordCount()
  let s:old_status = v:statusmsg
  let position = getpos(".")
  exe ":silent normal g\<c-g>"
  let stat = v:statusmsg
  let s:word_count = 0
  if stat != '--No lines in buffer--'
    let s:word_count = str2nr(split(v:statusmsg)[11])
    let v:statusmsg = s:old_status
  end
  call setpos('.', position)
  return s:word_count
endfunction
"}}}
