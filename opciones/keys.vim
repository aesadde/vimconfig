" KEYS OPTIONS ---------------------------------- {{{
"map Leader
let mapleader=","
let g:mapleader=","

"fast saving 
noremap <Leader>w :w!<CR> 
noremap <Leader>q :wq<CR>

"funcion para prender y apagar el spelling
nmap <silent> <leader>s :set spell!<CR>

"crea los tags para los archivos en el directorio actual
noremap <Leader>gt :!ctags -R  --c++-kinds=+p --fields=+iaS --extra=+q --langnoremap=C++:+.cu .<CR>
"teclar para escribir :tag mas rapido
noremap <Leader>tg :tag
"----TAGS END-----"

"-----TEXT FORMATTING------"
"toggle paste mode
noremap <Leader>ps :set nopaste<CR>
noremap <Leader>sp :set paste<CR>

"paste key, con buena indentacion
noremap <Leader>p p=`]
"indenta de manera correcta todo el archivo
noremap <Leader>= 1G=G
"-----TEXT FORMATTING END----"

"-----PLUGINS SHORTCUTS---------"

"tasklist 
nnoremap <Leader>td <Plug>TaskList

"gundo
noremap <Leader>g :GundoToggle<CR>

"nerd tree
noremap <Leader>n :NERDTreeToggle<CR>

"Ack, like grep but better
nnoremap <leader>a <Esc>:Ack!

"syntastic manual check
noremap <leader>ch :SyntasticCheck<CR>
noremap <Leader>stm :SyntasticToggleMode<CR>

"Clear highlights from search
noremap <Leader>/ :nohls<CR>

"-------TAGS-----------"
"abre la lista de tags
noremap <Leader>ts :TagbarToggle<CR> 
"--------PLUGINS SHORTCUTS END ------"


"fast vimrc editing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>


"--------------MOTION---------------------"
"one screen line at a time (instead of vim line)
nnoremap j gj
nnoremap k gk
"renoremap CTRL-F/B" to move page up or down
nnoremap J <c-F>
nnoremap K <c-B>

"cambio de buffer mas rapido
noremap <Leader>b :bn<CR>
"remove buffer
noremap <Leader>db :bd<CR>

noremap <Leader>m :execute "vimgrep /" . expand("<cword>") . "/jg ./**/*.cu *.cpp" <Bar> cw<CR>
"windows navigation
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
noremap <c-h> <c-w>h

"this are to get used to NOT use arrow keys in insert mode (good practice is
"to exit to normal mode and move using normal keysnormal keys
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
"-------MOTION END----------------"

inoremap ; <esc>$a;
"inoremap ( ()<esc>i
"inoremap { {<cr><cr>}<esc>ki<tab>
" }}}
"inoremap <tab> <c-n>
