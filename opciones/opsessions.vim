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
