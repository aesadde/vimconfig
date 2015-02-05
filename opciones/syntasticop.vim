let g:syntastic_check_on_wq = 1
let g:syntastic_auto_jump = 0
let g:syntatstic_filetype_map = { 'latex': 'tex', 'cuda': 'cu'}
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1

"cool symbols -- taken from https://github.com/joedicastro/dotfiles/blob/master/vim/vimrc
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '⚡'
let g:syntastic_style_warning_symbol = '⚡'
let g:syntastic_stl_format = '[%E{%e Errors}%B{, }%W{%w Warnings}]'
" cuda options
let g:syntastic_cuda_check_header = 1

let g:syntastic_haskell_checkers=["hdevtools"]
