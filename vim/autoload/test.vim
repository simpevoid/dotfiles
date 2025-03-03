



function! CreateMakefile()
    if !filereadable("Makefile") && !filereadable("makefile")
	call writefile([
		    \ 'CC = gcc',
		    \ 'CFLAGS = -Wall -Wextra -pedantic',
		    \ '',
		    \ 'all: main',
		    \ '',
		    \ 'main: main.c',
		    \ '    $(CC) $(CFLAGS) -o main main.c',
		    \ '',
		    \ 'clean:',
		    \ '    rm -f main'
		    \], "Makefile")
    endif
endfunction
