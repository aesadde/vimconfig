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

"append semicolon at end of line
inoremap ; <esc>A;
"nnoremap ; mqA;<esc>`q"

"copy / paste from clipboard
map <Leader>v "+gP
map <Leader>c "+y
"}}}
" ===[ Plugins shortcuts ]=== {{{
"opspacing
nnoremap <leader>os :CorrSpacing<CR>

"gundo
nnoremap <Leader>u :GundoToggle<CR>

"nerd tree
nnoremap <Leader>n :NERDTreeToggle<CR>

"syntastic manual check
nnoremap <leader>ch :SyntasticCheck<CR>
nnoremap <Leader>stm :SyntasticToggleMode<CR>

"Clear highlights from search
nnoremap <Leader>/ :nohls<CR>

"Tagbar
"abre la lista de tags
nnoremap <Leader>ts :TagbarToggle<CR>
"}}}
" ===[ Motion ]=== {{{1
"one screen line at a time (instead of vim line)
nnoremap j gj
nnoremap k gk
"renoremap CTRL-F/B" to move page up or down
nnoremap J <c-F>
nnoremap K <c-B>

"cambio de buffer mas rapido
nnoremap <Leader>b :bn<CR>
"remove buffer
nnoremap <Leader>db :bd<CR>

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

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Same when jumping around
nnoremap g; g;zz
nnoremap g, g,zz
nnoremap <c-o> <c-o>zz
"1}}}
