let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>(neocomplcache_start_omni_complete) 
inoremap <silent> <Plug>(neocomplcache_start_auto_complete_no_select) 
inoremap <silent> <Plug>(neocomplcache_start_auto_complete) =neocomplcache#mappings#popup_post()
inoremap <silent> <expr> <Plug>(neocomplcache_start_unite_quick_match) unite#sources#neocomplcache#start_quick_match()
inoremap <silent> <expr> <Plug>(neocomplcache_start_unite_complete) unite#sources#neocomplcache#start_complete()
inoremap <D-BS> 
inoremap <M-BS> 
inoremap <M-Down> }
inoremap <D-Down> <C-End>
inoremap <M-Up> {
inoremap <D-Up> <C-Home>
noremap! <M-Right> <C-Right>
noremap! <D-Right> <End>
noremap! <M-Left> <C-Left>
noremap! <D-Left> <Home>
imap <S-Tab> <Plug>SuperTabBackward
inoremap <C-Tab> 	
inoremap <silent> <Plug>delimitMateS-Tab =delimitMate#JumpAny()
inoremap <silent> <Plug>delimitMateSpace =delimitMate#ExpandSpace()
inoremap <silent> <Plug>delimitMateCR =delimitMate#ExpandReturn()
inoremap <silent> <expr> <Plug>delimitMateS-BS delimitMate#WithinEmptyPair() ? "\<Del>" : "\<S-BS>"
inoremap <silent> <Plug>delimitMateBS =delimitMate#BS()
inoremap <silent> <Plug>delimitMate` =delimitMate#QuoteDelim("\`")
inoremap <silent> <Plug>delimitMate' =delimitMate#QuoteDelim("\'")
inoremap <silent> <Plug>delimitMate" =delimitMate#QuoteDelim("\"")
inoremap <silent> <Plug>delimitMate} =delimitMate#JumpOut("\}")
inoremap <silent> <Plug>delimitMate] =delimitMate#JumpOut("\]")
inoremap <silent> <Plug>delimitMate) =delimitMate#JumpOut("\)")
inoremap <silent> <Plug>delimitMate{ =delimitMate#ParenDelim("}")
inoremap <silent> <Plug>delimitMate[ =delimitMate#ParenDelim("]")
inoremap <silent> <Plug>delimitMate( =delimitMate#ParenDelim(")")
inoremap <C-Space> 
inoremap <Nul> 
inoremap <Right> <Nop>
inoremap <Left> <Nop>
inoremap <Down> <Nop>
inoremap <Up> <Nop>
vnoremap  "*y
noremap  h
nnoremap <NL> j
nnoremap  k
nnoremap  l
map ,t :w:silent !pdflatex -synctex=1 --interaction=nonstopmode %:p :silent !/Applications/Skim.app/Contents/SharedSupport/displayline -r =line(".") %<.pdf %:silent !osascript -e "tell application \"MacVim\" to activate" 
map ,r :w:silent !/Applications/Skim.app/Contents/SharedSupport/displayline -r =line(".") %<.pdf %:silent !osascript -e "tell application \"MacVim\" to activate" 
map ,m :w:silent !make :silent !/Applications/Skim.app/Contents/SharedSupport/displayline -r =line(".") %<.pdf %
map ,e <Plug>OpspacingCorr
nnoremap ,lv :LatexView
nnoremap ,ll :Latexmk!
nnoremap ,l9 :tabonly:source ~/.vim/.sessions/s9.vim
nnoremap ,l8 :tabonly:source ~/.vim/.sessions/s8.vim
nnoremap ,l7 :tabonly:source ~/.vim/.sessions/s7.vim
nnoremap ,l6 :tabonly:source ~/.vim/.sessions/s6.vim
nnoremap ,l5 :tabonly:source ~/.vim/.sessions/s5.vim
nnoremap ,l4 :tabonly:source ~/.vim/.sessions/s4.vim
nnoremap ,l3 :tabonly:source ~/.vim/.sessions/s3.vim
nnoremap ,l2 :tabonly:source ~/.vim/.sessions/s2.vim
nnoremap ,l1 :tabonly:source ~/.vim/.sessions/s1.vim
nnoremap ,s9 :mksession! ~/.vim/.sessions/s9.vim
nnoremap ,s8 :mksession! ~/.vim/.sessions/s8.vim
nnoremap ,s7 :mksession! ~/.vim/.sessions/s7.vim
nnoremap ,s6 :mksession! ~/.vim/.sessions/s6.vim
nnoremap ,s5 :mksession! ~/.vim/.sessions/s5.vim
nnoremap ,s4 :mksession! ~/.vim/.sessions/s4.vim
nnoremap ,s3 :mksession! ~/.vim/.sessions/s3.vim
nnoremap ,s2 :mksession! ~/.vim/.sessions/s2.vim
nnoremap ,s1 :mksession! ~/.vim/.sessions/s1.vim
nnoremap ,ls :tabonly:source ~/.vim/.sessions/last.vim
nnoremap ,ss :mksession! ~/.vim/.sessions/last.vim
nnoremap ,sq :mksession! ~/.vim/.sessions/last.vim:qall
nnoremap <silent> ,O :Unite -silent -start-insert file_rec/async
nnoremap <silent> ,o :Unite -silent -start-insert file
nnoremap <silent> ,tl :Unite -silent -toggle grep:%::FIXME|TODO|NOTE
nnoremap <silent> ,g :Unite -silent -no-quit grep
nnoremap <silent> ,y :Unite -silent history/yank
nnoremap ,tf :call FoldColumnToggle()
nnoremap ,pe :cprevious
nnoremap ,ne :cnext
nnoremap ,db :bd
nnoremap <silent> ,b :Unite -silent buffer
nnoremap ,ts :TagbarToggle
nnoremap ,/ :nohls
nnoremap ,stm :SyntasticToggleMode
nnoremap ,ch :SyntasticCheck
nnoremap ,a :Ack!
nnoremap ,n :NERDTreeToggle
nnoremap ,u :GundoToggle
nmap ,td <Plug>TaskList
nnoremap ,lt :TlistToggle
nnoremap ,os :CorrSpacing
map ,c "+y
map ,v :w:silent !/Applications/Skim.app/Contents/SharedSupport/displayline -r =line(".") %<.pdf %
nnoremap ,= 1G=G
map ,p :w:silent !pdflatex -synctex=1 --interaction=nonstopmode %:p :silent !/Applications/Skim.app/Contents/SharedSupport/displayline -r =line(".") %<.pdf %
nnoremap ,sp :set paste
nnoremap ,ps :set nopaste
nnoremap ,sv :source $MYVIMRC
nnoremap ,ev :vsplit $MYVIMRC
nmap <silent> ,s :set spell!
nnoremap ,w :w!
noremap / :call SearchCompleteStart()/
nnoremap <leader > q :call QuickfixToggle()
nnoremap J 
nnoremap K 
xmap S <Plug>VSurround
nmap \\u <Plug>CommentaryUndo:echomsg '\\ is deprecated. Use gc'
nmap \\\ <Plug>CommentaryLine:echomsg '\\ is deprecated. Use gc'
nmap \\ :echomsg '\\ is deprecated. Use gc'<Plug>Commentary
xmap \\ <Plug>Commentary:echomsg '\\ is deprecated. Use gc'
nmap cs <Plug>Csurround
nmap cgc <Plug>ChangeCommentary
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
onoremap <silent> io :normal vio
vmap <silent> io <Plug>InnerOffside
nnoremap j gj
nnoremap k gk
map <silent> tw :call GHC_ShowType(1)"
map <silent> tu :call GHC_BrowseAll()
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nmap zuz <Plug>(FastFoldUpdate)
noremap <M-Down> }
noremap <D-Down> <C-End>
noremap <M-Up> {
noremap <D-Up> <C-Home>
noremap <M-Right> <C-Right>
noremap <D-Right> <End>
noremap <M-Left> <C-Left>
noremap <D-Left> <Home>
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cfile>"),0)
nnoremap <silent> <Plug>(vimshell_create) :VimShellCreate
nnoremap <silent> <Plug>(vimshell_switch) :VimShell
nnoremap <silent> <Plug>SurroundRepeat .
nmap <silent> <Plug>CommentaryUndo <Plug>Commentary<Plug>Commentary
nnoremap <Plug>GoldenViewSwitchWithSmallest :call GoldenView#zl#window#switch_buffer_with_smallest()
nnoremap <Plug>GoldenViewSwitchWithLargest :call GoldenView#zl#window#switch_buffer_with_largest()
nnoremap <Plug>GoldenViewSwitchToggle :call GoldenView#zl#window#switch_buffer_toggle()
nnoremap <Plug>GoldenViewSwitchMain :call GoldenView#SwitchMain()
nnoremap <Plug>GoldenViewPrevious :call GoldenView#zl#window#previous_window_or_tab()
nnoremap <Plug>GoldenViewNext :call GoldenView#zl#window#next_window_or_tab()
nnoremap <Plug>GoldenViewSplit :call GoldenView#Split()
nnoremap <Plug>GoldenViewResize :GoldenViewResize
nnoremap <Plug>ToggleGoldenViewAutoResize :ToggleGoldenViewAutoResize
nnoremap <silent> <Plug>(FastFoldUpdate) :FastFoldUpdate!
vmap <BS> "-d
imap S <Plug>ISurround
imap s <Plug>Isurround
imap 	 <Plug>SuperTabForward
imap  <Plug>Isurround
inoremap  "*gP
inoremap jj 
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set balloonexpr=SyntasticBalloonsExprNotifier()
set completefunc=neocomplcache#complete#manual_complete
set completeopt=longest,menu,preview
set dictionary=/usr/share/dict/words
set directory=/tmp
set display=lastline
set eadirection=ver
set errorfile=~/Documents/Docs/application/Masters/Oxford/finalFocus.log
set errorformat=%E!\ LaTeX\ %trror:\ %m,%E%f:%l:\ %m,%E!\ %m,%Z<argument>\ %m,%Cl.%l\ %m,%-C(biblatex)%.%#in\ t%.%#,%-C(biblatex)%.%#Please\ v%.%#,%-C(biblatex)%.%#LaTeX\ a%.%#,%-Z(biblatex)%m,%-C(hyperref)%.%#on\ input\ line\ %l.,%-G%.%#Underfull%.%#,%-G%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%+W%.%#Warning:\ %m,%+P**%f,%+P**\"%f\",%-G%.%#
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set guitablabel=%M%t
set helplang=en
set hlsearch
set ignorecase
set incsearch
set langmenu=none
set laststatus=2
set lazyredraw
set modelines=0
set mouse=a
set omnifunc=syntaxcomplete#Complete
set printdevice=pdf
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set ruler
set runtimepath=~/.vim,~/.vim/bundle/airline,~/.vim/bundle/delimitMate,~/.vim/bundle/fastFold,~/.vim/bundle/goldenView,~/.vim/bundle/gundo,~/.vim/bundle/hdevtools,~/.vim/bundle/latex-box,~/.vim/bundle/macvim-skim,~/.vim/bundle/neco-ghc,~/.vim/bundle/neocomplcache,~/.vim/bundle/nerdtree,~/.vim/bundle/opspacing,~/.vim/bundle/searchComplete,~/.vim/bundle/semantic-highlight,~/.vim/bundle/superTab,~/.vim/bundle/syntastic,~/.vim/bundle/tabular,~/.vim/bundle/tagbar,~/.vim/bundle/tasklist,~/.vim/bundle/unite,~/.vim/bundle/vim-bash,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/vim-commentary,~/.vim/bundle/vim-easydir,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-ghcmod,~/.vim/bundle/vim-pathogen,~/.vim/bundle/vim-surround,~/.vim/bundle/vim2hs,~/.vim/bundle/vimbed,~/.vim/bundle/vimproc,~/.vim/bundle/vimshell,/usr/local/Cellar/macvim/7.4-73_1/MacVim.app/Contents/Resources/vim/vimfiles,/usr/local/Cellar/macvim/7.4-73_1/MacVim.app/Contents/Resources/vim/runtime,/usr/local/Cellar/macvim/7.4-73_1/MacVim.app/Contents/Resources/vim/vimfil
set shiftwidth=4
set showmatch
set smartcase
set smartindent
set smarttab
set softtabstop=4
set spelllang=en_gb,it,es
set splitbelow
set splitright
set noswapfile
set tabstop=2
set tags=./tags,./../tags,./*/tags
set termencoding=utf-8
set textwidth=80
set title
set undodir=~/.vim/tmp/undo
set undofile
set visualbell
set wildignore=*.o,*.~
set wildmenu
set wildmode=list:longest
set winheight=40
set winminheight=4
set winminwidth=25
set winwidth=106
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/Docs/application/Masters/Oxford
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +11 ~/Dropbox/ProjectYork/writeUp/main.tex
badd +0 finalFocus.tex
argglobal
silent! argdel *
edit finalFocus.tex
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <BS> <Plug>delimitMateBS
imap <buffer> <S-BS> <Plug>delimitMateS-BS
inoremap <buffer> <Plug>delimitMateJumpMany =delimitMate#JumpMany()
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=neocomplcache#complete#manual_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
setlocal foldexpr=LatexBox_FoldLevel(v:lnum)
setlocal foldignore=#
set foldlevel=20
setlocal foldlevel=20
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=LatexBox_FoldText()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=LatexBox_TexIndent()
setlocal indentkeys=0=\\end,0=\\end{enumerate},0=\\end{itemize},0=\\end{description},0=\\right,0=\\item,0=\\),0=\\],0},o,O,0\\
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=LatexBox_Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb,it,es
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.tex
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=2
setlocal tags=~/Documents/Docs/application/Masters/.git/tex.tags,~/Documents/Docs/application/Masters/.git/tags,./tags,./../tags,./*/tags
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal winfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 53 - ((13 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
53
normal! 0
lcd ~/Documents/Docs/application/Masters/Oxford
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=40 winwidth=106 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
