function! spell#toggle()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
	set spell
    else
	set nospell 
    endif
endfunction
