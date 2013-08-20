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

"abre la lista de tags
map <Leader>ts :TagbarToggle<CR> 

"crea los tags para los archivos en el directorio actual
map <Leader>gt :!/opt/local/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"teclar para escribir :tag mas rapido
map <Leader>tg :tag
map <Leader>sp :set paste<CR>

"paste key, con buena indentacion
map <Leader>p p=`]
"indenta de manera correcta todo el archivo
map <Leader>= 1G=G
"cambio de buffer mas rapido
map <Leader>b :bn<CR>

"windows navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"tasklist 
map <Leader>td <Plug>TaskList

"gundo
map <Leader>g :GundoToggle<CR>

"nerd tree
map <Leader>n :NERDTreeToggle<CR>
"rope vim
"navigate inside the code. Supporst inserting import statements, goto
"definitions, code completion
"map <leader>j :RopeGotoDefinition<CR>
"map <leader>r :RopeRename<CR>

"Ack, like grep but better
nmap <leader>a <Esc>:Ack!

"Clear highlights from search
map <Leader>/ :nohls<CR>

"copy and paste (clipboard)
map <leader>cp :%!pbcopy<CR> "copies all file to clipboard
map <leader>pp :set paste<CR>:r !pbpaste<CR> :set nopaste<CR> "pastes text with good formatting

"one screen line at a time (instead of vim line)
nmap j gj
nmap k gk

"syntastic manual check
map <leader>ch :SyntasticCheck<CR>
