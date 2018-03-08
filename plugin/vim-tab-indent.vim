" Author: qw8880000<qw8880000@126.com>

if exists("loaded_vim_tab_indent")
    finish
endif
let loaded_vim_tab_indent = 1

if !exists("g:vim_tab_indent_config")
    " let g:vim_tab_indent_config = {'js': 2, 'html': 2, 'ejs': 2, 'css': 2}
    finish
endif

let s:config = g:vim_tab_indent_config

augroup vimTabGroup

    if exists('s:config.js')
        au BufRead,BufNewFile *.{js} :call s:tabConfig(s:config.js) 
    endif

    if exists('s:config.html')
        au BufRead,BufNewFile *.{html} :call s:tabConfig(s:config.html) 
    endif

    if exists('s:config.ejs')
        au BufRead,BufNewFile *.{ejs} :call s:tabConfig(s:config.ejs) 
    endif

    if exists('s:config.css')
        au BufRead,BufNewFile *.{css} :call s:tabConfig(s:config.css) 
    endif

    if exists('s:config.scss')
        au BufRead,BufNewFile *.{scss} :call s:tabConfig(s:config.scss) 
    endif

    if exists('s:config.less')
        au BufRead,BufNewFile *.{less} :call s:tabConfig(s:config.less) 
    endif

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
