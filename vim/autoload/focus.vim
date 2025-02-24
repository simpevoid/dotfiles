




function! focus#toggle()
    if winnr('$') == 1
        return
    endif

    if exists("g:focus_maximized") && g:focus_maximized
        let g:focus_maximized = 0
        execute "wincmd ="
    else
        let g:focus_maximized = 1
        execute "wincmd _"
        execute "wincmd |"
    endif
endfunction
