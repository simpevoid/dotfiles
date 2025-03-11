


vim9script

comp gcc
set shiftwidth=8
set cinoptions=t0
set textwidth=80


def Compile()
	w
	if filereadable('makefile') || filereadable('Makefile')
		silent cexpr system('make')
		botright cwindow
	else
		const args = input("Args: ")
		exe "ter ++shell cc -Wall -Wextra -o %:r %:t && ./%:r " .. args
		setlocal nobl
	endif
enddef

def Run()
    if exists("b:last_term_bufnr")
	exe "bdelete! " .. b:last_term_bufnr
    endif
    const args = input("Args: ")
    exe "ter ++shell ./%:r " .. args
    const b:last_term_bufnr = bufnr('%')
enddef

nnoremap <silent> <localleader>r <ScriptCmd>Run()<Cr>
nnoremap <buffer> <silent><localleader>c  <ScriptCmd>Compile()<Cr>

inoremap <buffer> <c-c>  /**/<left><left>
nnoremap <buffer> <c-c> :norm I//<cr>
nnoremap <buffer> <silent><leader>d :norm ^xx<cr>
