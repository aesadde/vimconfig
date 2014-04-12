"==============================================================================
" File:        correctSpacing.vim
" Description: function that sets good spacing around operators
" Maintainer:  Alberto Sadde <albertosadde at gmail dot com>
" Last Change: 15 March 2014
" License:     
"==============================================================================
"
"avoid loading the plugin more than onces
if exists("g:loaded_opspacing")
    finish
endif
let g:loaded_opspacing = 1

"saving state to avoid problems when on compatible mode
let s:save_cpo = &cpo
set cpo&vim

"add mappings
if !hasmapto('<Plug>OpspacingCorr')
    map <unique> <leader>e <Plug>OpspacingCorr
endif
"noremap <unique> <script> <Plug>OpspacingCorr <SID>CorrectSpacing
"noremap <SID>CorrectSpacing :call <SID>CorrectSpacing()<CR>

" Function: OpSpacing() function is used to change the spacing of the given operator {{{1
" Args: 
" line_num: the line number that we are currently parsing
" operator: the operator we are changing
"TODO: use a better regex
function s:OpSpacing(line_num, operator)
    let text = getline(a:line_num)
    " this is the pattern I'm using/+\@<!++\@!
    let d_op = a:operator . a:operator
    let pattern = a:operator . '\@<!' . d_op . '\@!'
    let corr = ' ' . a:operator . ' '
    let result = substitute(text, pattern,  corr, 'g')
    call setli"ne(a:line_num, result)
endfunction
"1}}}

" Function: CorrectSpacing() loops through the whole file and calls OpSpacing "{{{1
function s:CorrectSpacing()
    let op_list = ['+', '-', '\*', '=']
    for line_num in range (0, line('$'))
        for op in op_list
            call s:OpSpacing(line_num, op)
        endfor
    endfor
endfunction
"1}}}

command -nargs=0 CorrSpacing :call s:CorrectSpacing()
"restore state
let &cpo = s:save_cpo
unlet s:save_cpo
