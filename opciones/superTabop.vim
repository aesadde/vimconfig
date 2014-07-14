let g:SupertTabDefaultCompletionType = 'context' 
let g:SuperTabRetainCompletionDuration = 'completion' "current completion mode lasts for single completion
let g:SuperTabLongestEnhanced = 1  
let g:SuperTabLongestHighlight = 1  

au! FileType *
            \ if &omnifunc != '' |
            \   call SuperTabChain(&omnifunc, "<c-p>") |
            \ endif
au! FileType *.hs call SuperTabChain("<c-x><c-u>", "<c-p>")
