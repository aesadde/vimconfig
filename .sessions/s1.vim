let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>(neocomplcache_start_omni_complete) 
inoremap <silent> <Plug>(neocomplcache_start_auto_complete_no_select) 
inoremap <silent> <Plug>(neocomplcache_start_auto_complete) =neocomplcache#mappings#popup_post()
inoremap <silent> <expr> <Plug>(neocomplcache_start_unite_quick_match) unite#sources#neocomplcache#start_quick_match()
inoremap <silent> <expr> <Plug>(neocomplcache_start_unite_complete) unite#sources#neocomplcache#start_complete()
inoremap <Plug>TexJMotionBackward :call atplib#motion#JMotion('b')a
inoremap <Plug>TexJMotionForward <Right>:call atplib#motion#JMotion('')i
imap <Plug>TexSyntaxMotionBackward :call atplib#motion#TexSyntaxMotion(0,1,1)a
imap <Plug>TexSyntaxMotionForward :call atplib#motion#TexSyntaxMotion(1,1,1)a
inoremap <silent> <Plug>iATP_TeXVerbose :call atplib#compiler#TeX(v:count1, "", 'verbose')
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
nnoremap ,p p=`]
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
nnoremap ,ll :tabonly:source ~/.vim/.sessions/last.vim
nnoremap ,ss :mksession! ~/.vim/.sessions/last.vim
nnoremap ,sq :mksession! ~/.vim/.sessions/last.vim:qall
vmap ,p :w:silent !pdflatex -synctex=1 --interaction=nonstopmode %:p :silent !/Applications/Skim.app/Contents/SharedSupport/displayline -r =line(".") %<.pdf %
omap ,p :w:silent !pdflatex -synctex=1 --interaction=nonstopmode %:p :silent !/Applications/Skim.app/Contents/SharedSupport/displayline -r =line(".") %<.pdf %
map ,t :w:silent !pdflatex -synctex=1 --interaction=nonstopmode %:p :silent !/Applications/Skim.app/Contents/SharedSupport/displayline -r =line(".") %<.pdf %:silent !osascript -e "tell application \"MacVim\" to activate" 
map ,r :w:silent !/Applications/Skim.app/Contents/SharedSupport/displayline -r =line(".") %<.pdf %:silent !osascript -e "tell application \"MacVim\" to activate" 
map ,m :w:silent !make :silent !/Applications/Skim.app/Contents/SharedSupport/displayline -r =line(".") %<.pdf %
map ,e <Plug>OpspacingCorr
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
map ,v "+gP
nnoremap ,= 1G=G
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
nnoremap <Plug>PreviousFrame :call atplib#motion#GotoFrame('backward', v:count1)
nnoremap <Plug>NextFrame :call atplib#motion#GotoFrame('forward', v:count1)
nnoremap <Plug>ATP_Labels :call atplib#motion#Labels("")
nnoremap <Plug>ATP_TOC :call atplib#motion#TOC("")
nnoremap <Plug>Replace :call atplib#various#Replace()
vmap <Plug>vTexAlign :call atplib#various#TexAlign(( g:atp_TexAlign_join_lines ? "!" : "" ), getpos("'<")[1],getpos("'>")[1])
nmap <Plug>TexAlign :call atplib#various#TexAlign(( g:atp_TexAlign_join_lines ? "!" : "" ),1,1)
nnoremap <silent> <Plug>BibSearchLast :call atplib#search#BibSearch("", b:atp_LastBibPattern, b:atp_LastBibFlags)
vnoremap <silent> <Plug>vGotoPreviousPart m':exe "normal! gv"|call search('\\\%(part\*\=\)\>', 'bW')
onoremap <silent> <Plug>GotoPreviousPart :call atplib#motion#GotoSection("", v:count1, "sb", "\\\\part\\*\\=\\>", 'vim')
nnoremap <silent> <Plug>GotoPreviousPart :call atplib#motion#GotoSection("", v:count1, "sb", "\\\\part\\*\\=\\>", ( g:atp_mapNn ? 'atp' : 'vim' ))
vnoremap <silent> <Plug>vGotoPreviousChapter m':exe "normal! gv"|call search('\\\%(chapter\|part\)\*\=\>\|\\begin\s*{\s*document\s*}', 'bW')
onoremap <silent> <Plug>GotoPreviousChapter :call atplib#motion#GotoSection("", v:count1, "sb", "\\\\\\%(chapter\\\|part\\)\\>", 'vim')<CR
nnoremap <silent> <Plug>GotoPreviousChapter :call atplib#motion#GotoSection("", v:count1, "sb", "\\\\\\%(chapter\\\|part\\)\\>", ( g:atp_mapNn ? 'atp' : 'vim' ))
vnoremap <silent> <Plug>vGotoPreviousSection m':exe "normal! gv"|call search('\\\%(section\|chapter\|part\)\*\=\>\|\\begin\s*{\s*document\s*}', 'bW')
onoremap <silent> <Plug>GotoPreviousSection :call atplib#motion#GotoSection("", v:count1, "sb", "\\\\\\%(section\\\|chapter\\\|part\\)\\*\\=\\>", 'vim')
nnoremap <silent> <Plug>GotoPreviousSection :call atplib#motion#GotoSection("", v:count1, "sb", "\\\\\\%(section\\\|chapter\\\|part\\)\\*\\=\\>", ( g:atp_mapNn ? 'atp' : 'vim' ), 'n')
vnoremap <silent> <Plug>vGotoPreviousSubSection m':exe "normal! gv"|call search('\\\%(subsection\|section\|chapter\|part\)\*\=\>\|\\begin\s*{\s*document\s*}', 'bW')
onoremap <silent> <Plug>GotoPreviousSubSection :call atplib#motion#GotoSection("", v:count1, "sb", "\\\\\\%(subsection\\\|section\\\|chapter\\\|part\\)\\*\\=\\>", 'vim')
nnoremap <silent> <Plug>GotoPreviousSubSection :call atplib#motion#GotoSection("", v:count1, "sb", "\\\\\\%(subsection\\\|section\\\|chapter\\\|part\\)\\*\\=\\>", ( g:atp_mapNn ? 'atp' : 'vim' ), 'n')
vnoremap <silent> <Plug>vGotoPreviousParagraph m':exe "normal! gv"|call search('\\\%(paragraph\\\|subsection\|section\|chapter\|part\)\*\=\>\|\\begin\s*{\s*document\s*}', 'bW')
onoremap <silent> <Plug>GotoPreviousParagraph :call atplib#motion#GotoSection("", v:count1, "sb", "\\\\\\%(paragraph\\\|subsection\\\|section\\\|chapter\\\|part\\)\\*\\=\\>", 'vim')
nnoremap <silent> <Plug>GotoPreviousParagraph :call atplib#motion#GotoSection("", v:count1, "sb", "\\\\\\%(paragraph\\\|subsection\\\|section\\\|chapter\\\|part\\)\\*\\=\\>", ( g:atp_mapNn ? 'atp' : 'vim' ), 'n')
vnoremap <silent> <Plug>vGotoNextPart m':exe "normal! gv"|exe "normal! w"|call search('^\([^%]\|\\\@<!\\%\)*\\\%(part\*\=\>\|\\end\s*{\s*document\s*}\)', 'W')|exe "normal! b"
onoremap <silent> <Plug>GotoNextPart :call atplib#motion#GotoSection("", v:count1, "s", "\\\\part\\*\\=\\>", 'vim', 'n')
nnoremap <silent> <Plug>GotoNextPart :call atplib#motion#GotoSection("", v:count1, "s", "\\\\part\\*\\=\\>", ( g:atp_mapNn ? 'atp' : 'vim' ), 'n')
vnoremap <silent> <Plug>vGotoNextChapter m':exe "normal! gv"|exe "normal! w"|call search('^\([^%]\|\\\@<!\\%\)*\\\%(chapter\|part\)\*\=\>\|\\end\s*{\s*document\s*}', 'W')|exe "normal! b"
onoremap <silent> <Plug>GotoNextChapter :call atplib#motion#GotoSection("", v:count1, "s", "\\\\\\%(chapter\\\|part\\)\\*\\=\\>", 'vim')
nnoremap <silent> <Plug>GotoNextChapter :call atplib#motion#GotoSection("", v:count1, "s", "\\\\\\%(chapter\\\|part\\)\\*\\=\\>", ( g:atp_mapNn ? 'atp' : 'vim' ))
vnoremap <silent> <Plug>vGotoNextSection m':exe "normal! gv"|exe "normal! w"|call search('^\([^%]\|\\\@<!\\%\)*\\\%(section\|chapter\|part\)\*\=\>\|\\end\s*{\s*document\s*}', 'W')|exe "normal! b"
onoremap <silent> <Plug>GotoNextSection :call atplib#motion#GotoSection("", v:count1, "s", "\\\\\\%(section\\\|chapter\\\|part\\)\\*\\=\\>", 'vim')
nnoremap <silent> <Plug>GotoNextSection :call atplib#motion#GotoSection("", v:count1, "s", "\\\\\\%(section\\\|chapter\\\|part\\)\\*\\=\\>", ( g:atp_mapNn ? 'atp' : 'vim' ), 'n', '')
vnoremap <silent> <Plug>vGotoNextSubSection m':exe "normal! gv"|exe "normal! w"|call search('^\([^%]\|\\\@<!\\%\)*\\\%(subsection\|section\|chapter\|part\)\*\=\>\|\\end\s*{\s*document\s*}', 'W')|exe "normal! b"
onoremap <silent> <Plug>GotoNextSubSection :call atplib#motion#GotoSection("", v:count1, "s","\\\\\\%(subsection\\\|section\\\|chapter\\\|part\\)\\*\\=\\>", 'vim')
nnoremap <silent> <Plug>GotoNextSubSection :call atplib#motion#GotoSection("", v:count1, "s", "\\\\\\%(subsection\\\|section\\\|chapter\\\|part\\)\\*\\=\\>", ( g:atp_mapNn ? 'atp' : 'vim' ), 'n', '')
vnoremap <silent> <Plug>vGotoNextParagraph m':exe "normal! gv"|exe "normal! w"|call search('^\([^%]\|\\\@<!\\%\)*\\\%(paragraph\|subsection\|section\|chapter\|part\)\*\=\>\|\\end\s*{\s*document\s*}', 'W')|exe "normal! b"
onoremap <silent> <Plug>GotoNextParagraph :call atplib#motion#GotoSection("", v:count1, "s","\\\\\\%(paragraph\\\|subsection\\\|section\\\|chapter\\\|part\\)\\*\\=\\>", 'vim')
nnoremap <silent> <Plug>GotoNextParagraph :call atplib#motion#GotoSection("", v:count1, "s", "\\\\\\%(paragraph\\\|subsection\\\|section\\\|chapter\\\|part\\)\\*\\=\\>", ( g:atp_mapNn ? 'atp' : 'vim' ), 'n', '')
nnoremap <Plug>TexJMotionBackward :call atplib#motion#JMotion('b')
nnoremap <Plug>TexJMotionForward :call atplib#motion#JMotion('')
nmap <Plug>TexSyntaxMotionBackward :call atplib#motion#TexSyntaxMotion(0,1)
nmap <Plug>TexSyntaxMotionForward :call atplib#motion#TexSyntaxMotion(1,1)
vnoremap <silent> <Plug>LatexBox_BackJumpToMatch :call LaTeXBox_JumpToMatch('v', 1)
nnoremap <silent> <Plug>LatexBox_BackJumpToMatch :call LaTeXBox_JumpToMatch('n', 1)
vnoremap <silent> <Plug>LatexBox_JumpToMatch :call LaTeXBox_JumpToMatch('v')
nnoremap <silent> <Plug>LatexBox_JumpToMatch :call LaTeXBox_JumpToMatch('n')
nnoremap <silent> <Plug>BibtexVerbose :call atplib#compiler#Bibtex("!", "verbose")
nnoremap <silent> <Plug>BibtexDebug :call atplib#compiler#Bibtex("!", "Debug")
nnoremap <silent> <Plug>Bibtexdebug :call atplib#compiler#Bibtex("!", "debug")
nnoremap <silent> <Plug>BibtexSilent :call atplib#compiler#Bibtex("!", "silent")
nnoremap <silent> <Plug>BibtexDefault :call atplib#compiler#Bibtex("!", "default")
nnoremap <silent> <Plug>SimpleBibtex :call atplib#compiler#Bibtex("")
noremap <silent> <Plug>ATP_TeXVerbose :call atplib#compiler#TeX(v:count1, "", 'verbose')
noremap <silent> <Plug>ATP_TeXdebug :call atplib#compiler#TeX(v:count1, "", 'debug')
noremap <silent> <Plug>ATP_TeXDebug :call atplib#compiler#TeX(v:count1, "", 'Debug')
noremap <silent> <Plug>ATP_TeXSilent :call atplib#compiler#TeX(v:count1, "", 'silent')
noremap <silent> <Plug>ATP_TeXDefault :call atplib#compiler#TeX(v:count1, "", 'default')
noremap <silent> <Plug>ATP_TeXLocal :call atplib#compiler#LocalCompiler("n", v:count1, "silent")
noremap <silent> <Plug>ATP_TeXCurrent :call atplib#compiler#TeX(v:count1, "", t:atp_DebugMode)
noremap <silent> <Plug>ATP_ViewLocalOutput_nosync :call atplib#compiler#ViewOutput("",  expand("%:p"), b:atp_LocalXpdfServer)
noremap <silent> <Plug>ATP_ViewLocalOutput_sync :call atplib#compiler#ViewOutput("!", expand("%:p"), b:atp_LocalXpdfServer)
noremap <silent> <Plug>ATP_ViewOutput_nosync :call atplib#compiler#ViewOutput("",  b:atp_MainFile, b:atp_XpdfServer)
noremap <silent> <Plug>ATP_ViewOutput_sync :call atplib#compiler#ViewOutput("!", b:atp_MainFile, b:atp_XpdfServer)
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cfile>"),0)
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
set backupskip=/tmp/*,/var/folders/2b/g365x86j16ddj6fm__sgnlfm0000gn/T/*,*.tex.project.vim,*.tex.project.vim,*.tex.project.vim,*.tex.project.vim
set completefunc=neocomplcache#complete#manual_complete
set completeopt=longest,menu,preview
set dictionary=/usr/share/dict/words
set directory=/tmp
set display=lastline
set eadirection=ver
set errorfile=~/Dropbox/ProjectYork/writeUp/main._log
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
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
set ruler
set runtimepath=~/.vim,~/.vim/bundle/airline,~/.vim/bundle/AutomaticLaTeXPlugin,~/.vim/bundle/delimitMate,~/.vim/bundle/goldenView,~/.vim/bundle/gundo,~/.vim/bundle/hdevtools,~/.vim/bundle/macvim-skim,~/.vim/bundle/neco-ghc,~/.vim/bundle/neocomplcache,~/.vim/bundle/nerdtree,~/.vim/bundle/opspacing,~/.vim/bundle/searchComplete,~/.vim/bundle/semantic-highlight,~/.vim/bundle/superTab,~/.vim/bundle/syntastic,~/.vim/bundle/tabular,~/.vim/bundle/tagbar,~/.vim/bundle/tasklist,~/.vim/bundle/unite,~/.vim/bundle/vim-bash,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/vim-commentary,~/.vim/bundle/vim-easydir,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-ghcmod,~/.vim/bundle/vim-pathogen,~/.vim/bundle/vim-surround,~/.vim/bundle/vim2hs,~/.vim/bundle/vimbed,~/.vim/bundle/vimproc,/usr/local/Cellar/macvim/7.4-73/MacVim.app/Contents/Resources/vim/vimfiles,/usr/local/Cellar/macvim/7.4-73/MacVim.app/Contents/Resources/vim/runtime,/usr/local/Cellar/macvim/7.4-73/MacVim.app/Contents/Resources/vim/vimfiles/after,~/.vim/bundle/tabular/after,~/.v
set shiftwidth=4
set showmatch
set smartcase
set smartindent
set smarttab
set softtabstop=4
set spelllang=en_gb,it,es
set splitbelow
set splitright
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pdf,.tex.project.vim,.aux,._aux,.log,.bbl,.blg,.bcf,.run.xml,.spl,.snm,.nav,.thm,.brf,.out,.toc,.mpx,.idx,.ind,.ilg,.maf,.glo,.pdfsync,.synctex.gz,._log,.dvi
set noswapfile
set tabstop=2
set tags=./tags,./../tags,./*/tags
set textwidth=80
set title
set undodir=~/.vim/tmp/undo
set undofile
set updatetime=2000
set wildignore=*.o,*.~
set wildmenu
set wildmode=list:longest
set winheight=32
set winminheight=3
set winminwidth=25
set winwidth=106
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Dropbox/ProjectYork/writeUp
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 main.tex
badd +0 ~/.vimrc
argglobal
silent! argdel *
argadd main.tex
edit main.tex
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 106 + 102) / 204)
exe 'vert 3resize ' . ((&columns * 65 + 102) / 204)
argglobal
enew
file NERD_tree_1
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
inoremap <buffer> <Plug>delimitMateJumpMany =delimitMate#JumpMany()
nnoremap <buffer> <silent> <NL> :call nerdtree#invokeKeyMap("<C-j>")
nnoremap <buffer> <silent>  :call nerdtree#invokeKeyMap("<C-k>")
nnoremap <buffer> <silent>  :call nerdtree#invokeKeyMap('o')
nnoremap <buffer> <silent> ? :call nerdtree#invokeKeyMap("?")
nnoremap <buffer> <silent> A :call nerdtree#invokeKeyMap("A")
nnoremap <buffer> <silent> B :call nerdtree#invokeKeyMap("B")
nnoremap <buffer> <silent> CD :call nerdtree#invokeKeyMap("CD")
nnoremap <buffer> <silent> C :call nerdtree#invokeKeyMap("C")
nnoremap <buffer> <silent> D :call nerdtree#invokeKeyMap("D")
nnoremap <buffer> <silent> F :call nerdtree#invokeKeyMap("F")
nnoremap <buffer> <silent> I :call nerdtree#invokeKeyMap("I")
nnoremap <buffer> <silent> J :call nerdtree#invokeKeyMap("J")
nnoremap <buffer> <silent> K :call nerdtree#invokeKeyMap("K")
nnoremap <buffer> <silent> O :call nerdtree#invokeKeyMap("O")
nnoremap <buffer> <silent> P :call nerdtree#invokeKeyMap("P")
nnoremap <buffer> <silent> R :call nerdtree#invokeKeyMap("R")
nnoremap <buffer> <silent> T :call nerdtree#invokeKeyMap("T")
nnoremap <buffer> <silent> U :call nerdtree#invokeKeyMap("U")
nnoremap <buffer> <silent> X :call nerdtree#invokeKeyMap("X")
nnoremap <buffer> <silent> cd :call nerdtree#invokeKeyMap("cd")
nnoremap <buffer> <silent> e :call nerdtree#invokeKeyMap("e")
nnoremap <buffer> <silent> f :call nerdtree#invokeKeyMap("f")
nnoremap <buffer> <silent> gi :call nerdtree#invokeKeyMap("gi")
nnoremap <buffer> <silent> gs :call nerdtree#invokeKeyMap("gs")
nnoremap <buffer> <silent> go :call nerdtree#invokeKeyMap("go")
nnoremap <buffer> <silent> i :call nerdtree#invokeKeyMap("i")
nnoremap <buffer> <silent> m :call nerdtree#invokeKeyMap("m")
nnoremap <buffer> <silent> o :call nerdtree#invokeKeyMap("o")
nnoremap <buffer> <silent> p :call nerdtree#invokeKeyMap("p")
nnoremap <buffer> <silent> q :call nerdtree#invokeKeyMap("q")
nnoremap <buffer> <silent> r :call nerdtree#invokeKeyMap("r")
nnoremap <buffer> <silent> s :call nerdtree#invokeKeyMap("s")
nnoremap <buffer> <silent> t :call nerdtree#invokeKeyMap("t")
nnoremap <buffer> <silent> u :call nerdtree#invokeKeyMap("u")
nnoremap <buffer> <silent> x :call nerdtree#invokeKeyMap("x")
nnoremap <buffer> <silent> <2-LeftMouse> :call nerdtree#invokeKeyMap("<2-LeftMouse>")
nnoremap <buffer> <silent> <LeftRelease> <LeftRelease>:call nerdtree#invokeKeyMap("<LeftRelease>")
nnoremap <buffer> <silent> <MiddleRelease> :call nerdtree#invokeKeyMap("<MiddleRelease>")
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
setlocal bufhidden=hide
setlocal nobuflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=LaTeX\\\ %trror::%f::%l::%c::%m,Citation\ %tarning::%f::%l::%c::%m,Reference\ LaTeX\ %tarning::%f::%l::%c::%m
setlocal expandtab
if &filetype != 'nerdtree'
setlocal filetype=nerdtree
endif
set foldcolumn=4
setlocal foldcolumn=0
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=20
setlocal foldlevel=20
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
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
setlocal nomodifiable
setlocal nrformats=octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
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
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'nerdtree'
setlocal syntax=nerdtree
endif
setlocal tabstop=2
setlocal tags=~/Dropbox/ProjectYork/.git/tags,./tags,./../tags,./*/tags
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal winfixwidth
setlocal nowrap
setlocal wrapmargin=0
wincmd w
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
imap <buffer> <F1> <Plug>iTexdoc
inoremap <buffer> <Plug>iTexdoc :Texdoc 
imap <buffer> <silent> <F6>f :ShowErrors f
imap <buffer> <silent> <F6>r :ShowErrors rc
imap <buffer> <silent> <F6>w :ShowErrors w
imap <buffer> <silent> <F6> :ShowErrors e
imap <buffer> <silent> <F6>l <Plug>OpenLog
imap <buffer> <silent> <F6>d <Plug>Delete
imap <buffer> <silent> <S-F5> <Plug>ToggleAuTeX
imap <buffer> <silent> <S-F3> <Plug>ATP_ViewLocalOutput_sync
imap <buffer> <silent> <F3> <Plug>ATP_ViewOutput_sync
imap <buffer> <silent> <F4> <Plug>ChangeEnv
cmap <buffer> <expr> <Nul> ( g:atp_cmap_space && getcmdtype() =~ '[/?]' ? (getcmdline() =~ '\%([^\\]\|^\)\\v' ? '\_s+' : '\_s\+') : ' ' )
inoremap <buffer> <silent> <Plug>ToggleTab :call ATP_ToggleTab()
inoremap <buffer> <silent> <Plug>ToggleIMaps :call ATP_ToggleIMaps(0, "!")
inoremap <buffer> <Plug>delimitMateJumpMany =delimitMate#JumpMany()
nmap <buffer> <silent> <NL> <Plug>TexJMotionForward
nmap <buffer> <silent>  <Plug>TexJMotionBackward
nnoremap <buffer> <silent>  :call atplib#motion#StartVisualMode('cv', v:count)
omap <buffer> <silent> <expr> % ( matchstr(getline("."), '^.*\%'.(col(".")+1).'c\\\=\w*\ze') =~ '\\\(begin\|end\)$' ? ":normal V%" : ":normal v%" )
xmap <buffer> <silent> % <Plug>LatexBox_JumpToMatch
nmap <buffer> <silent> % <Plug>LatexBox_JumpToMatch
nmap <buffer> <silent> '	 <Plug>ToggleIMaps
nmap <buffer> <silent> ( <Plug>SentenceNormalMotionBackward
nmap <buffer> <silent> ) <Plug>SentenceNormalMotionForward
vmap <buffer> <silent> -c <Plug>CommentLines
nmap <buffer> <silent> -p :keepjumps exe v:count1."Part"
nmap <buffer> <silent> -c <Plug>CommentLines
nmap <buffer> <silent> -s :keepjumps exe v:count1."Sec"
nmap <buffer> <silent> -S :keepjumps exe v:count1."SSec"
nmap <buffer> <silent> =c v<Plug>vSelectComment
nmap <buffer> <silent> =d <Plug>Dictionary
cmap <buffer> <expr> ã '^'.(getcmdline() =~ '\\v' ? '' : '\').'([^'.(getcmdline() =~ '\\v' ? '\' : '').'%]'.(getcmdline() =~ '\\v' ? '' : '\').'|\\'.(getcmdline() =~ '\\v' ? '\' : '').'%'.(getcmdline() =~ '\\v' ? '' : '\').')*\zs'
nmap <buffer> <silent> K :exe ':Texdoc' expand('<cword>')
vmap <buffer> <silent> M :Wrap \[ \]
nnoremap <buffer> <silent> V :call atplib#motion#StartVisualMode('V', v:count)
vmap <buffer> <silent> [] <Plug>vEndPrevEnvironment
nmap <buffer> <silent> [] <Plug>EndPrevEnvironment
vmap <buffer> <silent> [[ <Plug>vBegPrevEnvironment
nmap <buffer> <silent> [[ <Plug>GotoPreviousEnvironment
vmap <buffer> <silent> [% <Plug>SkipCommentBackward
vmap <buffer> <silent> [* <Plug>SkipCommentBackward
omap <buffer> <silent> [% :SkipCommentBackward
omap <buffer> <silent> [* :SkipCommentBackward
nmap <buffer> <silent> [% :SkipCommentBackward
nmap <buffer> <silent> [* :SkipCommentBackward
nmap <buffer> <silent> \e :ShowErrors
nmap <buffer> <silent> \b <Plug>BibtexDefault
nmap <buffer> <silent> \B <Plug>SimpleBibtex
nmap <buffer> <silent> \D <Plug>ATP_TeXDebug
nmap <buffer> <silent> \d <Plug>ATP_TeXdebug
nmap <buffer> <silent> \\l <Plug>ATP_TeXLocal
nmap <buffer> <silent> \l <Plug>ATP_TeXCurrent
nmap <buffer> <silent> \L <Plug>ATP_Labels
nmap <buffer> <silent> \t <Plug>ATP_TOC
nmap <buffer> <silent> \g <Plug>Getpid
nmap <buffer> <silent> \V <Plug>ATP_ViewLocalOutput_nosync
nmap <buffer> <silent> \v <Plug>ATP_ViewOutput_nosync
nmap <buffer> <silent> \\D <Plug>ToggleDebugMode
nmap <buffer> <silent> \\d <Plug>ToggledebugMode
nmap <buffer> <silent> \\s <Plug>TogglesilentMode
nmap <buffer> <silent> \s <Plug>ToggleStar
vmap <buffer> <silent> \a <Plug>vTexAlign
nmap <buffer> <silent> \a <Plug>TexAlign
nmap <buffer> <silent> \b{ :set opfunc=ATP_WrapBigKet_3_beging@
nmap <buffer> <silent> \b\{ :set opfunc=ATP_WrapBigKet_3_beging@
vnoremap <buffer> <silent> \b{ :Wrap \left\{ \right\} begin
vnoremap <buffer> <silent> \b\{ :Wrap \left\{ \right\} begin
nmap <buffer> <silent> \b[ :set opfunc=ATP_WrapBigKet_2_beging@
vnoremap <buffer> <silent> \b[ :Wrap \left[ \right] begin
nmap <buffer> <silent> \b( :set opfunc=ATP_WrapBigKet_1_beging@
vnoremap <buffer> <silent> \b( :Wrap \left( \right) begin
nmap <buffer> <silent> \b\} :set opfunc=ATP_WrapBigKet_3_endg@
vnoremap <buffer> <silent> \b\} :Wrap \left\{ \right\} end
nmap <buffer> <silent> \b] :set opfunc=ATP_WrapBigKet_2_endg@
vnoremap <buffer> <silent> \b] :Wrap \left[ \right] end
nmap <buffer> <silent> \b) :set opfunc=ATP_WrapBigKet_1_endg@
vnoremap <buffer> <silent> \b) :Wrap \left( \right) end
nmap <buffer> <silent> \> :set opfunc=ATP_WrapKet_5_endg@
vnoremap <buffer> <silent> \> :Wrap < > end
nmap <buffer> <silent> \< :set opfunc=ATP_WrapKet_5_beging@
vnoremap <buffer> <silent> \< :Wrap < > begin
nmap <buffer> <silent> \} :set opfunc=ATP_WrapKet_4_endg@
vnoremap <buffer> <silent> \} :Wrap { } end
nmap <buffer> <silent> \{ :set opfunc=ATP_WrapKet_4_beging@
nmap <buffer> <silent> \\} :set opfunc=ATP_WrapKet_3_endg@
vnoremap <buffer> <silent> \\} :Wrap \{ \} end
nmap <buffer> <silent> \\{ :set opfunc=ATP_WrapKet_3_beging@
vnoremap <buffer> <silent> \\{ :Wrap \{ \} begin
nmap <buffer> <silent> \] :set opfunc=ATP_WrapKet_2_endg@
vnoremap <buffer> <silent> \] :Wrap [ ] end
nmap <buffer> <silent> \[ :set opfunc=ATP_WrapKet_2_beging@
vnoremap <buffer> <silent> \[ :Wrap [ ] begin
nmap <buffer> <silent> \) :set opfunc=ATP_WrapKet_1_endg@
vnoremap <buffer> <silent> \) :Wrap ( ) end
nmap <buffer> <silent> \( :set opfunc=ATP_WrapKet_1_beging@
vnoremap <buffer> <silent> \( :Wrap ( ) begin
nmap <buffer> \M :set opfunc=ATP_WrapWMathg@
nmap <buffer> \m :set opfunc=ATP_WrapVMathg@
vnoremap <buffer> <silent> \A :Wrap \begin{align=b:atp_StarMathEnvDefault} \end{align=b:atp_StarMathEnvDefault} 0 1
vnoremap <buffer> <silent> \E :Wrap \begin{equation=b:atp_StarMathEnvDefault} \end{equation=b:atp_StarMathEnvDefault} 0 1
vnoremap <buffer> <silent> \L :Wrap \begin{flushleft} \end{flushleft} 0 1
vnoremap <buffer> <silent> \R :Wrap \begin{flushright} \end{flushright} 0 1
vnoremap <buffer> <silent> \C :Wrap \begin{center} \end{center} 0 1
vnoremap <buffer> <silent> \{ :Wrap { } begin
nmap <buffer> <silent> \F <Plug>SyncTexLKeyStroke
nmap <buffer> <silent> \\f <Plug>SyncTexLKeyStroke
nmap <buffer> <silent> \f <Plug>SyncTexKeyStroke
nmap <buffer> <silent> \u <Plug>Unwrap
vmap <buffer> <silent> ][ <Plug>vEndNextEnvironment
nmap <buffer> <silent> ][ <Plug>EndNextEnvironment
vmap <buffer> <silent> ]] <Plug>vBegNextEnvironment
nmap <buffer> <silent> ]] <Plug>GotoNextEnvironment
vmap <buffer> <silent> ]% <Plug>SkipCommentForward
vmap <buffer> <silent> ]* <Plug>SkipCommentForward
omap <buffer> <silent> ]% :SkipCommentForward
omap <buffer> <silent> ]* :SkipCommentForward
nmap <buffer> <silent> ]% :SkipCommentForward
nmap <buffer> <silent> ]* :SkipCommentForward
vnoremap <buffer> <silent> _w ::call atplib#various#RedoLastWrapSelection(["'<", "'>"])
vnoremap <buffer> <silent> _cal :IWrap [''],['\mathcal{']
vnoremap <buffer> <silent> _no :IWrap ['\textnormal{'],['\mathnormal{']
vnoremap <buffer> <silent> _ov :Wrap \overline{
vnoremap <buffer> <silent> _un :Wrap \underline{
vnoremap <buffer> <silent> _md :Wrap \textmd{
vnoremap <buffer> <silent> _up :Wrap \textup{
vnoremap <buffer> <silent> _sc :Wrap \textsc{
vnoremap <buffer> <silent> _sl :Wrap \textsl{
vnoremap <buffer> <silent> _bb :IWrap ['\textbf{'],['\mathbb{']
vnoremap <buffer> <silent> _bf :IWrap ['\textbf{'],['\mathbf{']
vnoremap <buffer> <silent> _tt :IWrap ['\texttt{'],['\mathtt{']
vnoremap <buffer> <silent> _sf :IWrap ['\textsf{'],['\mathsf{']
vnoremap <buffer> <silent> _it :IWrap ['\textit{'],['\mathit{']
vnoremap <buffer> <silent> _em :IWrap ['\emph{'],['\mathit{']
vnoremap <buffer> <silent> _rm :IWrap ['\textrm{'],['\mathrm{']
vnoremap <buffer> <silent> _te :IWrap ['\textrm{'],['\text{']
vnoremap <buffer> <silent> _mb :Wrap \mbox{ } begin
vnoremap <buffer> <silent> _fr :Wrap \mathfrak{ }
vnoremap <buffer> <silent> _uf :Wrap {\usefont{T1}{}{}{}\selectfont\  } 13
nmap <buffer> _fr :set opfunc=ATP_WrapFrakg@
nmap <buffer> _cal :set opfunc=ATP_WrapCalg@
nmap <buffer> _ov :set opfunc=ATP_WrapOverlineg@
nmap <buffer> _un :set opfunc=ATP_WrapUnderlineg@
nmap <buffer> _md :set opfunc=ATP_WrapMDg@
nmap <buffer> _up :set opfunc=ATP_WrapUPg@
nmap <buffer> _sc :set opfunc=ATP_WrapSCg@
nmap <buffer> _sl :set opfunc=ATP_WrapSLg@
nmap <buffer> _tt :set opfunc=ATP_WrapTTg@
nmap <buffer> _sf :set opfunc=ATP_WrapSFg@
nmap <buffer> _em :set opfunc=ATP_WrapEmphg@
nmap <buffer> _it :set opfunc=ATP_WrapItalicg@
nmap <buffer> _bb :set opfunc=ATP_WrapBBg@
nmap <buffer> _bf :set opfunc=ATP_WrapBoldg@
nmap <buffer> _rm :set opfunc=ATP_WrapRomang@
nmap <buffer> _w :set opfunc=ATP_LastWrapg@
vnoremap <buffer> <silent> `t :Wrap \t{ } end
vnoremap <buffer> <silent> `c :Wrap \c{ } end
vnoremap <buffer> <silent> `. :IWrap ['\.{'],['\dot{']
vnoremap <buffer> <silent> <expr> `~ ':Wrap \'.(g:atp_imap_wide ? "wide" : "").'tilde{ } end'
vnoremap <buffer> <silent> `H :Wrap \H{ } end
vnoremap <buffer> <silent> `d :Wrap \d{ } end
vnoremap <buffer> <silent> `b :Wrap \b{ } end
vnoremap <buffer> <silent> `` :IWrap ['\`{'],['\grave{']
vnoremap <buffer> <silent> `v :IWrap ['\v{'],['\check{']
vnoremap <buffer> <silent> `^ :Wrap \^{ } end
vnoremap <buffer> <silent> `" :Wrap \"{ } end
vnoremap <buffer> <silent> `' :IWrap ['\''{'],['\acute{']
vmap <buffer> <silent> a] <Plug>LatexBox_SelectBracketOuter_3
vmap <buffer> <silent> a[ <Plug>LatexBox_SelectBracketOuter_3
vmap <buffer> <silent> a} <Plug>LatexBox_SelectBracketOuter_2
vmap <buffer> <silent> a{ <Plug>LatexBox_SelectBracketOuter_2
vmap <buffer> <silent> a) <Plug>LatexBox_SelectBracketOuter_1
vmap <buffer> <silent> ab <Plug>LatexBox_SelectBracketOuter_1
vmap <buffer> <silent> a( <Plug>LatexBox_SelectBracketOuter_1
omap <buffer> <silent> am :normal vam
vmap <buffer> <silent> am <Plug>LatexBox_SelectInlineMathOuter
omap <buffer> <silent> ae :normal vae
vmap <buffer> <silent> ae <Plug>LatexBox_SelectCurrentEnvOuter
vmap <buffer> <silent> aS <Plug>SelectOuterSyntax
omap <buffer> <silent> ap :normal vap
vmap <buffer> <silent> ap <Plug>ATP_SelectCurrentParagraphOuter
xmap <buffer> <silent> g% <Plug>LatexBox_BackJumpToMatch
nmap <buffer> <silent> g% <Plug>LatexBox_BackJumpToMatch
nmap <buffer> gW <Plug>FormatLines
nnoremap <buffer> <silent> gf :call atplib#motion#GotoFile("", "")
vmap <buffer> <silent> gC <Plug>SkipCommentBackward
omap <buffer> <silent> gC :SkipCommentBackward
nmap <buffer> <silent> gC :SkipCommentBackward
vmap <buffer> <silent> gc <Plug>SkipCommentForward
omap <buffer> <silent> gc :SkipCommentForward
nmap <buffer> <silent> gc :SkipCommentForward
vmap <buffer> <silent> i] <Plug>LatexBox_SelectBracketInner_3
vmap <buffer> <silent> i[ <Plug>LatexBox_SelectBracketInner_3
vmap <buffer> <silent> i} <Plug>LatexBox_SelectBracketInner_2
vmap <buffer> <silent> i{ <Plug>LatexBox_SelectBracketInner_2
vmap <buffer> <silent> i) <Plug>LatexBox_SelectBracketInner_1
vmap <buffer> <silent> ib <Plug>LatexBox_SelectBracketInner_1
vmap <buffer> <silent> i( <Plug>LatexBox_SelectBracketInner_1
omap <buffer> <silent> im :normal vim
vmap <buffer> <silent> im <Plug>LatexBox_SelectInlineMathInner
omap <buffer> <silent> ie :normal vie
vmap <buffer> <silent> iE <Plug>LatexBox_SelectCurrentEnVInner
vmap <buffer> <silent> ie <Plug>LatexBox_SelectCurrentEnvInner
vmap <buffer> <silent> iS <Plug>SelectInnerSyntax
omap <buffer> <silent> ip :normal vip
vmap <buffer> <silent> ip <Plug>ATP_SelectCurrentParagraphInner
vmap <buffer> <silent> m :Wrap \( \)
nmap <buffer> <silent> r <Plug>Replace
nnoremap <buffer> <silent> v :call atplib#motion#StartVisualMode('v', v:count)
vmap <buffer> <silent> {p <Plug>vGotoPreviousPart
omap <buffer> <silent> {p <Plug>GotoPreviousPart
nmap <buffer> <silent> {p <Plug>GotoPreviousPart
omap <buffer> <silent> {M <Plug>GotoPreviousDisplayedMath
nmap <buffer> <silent> {M <Plug>GotoPreviousDisplayedMath
omap <buffer> <silent> {m <Plug>GotoPreviousMath
nmap <buffer> <silent> {m <Plug>GotoPreviousMath
omap <buffer> <silent> {O <Plug>FastJumpOutBackward
nmap <buffer> <silent> {O <Plug>FastJumpOutBackward
omap <buffer> <silent> {o <Plug>JumpOutBackward
nmap <buffer> <silent> {o <Plug>JumpOutBackward
omap <buffer> <silent> {E <Plug>FastJumptoPreviousEnvironment
nmap <buffer> <silent> {E <Plug>FastJumptoPreviousEnvironment
omap <buffer> <silent> {e <Plug>JumptoPreviousEnvironment
nmap <buffer> <silent> {e <Plug>JumptoPreviousEnvironment
vmap <buffer> <silent> {c <Plug>vGotoPreviousChapter
omap <buffer> <silent> {c <Plug>GotoPreviousChapter
nmap <buffer> <silent> {c <Plug>GotoPreviousChapter
vmap <buffer> <silent> {s <Plug>vGotoPreviousSection
omap <buffer> <silent> {s <Plug>GotoPreviousSection
nmap <buffer> <silent> {s <Plug>GotoPreviousSection
vmap <buffer> <silent> {S <Plug>vGotoPreviousSubSection
omap <buffer> <silent> {S <Plug>GotoPreviousSubSection
nmap <buffer> <silent> {S <Plug>GotoPreviousSubSection
vmap <buffer> <silent> {P <Plug>vGotoPreviousParagraph
omap <buffer> <silent> {P <Plug>GotoPreviousParagraph
nmap <buffer> <silent> {P <Plug>GotoPreviousParagraph
noremap <buffer> <silent> {{ {
nmap <buffer> <silent> {gf :call atplib#motion#Input((&wrapscan ? 'wb' : 'b'), v:count1)
nmap <buffer> <silent> {i :call atplib#motion#Input((&wrapscan ? 'wb' : 'b'), v:count1)
omap <buffer> <silent> { :exe "normal ".v:count1."{"
vmap <buffer> <silent> { <Plug>ParagraphVisualMotionBackward
nmap <buffer> <silent> { <Plug>ParagraphNormalMotionBackward
vmap <buffer> <silent> }p <Plug>vGotoNextPart
omap <buffer> <silent> }p <Plug>GotoNextPart
nmap <buffer> <silent> }p <Plug>GotoNextPart
omap <buffer> <silent> }M <Plug>GotoNextDisplayedMath
nmap <buffer> <silent> }M <Plug>GotoNextDisplayedMath
omap <buffer> <silent> }m <Plug>GotoNextMath
nmap <buffer> <silent> }m <Plug>GotoNextMath
omap <buffer> <silent> }O <Plug>FastJumpOutForward
nmap <buffer> <silent> }O <Plug>FastJumpOutForward
omap <buffer> <silent> }o <Plug>JumpOutForward
nmap <buffer> <silent> }o <Plug>JumpOutForward
omap <buffer> <silent> }E <Plug>FastJumptoNextEnvironment
nmap <buffer> <silent> }E <Plug>FastJumptoNextEnvironment
omap <buffer> <silent> }e <Plug>JumptoNextEnvironment
nmap <buffer> <silent> }e <Plug>JumptoNextEnvironment
vmap <buffer> <silent> }c <Plug>vGotoNextChapter
omap <buffer> <silent> }c <Plug>GotoNextChapter
nmap <buffer> <silent> }c <Plug>GotoNextChapter
vmap <buffer> <silent> }s <Plug>vGotoNextSection
omap <buffer> <silent> }s <Plug>GotoNextSection
nmap <buffer> <silent> }s <Plug>GotoNextSection
vmap <buffer> <silent> }S <Plug>vGotoNextSubSection
omap <buffer> <silent> }S <Plug>GotoNextSubSection
nmap <buffer> <silent> }S <Plug>GotoNextSubSection
vmap <buffer> <silent> }P <Plug>vGotoNextParagraph
omap <buffer> <silent> }P <Plug>GotoNextParagraph
nmap <buffer> <silent> }P <Plug>GotoNextParagraph
noremap <buffer> <silent> }} }
nmap <buffer> <silent> }gf :call atplib#motion#Input((&wrapscan ? 'w' : ''), v:count1)
nmap <buffer> <silent> }i :call atplib#motion#Input((&wrapscan ? 'w' : ''),v:count1)
omap <buffer> <silent> } :exe "normal ".v:count1."}"
vmap <buffer> <silent> } <Plug>ParagraphVisualMotionForward
nmap <buffer> <silent> } <Plug>ParagraphNormalMotionForward
nmap <buffer> <F1> <Plug>Texdoc
nnoremap <buffer> <Plug>Texdoc :Texdoc 
nmap <buffer> <silent> <F6>g <Plug>PdfFonts
nmap <buffer> <silent> <F6>f :ShowErrors f
nmap <buffer> <silent> <F6>r :ShowErrors rc
nmap <buffer> <silent> <F6>w :ShowErrors w
nmap <buffer> <silent> <F6> :ShowErrors e
nmap <buffer> <silent> <F6>l <Plug>OpenLog
nmap <buffer> <silent> <F6>d <Plug>Delete
nmap <buffer> <silent> <S-F5> <Plug>ToggleAuTeX
nmap <buffer> <silent> <F5> <Plug>ATP_TeXVerbose
nmap <buffer> <silent> <S-F3> <Plug>ATP_ViewLocalOutput_sync
nmap <buffer> <silent> <F3> <Plug>ATP_ViewOutput_sync
nmap <buffer> <silent> <S-F4> <Plug>ToggleEnvForward
nmap <buffer> <silent> <F4> <Plug>ChangeEnv
vmap <buffer> <silent> <F4> <Plug>WrapEnvironment
vnoremap <buffer> <silent> <Plug>vEndNextEnvironment m`:exe "normal! gv"|call search('\\end\s*{\|\\\@<!\\\]\|\\\@<!\$\$', 'W')
nnoremap <buffer> <silent> <Plug>EndNextEnvironment m`:call search('\%(\\end\s*{\|\\\@<!\\\]\|\\\@<!\$\$\)', 'W')
vnoremap <buffer> <silent> <Plug>vEndPrevEnvironment m`:exe "normal! gv"|call search('\\end\s*{\|\\\@<!\\\]\|\\\@<!\$\$', 'bW')
nnoremap <buffer> <silent> <Plug>EndPrevEnvironment m`:call search('\\end\s*{\|\\\@<!\\\]\|\\\@<!\$\$', 'bW')
vnoremap <buffer> <silent> <Plug>vBegNextEnvironment m`:exe "normal! gv"|call search('\\begin\s*{\|\\\@<!\\\[\|\\\@<!\$\$', 'W')
nnoremap <buffer> <silent> <Plug>BegNextEnvironment m`:call search('\\begin\s*{\|\\\@<!\\\[\|\\\@<!\$\$', 'W')
vnoremap <buffer> <silent> <Plug>vBegPrevEnvironment m`:exe "normal! gv"|call search('\\begin\s*{\|\\\@<!\\\[\|\\\@<!\$\$', 'bW')
nmap <buffer> <S-LeftMouse> <LeftMouse><Plug>SyncTexMouse
nmap <buffer> <F2> :echo ATP_ToggleSpace()
nnoremap <buffer> <silent> <SNR>180_InputRestore :call inputrestore()
nnoremap <buffer> <silent> <Plug>FormatLines :call atplib#various#FormatLines()
nnoremap <buffer> <silent> <Plug>Lpstat :call atplib#various#Lpstat()
nnoremap <buffer> <Plug>SshPrint :SshPrint 
nnoremap <buffer> <silent> <Plug>PdfFonts :call atplib#various#PdfFonts()
nnoremap <buffer> <silent> <Plug>OpenLog :call atplib#various#OpenLog()
nmap <buffer> <silent> <Plug>Delete :call atplib#various#Delete("")
nnoremap <buffer> <silent> <Plug>TexDoc :TexDoc 
nnoremap <buffer> <silent> <Plug>ChangeEnv :call atplib#various#ToggleEnvironment(1)
nnoremap <buffer> <silent> <Plug>ToggleEnvBackward :call atplib#various#ToggleEnvironment(0, -1)
nnoremap <buffer> <silent> <Plug>ToggleEnvForward :call atplib#various#ToggleEnvironment(0, 1)
nnoremap <buffer> <silent> <Plug>ToggleStar :call atplib#various#ToggleStar()
vmap <buffer> <Plug>InteligentWrapSelection :call atplib#various#InteligentWrapSelection('')i
vmap <buffer> <silent> <Plug>WrapEnvironment :call atplib#various#WrapEnvironment('', 1)
vmap <buffer> <Plug>WrapSelection :call atplib#various#WrapSelection('')i
map <buffer> <Plug>UnCommentLines :call atplib#various#Comment(0)
map <buffer> <Plug>CommentLines :call atplib#various#Comment(1)
nmap <buffer> <silent> <Plug>Dictionary :call atplib#various#Dictionary(expand("<cword>"))
nmap <buffer> <silent> <Plug>Unwrap :call atplib#various#Unwrap()
nnoremap <buffer> <silent> <Plug>RecursiveSearchN :exe "S /".@/."/x".(v:searchforward ? "b" : "")
nnoremap <buffer> <silent> <Plug>RecursiveSearchn :exe "S /".@/."/x".(v:searchforward ? "" : "b")
nnoremap <buffer> <silent> <Plug>GotoPreviousDisplayedMath :call atplib#motion#GotoEnvironment('bsW',v:count1,'displayedmath')
nnoremap <buffer> <silent> <Plug>GotoNextDisplayedMath :call atplib#motion#GotoEnvironment('sW',v:count1,'displayedmath')
nnoremap <buffer> <silent> <Plug>GotoPreviousInlineMath :call atplib#motion#GotoEnvironment('bsW',v:count1,'inlinemath')
nnoremap <buffer> <silent> <Plug>GotoNextInlineMath :call atplib#motion#GotoEnvironment('sW',v:count1,'inlinemath')
nnoremap <buffer> <silent> <Plug>GotoPreviousMath :call atplib#motion#GotoEnvironment('bsW',v:count1,'math')
nnoremap <buffer> <silent> <Plug>GotoNextMath :call atplib#motion#GotoEnvironment('sW',v:count1,'math')
nnoremap <buffer> <silent> <Plug>GotoPreviousEnvironment :call atplib#motion#GotoEnvironment('bsW',v:count1,'')
nnoremap <buffer> <silent> <Plug>GotoNextEnvironment :call atplib#motion#GotoEnvironment('sW',v:count1,'')
nnoremap <buffer> <Plug>SentenceNormalMotionBackward :call atplib#motion#SentenceNormalMotion('b', v:count1)
nnoremap <buffer> <Plug>SentenceNormalMotionForward :call atplib#motion#SentenceNormalMotion('', v:count1)
vnoremap <buffer> <Plug>ParagraphVisualMotionBackward :call atplib#motion#ParagraphVisualMotion('b',v:count1)
vnoremap <buffer> <Plug>ParagraphVisualMotionForward :call atplib#motion#ParagraphVisualMotion('',v:count1)
nnoremap <buffer> <Plug>ParagraphNormalMotionBackward :call atplib#motion#ParagraphNormalMotion('b', v:count1)
nnoremap <buffer> <Plug>ParagraphNormalMotionForward :call atplib#motion#ParagraphNormalMotion('', v:count1)
vnoremap <buffer> <silent> <Plug>TexWordObject :call atplib#motion#TexKeywordObject()
vmap <buffer> <Plug>SkipCommentBackward :call atplib#motion#SkipComment('bs', 'v', v:count1)
vmap <buffer> <Plug>SkipCommentForward :call atplib#motion#SkipComment('fs', 'v', v:count1)
nnoremap <buffer> <silent> <Plug>FastJumpOutBackward :call atplib#motion#FastJumpOut(0)
nnoremap <buffer> <silent> <Plug>FastJumpOutForward :call atplib#motion#FastJumpOut(1)
nnoremap <buffer> <silent> <Plug>JumpOutBackward :call atplib#motion#JumpOut(0,v:count1)
nnoremap <buffer> <silent> <Plug>JumpOutForward :call atplib#motion#JumpOut(1,v:count1)
nnoremap <buffer> <silent> <Plug>FastJumptoPreviousEnvironment :call atplib#motion#FastJumptoEnvironment(0,v:count1)
nnoremap <buffer> <silent> <Plug>FastJumptoNextEnvironment :call atplib#motion#FastJumptoEnvironment(1,v:count1)
nnoremap <buffer> <silent> <Plug>JumptoPreviousEnvironment :call atplib#motion#JumptoEnvironment(0,v:count1)
nnoremap <buffer> <silent> <Plug>JumptoNextEnvironment :call atplib#motion#JumptoEnvironment(1,v:count1)
nmap <buffer> <silent> <Plug>SelectFrameEnvironment :call SelectEnvironment('frame')
vmap <buffer> <silent> <Plug>vSelectComment :call SelectComment()
nmap <buffer> <Plug>ATP_MakeLatex :MakeLatex
nnoremap <buffer> <Plug>SyncTexLMouse :call atplib#compiler#SyncTex("", 1, expand("%:t"), b:atp_LocalXpdfServer)
nnoremap <buffer> <Plug>SyncTexLKeyStroke :call atplib#compiler#SyncTex("", 0, expand("%:t"), b:atp_LocalXpdfServer)
nnoremap <buffer> <Plug>SyncTexMouse :call atplib#compiler#SyncTex("", 1, b:atp_MainFile, b:atp_XpdfServer)
nnoremap <buffer> <Plug>SyncTexKeyStroke :call atplib#compiler#SyncTex("", 0, b:atp_MainFile, b:atp_XpdfServer)
nnoremap <buffer> <silent> <Plug>ToggleTab :call ATP_ToggleTab()
nnoremap <buffer> <silent> <Plug>ToggleDebugMode :call ATP_ToggleDebugMode("Debug")
nnoremap <buffer> <silent> <Plug>ToggledebugMode :call ATP_ToggleDebugMode("debug")
nnoremap <buffer> <silent> <Plug>TogglesilentMode :call ATP_ToggleDebugMode("silent")
nnoremap <buffer> <silent> <Plug>ToggleCallBack :call ATP_ToggleCallBack()
nnoremap <buffer> <silent> <Plug>ToggleCheckMathOpened :call ATP_ToggleCheckMathOpened()
nnoremap <buffer> <silent> <Plug>ToggleSpaceOff :echo ATP_ToggleSpace('off')
nnoremap <buffer> <silent> <Plug>ToggleSpaceOn :echo ATP_ToggleSpace('on')
nnoremap <buffer> <silent> <Plug>ToggleSpace :echo ATP_ToggleSpace()
nnoremap <buffer> <silent> <Plug>ToggleAuTeX :call ATP_ToggleAuTeX()
nnoremap <buffer> <silent> <Plug>ToggleIMaps :call ATP_ToggleIMaps(0, "!")
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer> <silent> <NL> <Plug>TexJMotionForward
imap <buffer> <silent>  <Plug>TexJMotionBackward
inoremap <buffer> <silent> o =atplib#complete#TabCompletion(0)
inoremap <buffer> <silent>  =atplib#complete#TabCompletion(1)
cmap <buffer> <expr>  ( g:atp_cmap_space && getcmdtype() =~ '[/?]' ? (getcmdline() =~ '\%([^\\]\|^\)\\v' ? '\_s+' : '\_s\+') : ' ' )
cmap <buffer> <expr>   ( g:atp_cmap_space && getcmdtype() =~ '[/?]' ? (getcmdline() =~ '\%([^\\]\|^\)\\v' ? '\_s+' : '\_s\+') : ' ' )
imap <buffer> " <Plug>delimitMate"
inoremap <buffer> <silent> ##uf \usefont{T1}{}{}{}<Left><Left><Left><Left><Left>
inoremap <buffer> <silent> <expr> ##fr (atplib#IsInMath() ? "\\mathfrak{}<Left>" : ( &filetype == "plaintex" ? "$" : (&l:cpoptions =~# "B" ? "\\" : "\\\\")."(" )."\\mathfrak{}<Left>" )
inoremap <buffer> <silent> <expr> ##cr (atplib#IsInMath() ? "\\mathscr{}<Left>" : ( &filetype == "plaintex" ? "$" : (&l:cpoptions =~# "B" ? "\\" : "\\\\")."(" )."\\mathscr{}<Left>" )
inoremap <buffer> <silent> <expr> ##cal (atplib#IsInMath() ? "\\mathcal{}<Left>" : ( &filetype == "plaintex" ? "$" : (&l:cpoptions =~# "B" ? "\\" : "\\\\")."(" )."\\mathcal{}<Left>" )
inoremap <buffer> <silent> <expr> ##bb (atplib#IsInMath() ? "\\mathbb{}<Left>" : ( &filetype == "plaintex" ? "$" : (&l:cpoptions =~# "B" ? "\\" : "\\\\")."(" )."\\mathbb{}<Left>" )
inoremap <buffer> <silent> ##em \emph{}<Left>
inoremap <buffer> <silent> ##te \text{}<Left>
inoremap <buffer> <silent> ##sc \textsc{}<Left>
inoremap <buffer> <silent> ##sl \textsl{}<Left>
inoremap <buffer> <silent> ##md \textmd{}<Left>
inoremap <buffer> <silent> ##up \textup{}<Left>
inoremap <buffer> <silent> <expr> ##normal (atplib#IsInMath() ? "\\mathnormal{}<Left>" : "\\textnormal{}<Left>" )
inoremap <buffer> <silent> <expr> ##tt (atplib#IsInMath() ? "\\mathtt{}<Left>" : "\\texttt{}<Left>" )
inoremap <buffer> <silent> <expr> ##bf (atplib#IsInMath() ? "\\mathbf{}<Left>" : "\\textbf{}<Left>" )
inoremap <buffer> <silent> <expr> ##sf (atplib#IsInMath() ? "\\mathsf{}<Left>" : "\\textsf{}<Left>" )
inoremap <buffer> <silent> <expr> ##it (atplib#IsInMath() ? "\\mathit{}<Left>" : "\\textit{}<Left>" )
inoremap <buffer> <silent> <expr> ##rm (atplib#IsInMath() ? "\\mathrm{}<Left>" : "\\textrm{}<Left>" )
imap <buffer> ' <Plug>delimitMate'
imap <buffer> <silent> '	 <Plug>ToggleIMaps
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
inoremap <buffer> <silent> ]q \begin{equation=(getline(".")[col(".")-2]=="*"?"":b:atp_StarMathEnvDefault)}\end{equation=(getline(".")[col(".")-2]=="*"?"":b:atp_StarMathEnvDefault)}O
inoremap <buffer> <silent> ]s \begin{split=(getline(".")[col(".")-2]=="*"?"":b:atp_StarMathEnvDefault)}\end{split=(getline(".")[col(".")-2]=="*"?"":b:atp_StarMathEnvDefault)}O
inoremap <buffer> <silent> ]g \begin{gather=(getline(".")[col(".")-2]=="*"?"":b:atp_StarMathEnvDefault)}\end{gather=(getline(".")[col(".")-2]=="*"?"":b:atp_StarMathEnvDefault)}O
inoremap <buffer> <silent> ]a \begin{align=(getline(".")[col(".")-2]=="*"?"":b:atp_StarMathEnvDefault)}\end{align=(getline(".")[col(".")-2]=="*"?"":b:atp_StarMathEnvDefault)}O
inoremap <buffer> <silent> ]c \begin{=g:atp_EnvNameCorollary=(getline(".")[col(".")-2]=="*"?"":b:atp_StarEnvDefault)}\end{=g:atp_EnvNameCorollary=(getline(".")[col(".")-2]=="*"?"":b:atp_StarEnvDefault)}O
inoremap <buffer> <silent> ]x \begin{=g:atp_EnvNameExample=(getline(".")[col(".")-2]=="*"?"":b:atp_StarEnvDefault)}\end{=g:atp_EnvNameExample=(getline(".")[col(".")-2]=="*"?"":b:atp_StarEnvDefault)}O
inoremap <buffer> <silent> ]n \begin{=g:atp_EnvNameNote=(getline(".")[col(".")-2]=="*"?"":b:atp_StarEnvDefault)}\end{=g:atp_EnvNameNote=(getline(".")[col(".")-2]=="*"?"":b:atp_StarEnvDefault)}O
inoremap <buffer> <silent> ]r \begin{=g:atp_EnvNameRemark=(getline(".")[col(".")-2]=="*"?"":b:atp_StarEnvDefault)}\end{=g:atp_EnvNameRemark=(getline(".")[col(".")-2]=="*"?"":b:atp_StarEnvDefault)}O
inoremap <buffer> <silent> ]l \begin{=g:atp_EnvNameLemma=(getline(".")[col(".")-2]=="*"?"":b:atp_StarEnvDefault)}\end{=g:atp_EnvNameLemma=(getline(".")[col(".")-2]=="*"?"":b:atp_StarEnvDefault)}O
inoremap <buffer> <silent> ]P \begin{=g:atp_EnvNameProposition=(getline(".")[col(".")-2]=="*"?"":b:atp_StarEnvDefault)}\end{=g:atp_EnvNameProposition=(getline(".")[col(".")-2]=="*"?"":b:atp_StarEnvDefault)}O
inoremap <buffer> <silent> ]d \begin{=g:atp_EnvNameDefinition=(getline(".")[col(".")-2]=="*"?"":b:atp_StarEnvDefault)}\end{=g:atp_EnvNameDefinition=(getline(".")[col(".")-2]=="*"?"":b:atp_StarEnvDefault)}O
inoremap <buffer> <silent> ]t \begin{=g:atp_EnvNameTheorem=(getline(".")[col(".")-2]=="*"?"":b:atp_StarEnvDefault)}\end{=g:atp_EnvNameTheorem=(getline(".")[col(".")-2]=="*"?"":b:atp_StarEnvDefault)}O
inoremap <buffer> <silent> ]T \begin{center}\begin{tikzpicture}\end{tikzpicture}\end{center}<Up>O
inoremap <buffer> <silent> ]I \begin{itemize}\end{itemize}O\item
inoremap <buffer> <silent> ]u \end{tabular}O\begin{tabular}{}<Left>
inoremap <buffer> <silent> ]D \begin{description}\end{description}O\item[]
inoremap <buffer> <silent> ]E \begin{enumerate}\end{enumerate}O\item
inoremap <buffer> <silent> ]f \begin{frame}\end{frame}O
inoremap <buffer> <silent> ]i :call InsertItem()a
inoremap <buffer> <silent> ]A \begin{abstract}\end{abstract}O
inoremap <buffer> <silent> ]B \begin{thebibliography}\end{thebibliography}O
inoremap <buffer> <silent> ]R \begin{flushright}\end{flushright}O
inoremap <buffer> <silent> ]L \begin{flushleft}\end{flushleft}O
inoremap <buffer> <silent> ]C \begin{center}\end{center}O
inoremap <buffer> <silent> ]p \begin{proof}\end{proof}O
inoremap <buffer> <silent> ]e \end{}<Left>
inoremap <buffer> <silent> ]b \begin{}<Left>
inoremap <buffer> <silent> ]M \[\]<Left><Left>
inoremap <buffer> <silent> ]m \(\)<Left><Left>
inoremap <buffer> <silent> ]] ]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
iabbr <buffer> =example= \begin{example}\end{example}O
iabbr <buffer> =remark= \begin{remark}\end{remark}O
iabbr <buffer> =proof= \begin{proof}\end{proof}O
iabbr <buffer> =definition= \begin{definition}\end{definition}O
iabbr <buffer> =lemma= \begin{lemma}\end{lemma}O
iabbr <buffer> =proposition= \begin{proposition}\end{proposition}O
iabbr <buffer> =theorem= \begin{theorem}\end{theorem}O
iabbr <buffer> =corollary= \begin{corollary}\end{corollary}O
iabbr <buffer> =flalign*= \begin{flalign*}\end{flalign*}O
iabbr <buffer> =flalign= \begin{flalign}\end{flalign}O
iabbr <buffer> =split= \begin{split}\end{split}O
iabbr <buffer> =multline*= \begin{multline*}\end{multline*}O
iabbr <buffer> =multline= \begin{multline}\end{multline}O
iabbr <buffer> =gather*= \begin{gather*}\end{gather*}O
iabbr <buffer> =gather= \begin{gather}\end{gather}O
iabbr <buffer> =alignat*= \begin{alignat*}\end{alignat*}O
iabbr <buffer> =alignat= \begin{alignat}\end{alignat}O
iabbr <buffer> =align*= \begin{align*}\end{align*}O
iabbr <buffer> =align= \begin{align}\end{align}O
iabbr <buffer> =equation*= \begin{equation*}\end{equation*}O
iabbr <buffer> =equation= \begin{equation}\end{equation}O
iabbr <buffer> =tabular= \begin{tabular}\end{tabular}<Up>A
iabbr <buffer> =table= \begin{table}\end{table}O
iabbr <buffer> =array= \begin{array}\end{array}O
iabbr <buffer> =figure= \begin{figure}\end{figure}O
iabbr <buffer> =verbatim= \begin{verbatim}\end{verbatim}O
iabbr <buffer> =abstract= \begin{abstract}\end{abstract}O
iabbr <buffer> =verse= \begin{verse}\end{verse}O
iabbr <buffer> =quotation= \begin{quotation}\end{quotation}O
iabbr <buffer> =quote= \begin{quote}\end{quote}O
iabbr <buffer> =enumerate= \begin{enumerate}\end{enumerate}O
iabbr <buffer> =itemize= \begin{itemize}\end{itemize}O
iabbr <buffer> =frame= \begin{frame}\end{frame}O
iabbr <buffer> =tikzpicture= \begin{tikzpicture}\end{tikzpicture}O
iabbr <buffer> =flushleft= \begin{flushleft}\end{flushleft}O
iabbr <buffer> =flushright= \begin{flushright}\end{flushright}O
iabbr <buffer> =center= \begin{center}\end{center}O
iabbr <buffer> =thebibliography= \begin{thebibliography}\end{thebibliography}<Up>A
iabbr <buffer> =bibliography= \begin{thebibliography}\end{thebibliography}<Up>A
iabbr <buffer> =titlepage= \begin{titlepage}\end{titlepage}O
iabbr <buffer> =minipage= \begin{minipage}\end{minipage}<Up>A
iabbr <buffer> =list= \begin{list}\end{list}O
iabbr <buffer> =picture= \begin{picture}()()\end{picture}<Up>f(a
iabbr <buffer> =letter= \begin{letter}\end{letter}O
iabbr <buffer> =description= egin{description}nd{description}O
iabbr <buffer> =document= egin{document}nd{document}O
iabbr <buffer> ++ \ddagger
iabbr <buffer> +| \dagger
iabbr <buffer> -+ \mp
iabbr <buffer> +- \pm
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
setlocal cinwords=
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i,k/Volumes/Alberto/Users/alberto/.vim/bundle/AutomaticLaTeXPlugin/ftplugin/ATP_files/dictionaries/greek,k/Volumes/Alberto/Users/alberto/.vim/bundle/AutomaticLaTeXPlugin/ftplugin/ATP_files/dictionaries/dictionary,k/Volumes/Alberto/Users/alberto/.vim/bundle/AutomaticLaTeXPlugin/ftplugin/ATP_files/dictionaries/SIunits,k/Volumes/Alberto/Users/alberto/.vim/bundle/AutomaticLaTeXPlugin/ftplugin/ATP_files/dictionaries/tikz
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=neocomplcache#complete#manual_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\definecolor{\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*\\|DeclareFixedFont\\s*{\\s*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=LaTeX\\\ %trror::%f::%l::%c::%m,Citation\ %tarning::%f::%l::%c::%m,Reference\ LaTeX\ %tarning::%f::%l::%c::%m
setlocal expandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=20
setlocal foldlevel=20
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\\\item\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^[^%]*\\%(\\\\input\\(\\s*{\\)\\=\\|\\\\include\\s*{\\)
setlocal includeexpr=substitute(v:fname,'\\%(.tex\\)\\?$','.tex','')
setlocal indentexpr=LatexBox_TexIndent()
setlocal indentkeys==end,=item,),],},o,O,0\\,!^F
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=man\ -s
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeprg=python\ ~/.vim/bundle/AutomaticLaTeXPlugin/ftplugin/ATP_files/makelatex.py\ --texfile\ '/Volumes/Alberto/Users/alberto/Dropbox/ProjectYork/writeUp/main.tex'\ --bufnr\ 1\ --start\ 0\ --output-format\ pdf\ --verbose\ silent\ --cmd\ pdflatex\ --bibcmd\ bibtex\ --bibliographies\ 'bibliography.bib'\ --outdir\ '/Volumes/Alberto/Users/alberto/Dropbox/ProjectYork/writeUp'\ --keep\ 'log,aux,toc,bbl,ind,idx,synctex.gz,blg,loa,toc,lot,lof,thm,out,nav'\ --tex-options\ '-synctex=1,-interaction=nonstopmode'\ --servername\ \ --viewer\ 'open'\ --xpdf-server\ 'main'\ --viewer-options\ ''\ --progname\ Vim\ --tempdir\ '/var/folders/2b/g365x86j16ddj6fm__sgnlfm0000gn/T/atp_U02E_g'\ --logdir\ '/var/folders/2b/g365x86j16ddj6fm__sgnlfm0000gn/T/atp_U02E_g'\ --no-callback\ \ --env\ 'max_print_line=2000'\ --reload-on-error\ \ &
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=alpha
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=.,/usr/include,,,~/Library/texmf/tex,~/Dropbox/ProjectYork/writeUp/Chapters,~/Dropbox/ProjectYork/writeUp/Chapters/literature
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
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=.tex
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 5 - ((4 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
lcd ~/Dropbox/ProjectYork/writeUp
wincmd w
argglobal
edit ~/.vimrc
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
inoremap <buffer> <Plug>delimitMateJumpMany =delimitMate#JumpMany()
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*endf*\%[unction]\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")
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
setlocal comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"
setlocal commentstring=\"%s
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
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=LaTeX\\\ %trror::%f::%l::%c::%m,Citation\ %tarning::%f::%l::%c::%m,Reference\ LaTeX\ %tarning::%f::%l::%c::%m
setlocal expandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=20
setlocal foldlevel=20
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,=end,=else,=cat,=fina,=END,0\\
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,#
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
setlocal omnifunc=syntaxcomplete#Complete
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
setlocal statusline=%!airline#statusline(3)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 41 - ((23 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
41
normal! 057|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 106 + 102) / 204)
exe 'vert 3resize ' . ((&columns * 65 + 102) / 204)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=32 winwidth=106 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
