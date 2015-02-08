"==[ Basic options ]== {{{1
let g:unite_source_history_yank_enable = 1
let g:unite_enable_start_insert = 0
let g:unite_enable_short_source_mes = 0
let g:unite_force_overwrite_statusline = 0
let g:unite_prompt = '>>> '
let g:unite_marked_icon = '✓'
let g:unite_candidate_icon = '∘'
let g:unite_winheight = 15
let g:unite_update_time = 200
let g:unite_split_rule = 'botright'
let g:unite_data_directory = $HOME.'/.vim/tmp/unite'
" let g:unite_source_buffer_time_format = '(%d-%m-%Y %H:%M:%S) '
" let g:unite_source_file_mru_time_format = '(%d-%m-%Y %H:%M:%S) '
" let g:unite_source_directory_mru_time_format = '(%d-%m-%Y %H:%M:%S) '

"unite tmp
let g:junkfile#directory=expand($HOME."/.vim/tmp/junk")
"1}}}
" ==[ Search options ]== {{{1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#source('file_mru,file_rec,file_rec/async,grep,locate',
            \ 'ignore_pattern', join(['\.git/', 'tmp/', 'bundle/'], '\|'))
"1}}}
" ==[ Mappings ]== {{{1
" yankring
nnoremap <Leader>y :Unite -no-split -start-insert -auto-resize -buffer-name=Yank_History history/yank<CR>

" grep
nnoremap <silent><Leader>g :Unite -silent -no-quit grep<CR>
"
" below command doesn't work
" nnoremap <silent><Leader>tl :Unite -silent -toggle grep:%::FIXME\|TODO\|NOTE<CR>

" files
nnoremap <silent><Leader>o :Unite -silent -start-insert file<CR>
nnoremap <silent><Leader>O :Unite -silent -start-insert file_rec/async<CR>

" buffers
nnoremap <silent><Leader>b :Unite -silent buffer<CR>

"1}}}
"===[ Play nice with superTab ]=== {{{
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
    let b:SuperTabDisabled=1
    imap <buffer> <C-j>   <Plug>(unite_select_next_line)
    imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
    imap <silent><buffer><expr> <C-x> unite#do_action('split')
    imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')

    nmap <buffer> <ESC> <Plug>(unite_exit)
endfunction
"}}}
