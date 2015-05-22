"Opciones Globales
"===[ Gui options ]===" {{{1
set title             " para darle a la ventana el nombre del archivo
set ruler             " en vez de ponerte el numero de linea, en cada linea, lo muestra al fondo
set wrap              " una linea de texto por pantalla
set number            " show line numbers
set showcmd           " shows last entered command
set lazyredraw        " redraw screen only when needed
set textwidth=80      " maximo de caracteres por linea
set showmatch         " show matching brackets
set laststatus=2      " always show status line
set cursorline        " set cursorcolumn
set linebreak
set display+=lastline
set mouse=a
"1}}}
"===[ Text Formatting options ]=== {{{1
set encoding=utf-8             " unicode
set ai                         " Auto indent
set si                         " smart indent
set splitright                 " Make vertical splits work sanely
set splitbelow                 " Make horizontal splits work sanely
set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2
set ignorecase                 " estas dos opciones sirven para
set smartcase                  " buscar mejor, ignora mayusculas y las revisa solo si especificado
set history=1000               " aumenta el historial
set backspace=indent,eol,start " Intuitive backspacing in insert mode
filetype on
filetype plugin on
filetype indent on
set incsearch                  " ...dynamically as they are typed
set hlsearch                   " highlighted search
"1}}}
"===[ Disable all bells ]=== {{{1
set t_vb=
set novisualbell                 " esto sirve para que VIM no suene xD
set noerrorbells                 " esto para que no ladille cuando hay errores
autocmd! GUIEnter * set vb t_vb=
"1}}}"
"===[ Line Return on reopening ]=== {{{1
" Make sure Vim returns to the same line when you reopen a file.
" Return to last edit position when opening files (You want this!)
augroup last_edit
autocmd!
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "normal! g`\"" |
\ endif
augroup END

" Remember info about open buffers on close
set viminfo^=%
"1}}}
"===[ Wildmenu ]=== {{{1
set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=**.~,.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.hi                            " haskell bin
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
"1}}}
"===[ Others ]=== {{{1
set ttyfast
set directory=/tmp                    " directory to place swap files in
set noswapfile                        " no quiero mas swaps
set fileformats=mac,unix,dos          " support all three, in this order
set modelines=0                       " CVE-2007-2438
set nocompatible                      " Use Vim defaults instead of 100% vi compatibility
autocmd BufEnter * :cd %:p:h          " auto-change directory to current buffer
set dictionary+=/usr/share/dict/words
set nobackup                          " Don't want any backup magic
set tags=./tags,./../tags,./*/tags
set pdev=pdf
set autoread                          " If a file is changed outside of vim, automatically reload it without asking

"1}}}
"===[ Folding ]=== {{{1
set foldmethod=indent
set foldmethod=syntax
set foldlevel=20
"1}}}
"===[ Undo options ]=== {{{1
" enable persistent undo
if has('persistent_undo')
    set undofile
    set undodir=~/.vim/tmp/undo
    if !isdirectory(&undodir)
        call mkdir(&undodir, 'p')
    endif
    set undoreload=10000
endif
"1}}}
" ===[ Omni completion options ]=== {{{
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menu,preview
" }}}
" ===[ Annoyance Fixers ]==== {{{1
nnoremap <F1> <nop> "used to toggle help
nnoremap Q <nop> "used to start ex mode
nnoremap K <nop> "man pages wtf

" correct vim commands typos
" from: http://blog.sanctum.geek.nz/vim-command-typos/
if has("user_commands")
    command! -bang -nargs=? -complete=file E e<bang> <args>
    command! -bang -nargs=? -complete=file W w<bang> <args>
    command! -bang -nargs=? -complete=file Wq wq<bang> <args>
    command! -bang -nargs=? -complete=file WQ wq<bang> <args>
    command! -bang Wa wa<bang>
    command! -bang WA wa<bang>
    command! -bang Q q<bang>
    command! -bang QA qa<bang>
    command! -bang Qa qa<bang>
endif

" show cursorline in the current window
augroup cline
    au!
    au WinLeave * set nocursorline
    au WinEnter * set cursorline
    au InsertEnter * set cursorline
    au InsertLeave * set cursorline
augroup END
"1}}}
" ===[ Print options ]=== {{{
" set pdev=pdf
set printoptions=paper:A4,syntax:y,wrap:y,duplex:long
" }}}
