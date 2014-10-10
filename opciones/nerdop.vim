let NERDTreeDirArrows=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.o$','\.svn$', '\~$', '.DS_Store']
let NERDTreeMinimalUI=1
let NERDTreeChDirMode = 2

" Open NERDTree if we're executing vim without specifying a file to open
autocmd vimenter * if !argc() | NERDTree | endif
