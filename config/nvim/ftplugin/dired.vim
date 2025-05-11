
function! Custom()
    " Prompt user for shell command input
    let command = input("Enter Command: ", "", "shellcmd")
    if command == ""
        return
    endif
    
    let filename = expand("<cfile>")
    execute 'Cmd ' . command . ' ' . shellescape(filename)
endfunction

nmap <buffer> E :call Custom()<cr>
