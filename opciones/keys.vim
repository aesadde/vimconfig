"map Leader
let mapleader=","
let g:mapleader=","

"fast saving 
map <Leader>w :w!<CR> 
map <Leader>q :wq<CR>

"fast searching
"map <space> /
"map <c-space> ?
"map <silent> <Leader><CR> :noh<CR>

"-------TAGS-----------"
"abre la lista de tags
map <Leader>ts :TagbarToggle<CR> 

"crea los tags para los archivos en el directorio actual
map <Leader>gt :!ctags -R  --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"teclar para escribir :tag mas rapido
map <Leader>tg :tag
"----TAGS END-----"

"-----TEXT FORMATTING------"
"toggle paste mode
map <Leader>ps :set nopaste<CR>
map <Leader>sp :set paste<CR>

"paste key, con buena indentacion
map <Leader>p p=`]
"indenta de manera correcta todo el archivo
map <Leader>= 1G=G
"-----TEXT FORMATTING END----"

"-----PLUGINS SHORTCUTS---------"
"tasklist 
map <Leader>td <Plug>TaskList

"gundo
map <Leader>g :GundoToggle<CR>

"nerd tree
map <Leader>n :NERDTreeToggle<CR>

"Ack, like grep but better
nmap <leader>a <Esc>:Ack!

"syntastic manual check
map <leader>ch :SyntasticCheck<CR>
map <Leader>stm :SyntasticToggleMode<CR>

"Clear highlights from search
map <Leader>/ :nohls<CR>

"--------PLUGINS SHORTCUTS END ------"

"--------------MOTION---------------------"
"one screen line at a time (instead of vim line)
nmap j gj
nmap k gk
"remap CTRL-F/B" to move page up or down
nmap J <c-F>
nmap K <c-B>

"cambio de buffer mas rapido
map <Leader>b :bn<CR>
"remove buffer
map <Leader>db :bd<CR>

"windows navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
"-------MOTION END----------------"
