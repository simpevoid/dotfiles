



vim9script

export def Fzy(vim_command: string)
    const file_name = system("find . -maxdepth 2 -type f | fzy")
    redraw!
    if v:shell_error == 0
	exe vim_command .. ' ' .. file_name
    endif
enddef
