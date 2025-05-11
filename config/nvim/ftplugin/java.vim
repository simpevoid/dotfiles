compiler javac

set makeprg=javac\ %\ &&\ java\ %:r
function! Compile()
    w
    cd %:p:h
    silent make
    redraw!
    cwindow
    cd -
endfunction

nnoremap <buffer> <silent> <localleader>c  :call Compile()<Cr>

inoremap <buffer> <c-c>  /**/<left><left>
vnoremap <buffer> <c-c> :norm I//<cr>
