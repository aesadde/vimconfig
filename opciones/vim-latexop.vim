"===[ Tex global options]=== {{{
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf='pdflatex'
let g:tex_flavor='latex'
set grepprg=grep\ -nH\ $*
"}}}
"===[ Tex mappings ]=== {{{
autocmd filetype tex nnoremap <leader>wc !texcount %<CR>
autocmd filetype tex nnoremap <leader>wt !texcount -inc %<CR>
"}}}
