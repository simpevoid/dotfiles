comp gcc
set expandtab
setlocal shiftwidth=4
setlocal cinoptions=t0
setlocal textwidth=80
set makeprg=gcc\ -Wall\ -Wextra\ -o\ %:r\ %:t

function! Compile()
    w
    cd %:p:h
    silent make
    redraw!
    cwindow
    cd -
endfunction

nnoremap <buffer><silent> <c-c>  :call Compile()<Cr>

vnoremap <buffer> <c-c> :norm I//<cr>
inoremap <buffer> <c-c> /**/<left><left>
