"pathogen stuff
"Pathogen is in a submodule so need this at the beginning of vimrc
runtime bundle/vim-pathogen/autoload/pathogen.vim
filetype off
"disable plugins that I don't want instead of removing them completely

" Disable/enable plugins depending on Gui ------- {{{
if has('gui_macvim')
    let g:pathogen_disabled = []
else
    let g:pathogen_disabled = ['vim-YouCompleteMe', 'supertab']
endif
" }}}

" pathogen initialisation ---------------------- {{{
call pathogen#infect()
call pathogen#incubate()
call pathogen#helptags()
" }}}

" Vim marker folding method for vimscripts --------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" ABBREVIATIONS -------------------------------------- {{{
" File owner abbreviations --------------------- {{{
iabbrev MyName Alberto Sadde
iabbrev CompName Alberto Ernesto Sadde Olivieri
iabbrev @@ albertosadde@gmail.com
iabbrev ccopy Copyright 2013 Alberto Sadde, all rights reserved.
" }}}

" English abbreviations --------- {{{
iabbrev adn an&d
iabbrev waht what
iabbrev tehn then
iabbrev teh the 
" }}}
" }}}

" GLOBAL OPTIONS ------------------------ {{{
"Opciones Globales
set pdev=pdf
set history=1000 "aumenta el historial
set ignorecase " estas dos opciones sirven para
set smartcase  " buscar mejor, ignora mayusculas y las revisa solo si especificado
set title "para darle a la ventana el nombre del archivo
set ruler "en vez de ponerte el numero de linea, en cada linea, lo muestra al fondo
set wrap "una linea de texto por pantalla
set tags=./tags,./../tags,./*/tags

" Intuitive backspacing in insert mode
set backspace=indent,eol,start
syntax on
filetype on
filetype plugin on
filetype indent on
set incsearch " ...dynamically as they are typed
"set term=ansi
set hlsearch "highlighted search
set novisualbell "esto sirve para que VIM no suene xD
set noerrorbells  "esto para que no ladille cuando hay errores

"otras para probar
"Bash-like filename completion
set wildmenu
set wildmode=list:longest
set wildignore=*.o,*.fasl
set mouse=a
set directory=/tmp " directory to place swap files in
set noswapfile "no quiero mas swaps
set fileformats=mac,unix,dos " support all three, in this order
set showmatch " show matching brackets

set modelines=0         " CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible        " Use Vim defaults instead of 100% vi compatibility
set backspace=2
set ofu=syntaxcomplete "esto prende el auto completion

"esto es para que no me deje escribir mas de 80 caracteres por linea
"match ErrorMsg /\%>80v.\+/
"lo que sigue es para mejorar el statusline
set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [POS=%04l,%04v]\ [%p%%]
set statusline+=%{fugitive#statusline()}
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]
set laststatus=2

set statusline+=%#waningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set encoding=utf-8 "unicode
" highlight de la linea en la que se escribe ( columna opcional )
"set cursorcolumn
set cursorline
" auto-change directory to current buffer
autocmd BufEnter * :cd %:p:h
"diccionario para autocomplete
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words

"maximo de caracteres por linea
"set textwidth=80

set splitright                  " Make vertical splits work sanely
set splitbelow                  " Make horizontal splits work sanely
set nobackup                    " Don't want any backup magic
set smartindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
"set number   not needed when using the cool status line
set linebreak
set display+=lastline

"code folding
set foldmethod=indent
set foldmethod=syntax
set foldlevel=20

"undo stuff
"set undodir=~/.vim/undodir
"set undofile


"automatically reload vimrc when its saved!
au BufWritePost .vimrc so ~/.vimrc
" }}}

" PLUGINS ----------------------------- {{{
" vim-syntastic options ----- {{{
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 1
let g:syntatstic_filetype_map = { 'latex': 'tex', 'cuda': 'cu'}
" }}}
" vim-airline options --------- {{{
let g:airline_left_sep='|'
let g:airline_right_sep='|'
" }}}
" vim-latex options ---------------------------------------------------- {{{
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf='pdflatex'
" }}}
" vim-tasklist options ---------------- {{{
"token list for Tasklist. I keep the original ones and add EDITED to check
"stuff I edited on code I am changing"
    let g:tlTokenList = ["FIXME", "TODO", "XXX", "EDITED","DEBUG"]
" }}}
" }}}

" COLORS ------------------------ {{{
syntax enable

let s:uname = system("uname")

if s:uname == "Darwin"
    set background=dark
endif

colorscheme solarized

if !has('gui_running')
    " Compatibility for Terminal
    let g:solarized_termtrans=1

    if (&t_Co >= 256 || $TERM == 'xterm-256color')
        " Do nothing, it handles itself.
    else
        " Make Solarized use 16 colors for Terminal support
        let g:solarized_termcolors=16
    endif
endif
" }}}

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
" }}}

" SPELLING OPTIONS ----------------- {{{
set spelllang=en_gb,it,es
" }}}
