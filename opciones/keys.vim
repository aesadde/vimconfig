"map Leader
let mapleader=","
let g:mapleader=","

"fast saving 
noremap <Leader>w :w!<CR> 
noremap <Leader>q :wq<CR>

"fast searching
"noremap <space> /
"noremap <c-space> ?
"noremap <silent> <Leader><CR> :noh<CR>


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
noremap <Leader>td <Plug>TaskList

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
"-------MOTION END----------------"
