" ===[ Load / save sessions ] === {{{
" Taken from http://vimrcfu.com/snippet/76

" ===[ Mappings ]=== {{{2
" Quick save current session and quit
nnoremap <leader>sq :mksession! ~/.vim/.sessions/last.vim<cr>:qall<cr>
" Quick save current session
nnoremap <leader>ss :mksession! ~/.vim/.sessions/last.vim<cr>
" Quick load last session
nnoremap <leader>ls :tabonly<cr>:source ~/.vim/.sessions/last.vim<cr>
" 2}}}

" ===[ Saves sessions 1-9 ]=== {{{2
nnoremap <leader>s1 :mksession! ~/.vim/.sessions/s1.vim<cr>
nnoremap <leader>s2 :mksession! ~/.vim/.sessions/s2.vim<cr>
nnoremap <leader>s3 :mksession! ~/.vim/.sessions/s3.vim<cr>
nnoremap <leader>s4 :mksession! ~/.vim/.sessions/s4.vim<cr>
nnoremap <leader>s5 :mksession! ~/.vim/.sessions/s5.vim<cr>
nnoremap <leader>s6 :mksession! ~/.vim/.sessions/s6.vim<cr>
nnoremap <leader>s7 :mksession! ~/.vim/.sessions/s7.vim<cr>
nnoremap <leader>s8 :mksession! ~/.vim/.sessions/s8.vim<cr>
nnoremap <leader>s9 :mksession! ~/.vim/.sessions/s9.vim<cr>
" 2}}}

" ===[ Loads sessions 1-9 ]=== {{{2
nnoremap <leader>l1 :tabonly<cr>:source ~/.vim/.sessions/s1.vim<cr>
nnoremap <leader>l2 :tabonly<cr>:source ~/.vim/.sessions/s2.vim<cr>
nnoremap <leader>l3 :tabonly<cr>:source ~/.vim/.sessions/s3.vim<cr>
nnoremap <leader>l4 :tabonly<cr>:source ~/.vim/.sessions/s4.vim<cr>
nnoremap <leader>l5 :tabonly<cr>:source ~/.vim/.sessions/s5.vim<cr>
nnoremap <leader>l6 :tabonly<cr>:source ~/.vim/.sessions/s6.vim<cr>
nnoremap <leader>l7 :tabonly<cr>:source ~/.vim/.sessions/s7.vim<cr>
nnoremap <leader>l8 :tabonly<cr>:source ~/.vim/.sessions/s8.vim<cr>
nnoremap <leader>l9 :tabonly<cr>:source ~/.vim/.sessions/s9.vim<cr>
" 2}}}
" 1}}}
