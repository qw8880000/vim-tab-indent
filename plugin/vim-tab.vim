" Author: qw8880000<qw8880000@126.com>

if exists("loaded_vim_tab")
    finish
endif
let loaded_vim_tab = 1


augroup vimTabGroup
    au BufRead,BufNewFile *.{js} :call s:tabConfig(2) 
    au BufRead,BufNewFile *.{html,ejs} :call s:tabConfig(2) 
    au BufRead,BufNewFile *.{css} :call s:tabConfig(2) 
augroup END

" 设置tab的宽度
function s:tabConfig(width)
    
    if a:width == 2
        setlocal tabstop=2
        setlocal shiftwidth=2
    else
        setlocal tabstop=4
        setlocal shiftwidth=4
    endif

endfunction
