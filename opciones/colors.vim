"===[ global color options ]=== {{{
syntax enable
set background=dark
let color='baseCol'
"}}}
" ===[ Apply colorschemes ]=== {{{
if color == 'baseCol'
    "===[ base16 colours]=== {{{
    let base16colorspace=256  " Access colors present in 256 colorspace
    colorscheme base16-londontube
    "}}}
else
    "===[ Solarized colours]=== {{{
    let g:solarized_termcolors=256
    colorscheme solarized
"}}}
endif

if !has('gui_running')
    " Compatibility for Terminal
    let g:solarized_termtrans=1

    if (&t_Co >= 256 || $TERM == 'xterm-256color')
        " Do nothing, it handles itself.
    else
        let macvim_skip_colorscheme = 1
        " Full screen means FULL screen
        set fuoptions=maxvert,maxhorz
    endif
endif
"}}}
