"===[ map Leader ]=== {{{1
let mapleader=","
let g:mapleader=","
let g:localLeader=","
inoremap jj <ESC>
"1}}}
"===[ MISC ]=== {{{1
"fast saving
nnoremap <Leader>w :w!<CR>

"fast vimrc editing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
"1}}}
" === [ Text formatting ]=== {{{
"toggle paste mode
nnoremap <Leader>ps :set nopaste<CR>
nnoremap <Leader>sp :set paste<CR>
inoremap <C-v> <esc>"*gP<CR>
vnoremap <C-c> "*y<CR>

"paste key, con buena indentacion
nnoremap <Leader>p p=`]
"indenta de manera correcta todo el archivo
nnoremap <Leader>= 1G=G
"}}}
" ===[ Plugins shortcuts ]=== {{{
"gundo
nnoremap <Leader>u :GundoToggle<CR>

"syntastic manual check
nnoremap <leader>ch :SyntasticCheck<CR>
nnoremap <Leader>stm :SyntasticToggleMode<CR>

"Clear highlights from search
nnoremap <Leader>/ :nohls<CR>

"Tagbar
"abre la lista de tags
nnoremap <Leader>ts :TagbarToggle<CR>

"Unite
" search a file in the filetree
nnoremap <C-P> :<C-u>Unite  -buffer-name=files   -start-insert buffer file_rec/async:!<cr>
" reset not it is <C-l> normally
nnoremap <leader>ur <Plug>(unite_restart)
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>

nnoremap // :Unite grep:.<cr>
nnoremap <leader>b :Unite buffer<cr>

function! UltiSnipsCallUnite()
  Unite -start-insert -winheight=100 -immediately -no-empty ultisnips
  return ''
endfunction

inoremap <silent> <F12> <C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
nnoremap <silent> <F12> a<C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
"}}}
" ===[ Motion ]=== {{{1
"one screen line at a time (instead of vim line)
nnoremap j gj
nnoremap k gk
nnoremap J <c-F>
nnoremap K <c-B>

"windows navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
noremap <c-h> <c-w>h

"this are to get used to NOT use arrow keys in insert mode (good practice is
"to exit to normal mode and move using normal keysnormal keys
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Move to next error after make
nnoremap  <leader>ne :cnext<cr>
nnoremap  <leader>pe :cprevious<cr>

"Vimux and ghci
nnoremap <leader>gh :call VimuxRunCommand("ghci " . bufname("%"))<CR>

function! VimuxSlime()
    call VimuxSendText(@v)
    call VimuxSendKeys("Enter")
endfunction
vmap <LocalLeader>vs "vy :call VimuxSlime()<CR>

"neo complete tab completion
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
" inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
"1}}}
