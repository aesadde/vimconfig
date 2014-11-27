" ===[ Load / save sessions ] === {{{
autocmd VimEnter * call LoadSession()
autocmd VimLeave * call SaveSession()

function! SaveSession()
    execute 'mksession! $HOME/.vim/sessions/session.vim'
endfunction

function! LoadSession()
    if argc() == 0
        execute 'source $HOME/.vim/sessions/session.vim'
    endif
endfunction

" ===[ Mappings ]=== {{{2
" Quick save current session and quit
nnoremap <leader>sq :mksession! $HOME/.vim/.sessions/last.vim<cr>:qall<cr>
" Quick save current session
nnoremap <leader>ss :mksession! $HOME/.vim/.sessions/last.vim<cr>
" Quick load last session
nnoremap <leader>ls :tabonly<cr>:source $HOME/.vim/.sessions/last.vim<cr>
" 2}}}

" ===[ Saves sessions 1-9 ]=== {{{2
nnoremap <leader>s1 :mksession! $HOME/.vim/.sessions/s1.vim<cr>
nnoremap <leader>s2 :mksession! $HOME/.vim/.sessions/s2.vim<cr>
nnoremap <leader>s3 :mksession! $HOME/.vim/.sessions/s3.vim<cr>
nnoremap <leader>s4 :mksession! $HOME/.vim/.sessions/s4.vim<cr>
nnoremap <leader>s5 :mksession! $HOME/.vim/.sessions/s5.vim<cr>
nnoremap <leader>s6 :mksession! $HOME/.vim/.sessions/s6.vim<cr>
nnoremap <leader>s7 :mksession! $HOME/.vim/.sessions/s7.vim<cr>
nnoremap <leader>s8 :mksession! $HOME/.vim/.sessions/s8.vim<cr>
nnoremap <leader>s9 :mksession! $HOME/.vim/.sessions/s9.vim<cr>
" 2}}}

" ===[ Loads sessions 1-9 ]=== {{{2
nnoremap <leader>l1 :tabonly<cr>:source $HOME/.vim/.sessions/s1.vim<cr>
nnoremap <leader>l2 :tabonly<cr>:source $HOME/.vim/.sessions/s2.vim<cr>
nnoremap <leader>l3 :tabonly<cr>:source $HOME/.vim/.sessions/s3.vim<cr>
nnoremap <leader>l4 :tabonly<cr>:source $HOME/.vim/.sessions/s4.vim<cr>
nnoremap <leader>l5 :tabonly<cr>:source $HOME/.vim/.sessions/s5.vim<cr>
nnoremap <leader>l6 :tabonly<cr>:source $HOME/.vim/.sessions/s6.vim<cr>
nnoremap <leader>l7 :tabonly<cr>:source $HOME/.vim/.sessions/s7.vim<cr>
nnoremap <leader>l8 :tabonly<cr>:source $HOME/.vim/.sessions/s8.vim<cr>
nnoremap <leader>l9 :tabonly<cr>:source $HOME/.vim/.sessions/s9.vim<cr>
" 2}}}
" 1}}}
